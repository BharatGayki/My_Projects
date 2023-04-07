<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: Bharat
  Date: 28-02-2023
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String n = request.getParameter("ename");

    String m = request.getParameter("epass");
    try {
        Class.forName("com.mysql.jdbc.Driver");//Driver Loaded
        System.out.println("driver loaded successfully");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servelet_customerdb", "root", "Pass@123");
        System.out.println("Databased loaded succesfully");
        //////////////////////////////////////////////////////////////////////////////////
        PreparedStatement ps = con.prepareStatement("insert into servelet_customer_table values (?,?)");///servelet_customer_table stores login page data
        ps.setString(1,n);
        ps.setString(2,m);
        ps.execute();
        ///////////////////////////////////////////////////////////////////////////////////
        PreparedStatement ps1 = con.prepareStatement("insert into salesman_info(Salesman_Id) values (?)");
        ps1.setString(1,n);//n = Salesman_Id
        ps1.execute();

       // int r = ps.executeUpdate();

        response.sendRedirect("salesman_LoginPage.html");

    }catch (Exception e){
        System.out.println(e);
    }

%>
</body>
</html>

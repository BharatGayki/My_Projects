<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.example.inventory_sales.salesLogin" %>
<%@ page import="com.example.inventory_sales.salesLogin" %><%--
  Created by IntelliJ IDEA.
  User: Bharat
  Date: 28-02-2023
  Time: 16:32
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

    session.setAttribute("session_Id",n);

    // login = new SalesLogin(n,m);// creation of object of class
   // session.setAttribute("session_id",n);
    salesLogin login = new salesLogin(n,m);
    %>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");//Driver Loaded
        System.out.println("driver loaded successfully");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servelet_customerdb", "root", "Pass@123");
        System.out.println("Databased loaded succesfully");
        // PreparedStatement ps = con.prepareStatement("insert into servelet_table(?,?) ");
        PreparedStatement ps = con.prepareStatement("select SalesMan_Id,PassWord from servelet_customer_table where SalesMan_Id=? and PassWord=?  ");//select query applied
    /*
       first process
       ps.setString(1,n);
        ps.setString(2,m);*/


       ps.setString(1,login.getId());// second process
        ps.setString(2,login.getPass());

         ResultSet rs = ps.executeQuery();

        if(rs.next()){

            response.sendRedirect("success.jsp");
        }else {

            response.sendRedirect("Error.html");

        }

    }catch (Exception e){
        System.out.println(e);
    }




%>
</body>
</html>

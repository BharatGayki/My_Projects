<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: Bharat
  Date: 03-03-2023
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String sessionId = (String) session.getAttribute("session_Id");

%>
<%
String sname = request.getParameter("sname");
String scity1 = request.getParameter("scity");
String scommi = request.getParameter("scommi");

out.println(sname);
    out.println(scity1);
    out.println(scommi);

%>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");//Driver Loaded
     out.print("driver loaded successfully");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servelet_customerdb", "root", "Pass@123");
      out.print("Databased loaded succesfully");

        PreparedStatement ps = con.prepareStatement("update salesman_info set Name =?,City =?,Commission =? where Salesman_Id =? ");///servelet_customer_table stores login page data
        ps.setString(1,sname);
        ps.setString(2,scity1);
        ps.setString(3,scommi);
        ps.setString(4,sessionId);
        ps.execute();


    }catch (Exception e){
        System.out.println(e);
    }




%>

</body>
</html>

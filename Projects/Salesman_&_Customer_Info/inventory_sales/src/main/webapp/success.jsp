<%--
  Created by IntelliJ IDEA.
  User: Bharat
  Date: 01-03-2023
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
    h1{text-align: center}

    </style>
</head>
<body>
<header>
   <h1> Welcome  </h1> <br>
    <h1> Logout </h1>

</header>
<%
String sessionId = (String) session.getAttribute("session_Id");
//   session.setAttribute("session_Id",n);
%>
<h3> Namaste <%=""+sessionId%></h3>
<nav>
    <a href="CompleteProfileconvert.jsp">Complete Profile</a><br>

    <a href="ViewJobProfile.html">View Job Profile</a><br>

    <a href="EditJobProfile.html">Edit Job Profile</a><br>

    <a href="UpdateJobProfile.html">Update Job Profile</a><br>

    <a href="AddCustomers.html">Add Customers</a><br>


</nav>

</body>
</html>

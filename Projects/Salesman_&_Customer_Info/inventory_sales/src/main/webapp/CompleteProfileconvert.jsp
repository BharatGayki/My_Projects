<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>cOMPLETE PROFILE </h1>
<%
String sessionId = (String) session.getAttribute("session_Id");
%>

<form action ="ProfileProcessing.jsp" method="post">


    enter Your SalesMan Id <input type="text" name = "ename" value="<%=""+sessionId%>" readonly/><br>
    enter Your Name <input type="text" name = "sname" ><br>
    enter Your city <input type="text" name="scity"><br>
    enter Your Commission <input type="text" name="scommi"><br>
    <input type = "submit">

</form>
</body>
</html>
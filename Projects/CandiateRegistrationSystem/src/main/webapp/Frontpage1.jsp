<%@ page import="com.mysql.jdbc.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Bharat
  Date: 29-04-2023
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #c51313;
            border-radius: 40px;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s ease-in-out;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            animation: slideInLeft 1s ease-in-out;
        }


        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            animation: slideInUp 1s ease-in-out;
            margin-left: 200px;
        }

        input[type="reset"] {
            background-color: #ed1515;
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            animation: slideInUp 1s ease-in-out;
        }

        input[type="submit"]:hover {
            background-color: darkcyan;
        }

        input[type="reset"]:hover {
            background-color: darkgoldenrod;
        }

        /* Animation styles */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes slideInLeft {
            from {
                transform: translateX(-100%);
            }
            to {
                transform: translateX(0);
            }
        }

        @keyframes slideInRight {
            from {
                transform: translateX(100%);
            }
            to {
                transform: translateX(0);
            }
        }

        @keyframes slideInUp {
            from {
                transform: translateY(100%);
            }
            to {
                transform: translateY(0);
            }
        }


        .st {
            text-decoration: none;
            margin-right: 40px;
            color: red;
        }

        .it {
            text-decoration: none;
            color: blue;
        }

        /* Another form */

        input[type="text"],
        input[type="email"],
        input[type="number"],
        input[type="date"],
        input[type="tel"],
        textarea,
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        input[type="number"] {
            width: 50%;
        }

        /*input[type="submit"],
        input[type="button"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }*/

        /*input[type="submit"]:hover,
        input[type="button"]:hover {
            background-color: darkcyan;
        }*/

    </style>



</head>

<body>
<%
    ResultSet r;
    ArrayList<String> arr=new ArrayList<String>();
try {
    Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Driver Loaded Successfully");
    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/interview_data", "root", "Pass@123");
    System.out.println("Database loaded");

    PreparedStatement p=con.prepareStatement("select * from tablenation");
     r=p.executeQuery();

%>
<form name="form1">
    <h2 class="cat">IT-Category</h2>
    <a href="demo.html" class="st"> Student</a>
    <a href="it.html" class="it"> IT Professional</a>

    <br>
    <br>

    <%--Radio Button--%>
    ItProfessional<input type="radio" value='1' name="usrTypeRadi"/>
    Student       <input type="radio" value='0'  name="usrTypeRadi"/>

    <br>
    <div class="details">
        <h2>Details</h2>
        <label for="full-name">Full Name:</label>
        <input type="text" id="full-name" name="full-name" required/>


        <label for="gender">Gender:</label>
        <select id="gender" name="gender">
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="non-binary">Others</option>
        </select>

        <br/>

        <h2>Address</h2>
        <br/>
<%
            while(r.next()) {
               arr.add(r.getString("Nation_Name"));
               }
%>
        <label for="country">Country:</label>
        <select id="country1" name="country">
            <%
                for(int i=0;i<arr.size();i++) {
                    String n1=arr.get(i);

            %>
            <option value="<%=n1%>"><%=n1%></option>
            <% }%>

<%--            <option value="India"></option>--%>
<%--            <option value="usa"></option>--%>
<%--            <option value="uk"></option>--%>
        </select>
<%
            } catch(Exception e1){}
            %>
        <br/>


        <label for="country">State:</label>
        <select id="country2" name="state">
            <option value="mh">Maharasshtra</option>
            <option value="up">Uttar Pradesh</option>
            <option value="rajasthan">Rajasthan</option>
        </select>
        <br/>

        <label for="country">City:</label>
        <select id="country" name="city">
            <option value="nag">Nagpur</option>
            <option value="ajmer">Ajmer</option>
            <option value="pune">Pune</option>
        </select>
        <br/>

        <label for="course">Course:</label>
        <select id="course" name="course">
            <option value="programming">Programming</option>
            <option value="web-design">Web Design</option>
            <option value="data-science">Data Science</option>
            <!-- Add more options as needed -->
        </select>

        <br/>


        <!-- ANother -->
        <label for="total-fees">Total Fees:</label>
        <input type="number" id="total-fees" name="totalfees" required readonly>

        <label for="fees-to-be-paid">Fees to be Paid:</label>
        <input type="number" id="fees-to-be-paid" name="feespaid" required readonly>

        <label for="discount">Discount:</label>
        <input type="number" id="discount" name="discount">

        <label for="balance1">Balance Amount:</label>
        <input type="number" id="balance1" name="balanceamt">
        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required>
        <br>
        <br>
        <input type="submit" value="Save"/>
        <input type="reset" value="Reset"/>


            <%

    String name = request.getParameter("full-name");
    String gender = request.getParameter("gender");
    String course = request.getParameter("course");
    String country = request.getParameter("country");
    String state = request.getParameter("state");
    String city = request.getParameter("city");
    String totalfess = request.getParameter("totalfess");
    String fesspaid = request.getParameter("fesspaid");
    String balance = request.getParameter("balanceamt");
  //  String discount = request.getParameter("discount");
    String paiddate = request.getParameter("date");
   // int role = Integer.parseInt(request.getParameter("button"));// shows error

//  Admin<input type ="radio" values="1" name="button"/>
//  Manager<input type="radio" value="2" name="button"/>

    //     Values to be insert
//     name-- fullname
//     course- course
//     gender- gender
//     country - country
//     state  -  state
//     city - city
//    Total Fees:totalfees
//     Fess paid amt:feespaid
//     balance amt - balanceamt
//     Discount - discount
//     paid date - date






try {
  /*  Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Driver Loaded Successfully");
    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/interview_data","root","Pass@123");
    System.out.println("Database loaded");*/
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/interview_data","root","Pass@123");



    PreparedStatement ps = con.prepareStatement("insert into tablecourseregdetails (Fullname,GenderId,CourseRegId) values(?,?,?)");

     ps.setString(1,name);
     ps.setString(2,gender);
     ps.setString(3,course);
     ps.executeUpdate();

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

   PreparedStatement ps1 = con.prepareStatement("insert into tableregaddress (CourseRegId,StateId,CityId,NationId) values (?,?,?,?)");
   ps1.setString(1,course);
   ps1.setString(2,state);
   ps1.setString(3,city);
     ps1.setString(4,country);
   ps1.executeUpdate();
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

PreparedStatement ps2 = con.prepareStatement("insert into tablefeedetails (CourseRegId,TotalAmount,PaidAmount,BalAmt,PaidDate) values(?,?,?,?,?)");
ps2.setString(1,course);
ps2.setString(2,totalfess);
ps2.setString(3,fesspaid);
ps2.setString(4,balance);
ps2.setString(5,paiddate);
ps2.executeUpdate();

  }
        catch (Exception e){
        System.out.println(e);
        }

%>





<%--//////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>

<%--// Java code--%>
<%--/*PreparedStatement ps3 = con.prepareStatement("insert into tablecourseregdetails(CategoryInd) values (?) ");--%>
<%--ps3.setString(1,String.valueOf(role));--%>
<%--ps3.executeUpdate();--%>

<%--// HTML code--%>
<%--<% if(role == 1) { %>--%>
        <%--        <input type="number" id="total-fees" name="totalfees" value="1000" readonly>--%>
        <%--        <input type="number" id="fees-to-be-paid" name="feespaid" value="500" readonly>--%>
        <%--        <input type="number" id="discount1" name="balanceamt" value="500" readonly>--%>
        <%--            <% } else { %>--%>
        <%--        <input type="number" id="total-fees" name="totalfees" value="3000" readonly>--%>
        <%--        <input type="number" id="fees-to-be-paid" name="feespaid" value="2400" readonly>--%>
        <%--        <input type="number" id="discount1" name="balanceamt" value="600" readonly>--%>
        <%--            <% } %>--%>


</form>
</div>

<script>
    var radios = document.forms["form1"].elements["usrTypeRadi"];
    for(var i = 0, max = radios.length; i < max; i++) {
        radios[i].onclick = function() {
            alert(this.value);
            // let value = document.getElementById("total-fees").value; get value
            if(this.value=='1'){
                document.getElementById("total-fees").value = "3000";
                document.getElementById("fees-to-be-paid").value = "2400";
                document.getElementById("balance1").value = "600";


            }

            if(this.value==0){
                document.getElementById("total-fees").value = "1000";
                document.getElementById("fees-to-be-paid").value = "500";
                document.getElementById("balance1").value = "500";
            }

        }
    }

</script>
</body>
</html>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.math.BigDecimal" %><%--
  Created by IntelliJ IDEA.
  User: Bharat
  Date: 29-04-2023
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>

        form {
            max-width: 1200px;
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

        input[type="submit"],
        input[type="button"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover,
        input[type="button"]:hover {
            background-color: #3e8e41;
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

        .btn{
            text-align: center;
        }

        #box{
            display: grid;
            grid-template-columns: 550px 600px;
            grid-template-rows: 350px;
        }

        #box-2{
            margin-left: 30px;
        }
    </style>
</head>
<body>
<form name="form1">
    <div>
        <h2>Product Store</h2>
    </div>
    <div id="box">
        <div id="box-1">
            <fieldset>

                <legend>
                    <h3>Customer Deatails</h3>
                </legend>

<%--                <label for="full-name">Full Name:</label>--%>
<%--                <input type="text" id="full-name" name="full-name" required/>--%>

                <label for="name" class="form-label"> Customer Name</label>
                <input type="text" id="name" name="name">
                <label for="number">Contact Number</label>
                <input type="number" id="number" name="number">
                <label> Nationality</label>

               <input type="radio" value='0' name="radio"/>Indian
                <input type="radio" value='1' name="radio"/>NRI

            </fieldset>
        </div>
        <div id="box-2">
            <fieldset>
                <legend>
                    <h3>Invoice Details</h3>
                </legend>
                <label for="date">Invoice Date</label>
                <input type="date" id="date" name="date">
                <label for="category">Product Category</label>
                <input type="text" id="category" name="category">
                <label for="price1">Prodcut Price</label>
                <input type="number" id="price1" name="price">
                <label for="qty1">Quantity</label>
                <input type="number" id="qty1" name = "qty">
                <label for="total1">Total Price</label>
                <input type="number" id="total1" name="total">
            </fieldset>
        </div>
        <div id="box-3">
            <fieldset>
                <legend>
                    <h3>GST Details</h3>
                </legend>
                <label for="cgst1">CGST%</label>
                <input type="number" id="cgst1" name="cgst">

                <label for="sgst1">SGST%</label>
                <input type="number" id="sgst1" name="sgst">

                <label for="igst1">IGST%</label>
                <input type="number" id="igst1" name="igst">
            </fieldset>
        </div>

    </div>
    </br>
    <div class="btn">
        <input type="submit" value="Submit" />
        <input type="reset" value="Clear" />
    </div>
    <%

        String name = request.getParameter("name");
        String number = request.getParameter("number");
        String category = request.getParameter("category");
        String date  = request.getParameter("date");
        String quantity  =request.getParameter("qty");
        String productprice  = request.getParameter("price");
        String cgst  = request.getParameter("cgst");
        String sgst = request.getParameter("sgst");
        String igst = request.getParameter("igst");
        String totalamt =request.getParameter("total");

        System.out.println(name);
        System.out.println(number);
        System.out.println(category);
        System.out.println(date);




        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver Loaded Successfully");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/my_interview2", "root", "Pass@123");
            System.out.println("Database loaded");
            PreparedStatement ps = con.prepareStatement("insert into tableinvoicedetails (Customer_Name,Customer_Contact,Product_Category_Id,Invoice_Date,Quantity,Price,CGST,SGST,IGST,Total_Amount) values(?,?,?,?,?,?,?,?,?,?)");

ps.setString(1,name);
ps.setString(2,number);
ps.setString(3,category);
ps.setString(4,date);
ps.setString(5,quantity);
ps.setString(6,productprice);
ps.setString(7,cgst);
ps.setString(8,sgst);
ps.setString(9,igst);
ps.setString(10,totalamt);

ps.executeUpdate();



        }
        catch (Exception e){
            System.out.println(e);
        }



    %>
</form>
<script>
    var radios = document.forms["form1"].elements["radio"];
    for(var i = 0, max = radios.length; i < max; i++) {
        radios[i].onclick = function () {
     //  let value = document.getElementById("price").value; //get value
     //        alert(this.value);
            if(this.value == 0){

               // let as=document.getElementById("cgst1").value;
                document.getElementById("cgst1").value="12";


                document.getElementById("sgst1").value="12";


                document.getElementById("igst1").value="0";





                let as3=document.getElementById("price1").value;

                let cg=document.getElementById("cgst1").value;


                let sg=document.getElementById("sgst1").value;
                let totGst=eval(""+cg+" + "+sg);//24%

                 alert(totGst);

                let p1=document.getElementById("price1").value;
                let q1=document.getElementById("qty1").value;
                let tot1=eval(""+p1+" * "+q1);//price*quantity
                alert(tot1);
                let t2=eval(""+tot1+" * "+totGst+"/"+"100");//total *24%=t2;
                alert(t2);
               let t3= eval(""+tot1+" + "+t2);
                alert(t3);
                document.getElementById("total1").value=t3;




            }
            if(this.value == '1'){

                document.getElementById("cgst1").value="0";


                document.getElementById("sgst1").value="0";


                document.getElementById("igst1").value="12";

               let ig= document.getElementById("igst1").value;

                /////////calculation
                let p1=document.getElementById("price1").value;
                let q1=document.getElementById("qty1").value;
                let tot1=eval(""+p1+" * "+q1);
                alert(tot1);
                let t2=eval(""+tot1+" * "+ig+"/"+"100");
                alert(t2);
                let t3= eval(""+tot1+" + "+t2);
                alert(t3);
                document.getElementById("total1").value=t3;


            }

        }
    }

    /*var radios = document.forms["form1"].elements["usrTypeRadi"];
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
    }*/
</script>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Bharat
  Date: 12-04-2023
  Time: 17:11
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
            max-width: 800px;
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
            background-color: #3e8e41;
        }

        input[type="reset"]:hover {
            background-color: black;
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

        #box {
            display: grid;
            grid-template-columns: 400px 400px ;
            grid-template-rows: 120px;

        }
        /*
            #box-1{
              grid-area: 'category';
               margin-bottom: 20px;
            }


            #box-2{
               grid-area: 'personal';
               margin-left: 20px;
            }

            #box-3{
               grid-area: 'fee';
               margin-top: 20px;
            }
        */

        .btn{
            text-align: center;
        }
        .cat{
            text-align: center;
        }
    </style>
</head>
<body>
<form>
    <div id ="cat">
        <h2 >IT-Category</h2>
    </div>
    <div id="box">
        <div id="box-1">
            <fieldset>
                <legend>
                    <h2>Category</h2>
                </legend>
                <!-- <a href="/demo.html" class="st"> Student</a> -->
                <!-- <a href="/it.html" class="it"> IT Professional</a> -->
                <label><input type="radio" name="category" value="Student" />Student</label>
                <label><input type="radio" name="category" value="IT Professional" />IT Professional</label>
            </fieldset>
        </div>

        <div id="box-3">
            <fieldset>
                <legend><h2>Fees Details</h2></legend>
                <label for="course">Course:</label>
                <select id="course" name="course">
                    <option value="programming">Programming</option>
                    <option value="web-design">Web Design</option>
                    <option value="data-science">Data Science</option>
                    <!-- Add more options as needed -->
                </select>

                <br />


                <!-- ANother -->
                <label for="total-fees">Total Fees:</label>
                <input type="number" id="total-fees" name="total-fees" required>

                <label for="fees-to-be-paid">Fees to be Paid:</label>
                <input type="number" id="fees-to-be-paid" name="fees-to-be-paid" required>

                <label for="discount">Discount:</label>
                <input type="number" id="discount" name="discount">

                <label for="balance-amount">Balance Amount:</label>
                <input type="number" id="discount" name="discount">
                <label for="date">Date:</label>
                <input type="date" id="date" name="date" required>
            </fieldset>
        </div>
        <div id="box-2">
            <fieldset>
                <legend>
                    <h2>Details</h2>
                </legend>
                <div class="details">

                    <label for="full-name">Full Name:</label>
                    <input type="text" id="full-name" name="full-name" required />

                    <br />

                    <label for="gender">Gender:</label>
                    <select id="gender" name="gender">
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="non-binary">Others</option>
                    </select>

                    <br />
                    <div>

                        <h2>Address</h2>


                        <br />

                        <label for="country">Country:</label>
                        <select id="country" name="country">
                            <option value="india">India</option>
                            <option value="usa">USA</option>
                            <option value="uk">UK</option>
                        </select>

                        <br />

                        <label for="country">State:</label>
                        <select id="country" name="country">
                            <option value="mh">Maharasshtra</option>
                            <option value="up">Uttar Pradesh</option>
                            <option value="rajasthan">Rajasthan</option>
                        </select>

                        <br />

                        <label for="country">City:</label>
                        <select id="country" name="country">
                            <option value="nag">Nagpur</option>
                            <option value="ajmer">Ajmer</option>
                            <option value="pune">Pune</option>
                        </select>
            </fieldset>
        </div>

    </div>
    </br>
    <div class="btn">
        <input type="submit" value="Submit" />
        <input type="reset" value="Clear" />
    </div>
</form>
</div>
</body>
</html>

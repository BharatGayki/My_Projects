<%--
  Created by IntelliJ IDEA.
  User: Bharat
  Date: 11-04-2023
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Course Registration</title>
    <!-- include CSS and JS files -->
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="script.js"></script>
</head>
<body>
<h1>Course Registration</h1>
<!-- create a form with input fields and buttons -->
<form id="registration-form">
    <div>
        <label for="category">Category:</label>
        <input type="radio" id="student" name="category" value="student">
        <label for="student">Student</label>
        <input type="radio" id="it-professional" name="category" value="it-professional">
        <label for="it-professional">IT Professional</label>
    </div>
    <div>
        <label for="full-name">Full Name:</label>
        <input type="text" id="full-name" name="full-name" maxlength="500">
    </div>
    <div>
        <label for="gender">Gender:</label>
        <input type="radio" id="male" name="gender" value="male">
        <label for="male">Male</label>
        <input type="radio" id="female" name="gender" value="female">
        <label for="female">Female</label>
        <input type="radio" id="other" name="gender" value="other">
        <label for="other">Other</label>
    </div>
    <div>
        <label for="nation">Nation:</label>
        <select id="nation" name="nation">
            <option value="">Select a nation</option>
            <!-- add options for nations -->
        </select>
    </div>
    <div>
        <label for="state">State:</label>
        <select id="state" name="state" disabled>
            <option value="">Select a state</option>
            <!-- add options for states based on selected nation -->
        </select>
    </div>
    <div>
        <label for="city">City:</label>
        <select id="city" name="city" disabled>
            <option value="">Select a city</option>
            <!-- add options for cities based on selected state -->
        </select>
    </div>
    <div>
        <label for="total-fees">Total Fees:</label>
        <input type="text" id="total-fees" name="total-fees" readonly>
    </div>
    <div>
        <label for="paid-amount">Paid Amount:</label>
        <input type="text" id="paid-amount" name="paid-amount">
    </div>
    <div>
        <label for="balance-amount">Balance Amount:</label>
        <input type="text" id="balance-amount" name="balance-amount" readonly>
    </div>
    <div>
        <label for="payment-date">Required Payment Date:</label>
        <input type="datetime-local" id="payment-date" name="payment-date" min="<%= new Date().toISOString().substr(0, 16) %>">
    </div>
    <div>
        <input type="button" id="submit"
    </div>
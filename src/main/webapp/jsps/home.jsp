<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>KK FUNDA Home Page</title>
    <link href="images/kkfunda.jpg" rel="icon">

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #003366;
            color: #fff;
            padding: 30px;
            text-align: center;
        }

        header h1 {
            font-size: 28px;
            margin-bottom: 10px;
        }

        header h2 {
            font-size: 20px;
            font-weight: normal;
        }

        .container {
            max-width: 960px;
            margin: 30px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        h3 {
            color: #003366;
            margin-top: 0;
        }

        .info {
            margin-bottom: 20px;
        }

        .contact {
            display: flex;
            align-items: center;
            margin-top: 20px;
        }

        .contact img {
            width: 90px;
            margin-right: 20px;
        }

        .contact-details {
            font-size: 14px;
            line-height: 1.6;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .footer {
            background-color: #003366;
            color: #fff;
            text-align: center;
            padding: 15px;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        .form-section {
            margin-top: 40px;
            padding-top: 20px;
            border-top: 1px solid #ccc;
        }

        .form-section form {
            max-width: 400px;
            margin: 0 auto;
        }

        .form-section label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        .form-section input[type="email"],
        .form-section input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-section input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px;
            border: none;
            width: 100%;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
        }

        .form-section input[type="submit"]:hover {
            background-color: #218838;
        }

        .form-success {
            color: green;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome to KK AWS & AZURE DevOps New Batch</h1>
    <h2>On May 25th at HYD from 6:30 AM to 8:30 AM</h2>
    <p><strong>KK FUNDA</strong></p>
</header>

<div class="container">
    <div class="info">
        <h3>Server Side IP Address</h3>
        <%
            InetAddress inetAddress = InetAddress.getLocalHost();
            String ip = inetAddress.getHostAddress();
        %>
        Server Host Name: <%= inetAddress.getHostName() %><br>
        Server IP Address: <%= ip %>
    </div>

    <hr>

    <div class="info">
        <h3>Client Side IP Address</h3>
        Client IP Address: <%= request.getRemoteAddr() %><br>
        Client Host Name: <%= request.getRemoteHost() %>
    </div>

    <hr>

    <div class="contact">
        <img src="images/kkfunda.jpg" alt="KK FUNDA">
        <div class="contact-details">
            <strong>KK FUNDA</strong><br>
            Martha Halli, Bangalore<br>
            📞 +91-9676831734<br>
            📧 <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a><br>
            <a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a>
        </div>
    </div>

    <p>🔗 Service: <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>

    <!-- Registration Section -->
    <div class="form-section">
        <h3 style="text-align:center;">Student Registration</h3>

        <%
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            if(email != null && password != null){
        %>
            <div class="form-success">
                ✅ Registered Successfully with Email: <%= email %>
            </div>
        <% } %>

        <form method="post">
            <label>Email:</label>
            <input type="email" name="email" required>

            <label>Password:</label>
            <input type="password" name="password" required>

            <input type="submit" value="Register">
        </form>
    </div>

</div>

<div class="footer">
    <p>KK FUNDA Training & Development Center</p>
    <small>© 2024 by KK FUNDA</small>
</div>

</body>
</html>

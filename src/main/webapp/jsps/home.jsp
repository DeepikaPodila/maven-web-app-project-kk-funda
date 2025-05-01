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
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
            color: #333;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #003366;
            color: white;
            padding: 30px 0;
            text-align: center;
        }

        h1 {
            margin: 10px 0;
        }

        .content {
            max-width: 900px;
            margin: 30px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 10px;
        }

        .section-title {
            color: #003366;
            margin-bottom: 10px;
        }

        hr {
            border: 1px solid #ddd;
            margin: 20px 0;
        }

        .info {
            margin-left: 20px;
            font-size: 16px;
        }

        .footer {
            text-align: center;
            padding: 15px;
            background-color: #003366;
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        .contact {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
            font-size: 14px;
        }

        .contact img {
            width: 100px;
        }

        a {
            color: #0077cc;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        p {
            margin: 8px 0;
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome to KK AWS & AZURE DevOps</h1>
    <h2>KK FUNDA at 6:45 AM</h2>
</header>

<div class="content">
    <h2 class="section-title">Server Side IP Address</h2>
    <div class="info">
        <% 
            String ip = "";
            InetAddress inetAddress = InetAddress.getLocalHost();
            ip = inetAddress.getHostAddress();
            out.println("Server Host Name: " + inetAddress.getHostName() + "<br>"); 
            out.println("Server IP Address: " + ip);
        %>
    </div>

    <hr>

    <h2 class="section-title">Client Side IP Address</h2>
    <div class="info">
        <% 
            out.print("Client IP Address: " + request.getRemoteAddr() + "<br>");
            out.print("Client Host Name: " + request.getRemoteHost()); 
        %>
    </div>

    <hr>

    <div class="contact">
        <img src="images/kkfunda.jpg" alt="KK FUNDA Logo">
        <div>
            <strong>KK FUNDA</strong><br>
            Martha Halli, Bangalore<br>
            📞 +91-9676831734<br>
            ✉️ <a href="mailto:kkeducationblr@gmail.com">kkeducationblr@gmail.com</a><br>
            <a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a>
        </div>
    </div>

    <hr>

    <p>🔗 Service: <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
</div>

<div class="footer">
    <p>KK FUNDA Training & Development Center</p>
    <small>© 2024 by <a href="https://www.google.com/" style="color: white;">KK FUNDA</a></small>
</div>

</body>
</html>

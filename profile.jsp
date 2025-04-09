<%-- 
    Document   : profile.jsp
    Created on : Apr 7, 2025, 1:53:20 AM
    Author     : harsh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>User Profile</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom Dark Theme CSS -->
        <style>
            body {
                background-color: #121212;
                color: #ffffff;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            .profile-container {
                background-color: #1e1e1e;
                padding: 40px;
                border-radius: 10px;
                box-shadow: 0 0 15px rgba(0, 0, 0, 0.6);
                max-width: 800px;
                margin: 50px auto;
            }

            h2 {
                text-align: center;
                margin-bottom: 30px;
                color: #00bcd4;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                background-color: #2c2c2c;
                border-radius: 10px;
                overflow: hidden;
            }

            th, td {
                padding: 12px 20px;
                border: 1px solid #444;
                color: #ffffff;
            }

            th {
                background-color: #007bff;
                color: white;
                width: 30%;
                text-align: left;
            }

            td {
                background-color: #1e1e1e;
            }

            a {
                display: inline-block;
                margin-top: 20px;
                margin-right: 15px;
                color: #00bcd4;
                text-decoration: none;
                font-weight: bold;
            }

            a:hover {
                text-decoration: underline;
                color: #007bff;
            }
        </style>
    </head>
    <body>

        <div class="profile-container">
            <h2>User Profile</h2>
            <table>
                <tr><th>ID</th><td>${id}</td></tr>
                <tr><th>Username</th><td>${username}</td></tr>
                <tr><th>Mobile</th><td>${mobile}</td></tr>
                <tr><th>Pincode</th><td>${pincode}</td></tr>
                <tr><th>City</th><td>${city}</td></tr>
                <tr><th>State</th><td>${state}</td></tr>
                <tr><th>District</th><td>${distname}</td></tr>
                <tr><th>Department</th><td>${depname}</td></tr>
                <tr><th>DDO Name</th><td>${ddoname}</td></tr>
                <tr><th>Bank</th><td>${bankname}</td></tr>
            </table>

            <div class="text-center mt-4">
                <a href="index.jsp">Registration Page</a>
                <a href="showall.jsp">All Users</a>
                <a href="update.jsp">Update User Details</a>

            </div>
            <center><a href="delete.jsp" style="color: red; ">← Delete User →</a></center>
        </div>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>

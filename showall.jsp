<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>User List</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

        <style>
            body {
                background-color: #121212;
                color: #ffffff;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            .container {
                max-width: 1000px;
                margin: 50px auto;
                background-color: #1e1e1e;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.6);
                transition: all 0.3s ease;
            }

            .container:hover {
                transform: translateY(-5px);
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            }

            h2 {
                text-align: center;
                color: #00bcd4;
                margin-bottom: 30px;
                font-weight: bold;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                background-color: #2c2c2c;
                border-radius: 8px;
                overflow: hidden;
            }

            th, td {
                padding: 12px 15px;
                border: 1px solid #444;
                text-align: center;
                color: #ffffff;
            }

            th {
                background-color: #007bff;
                color: white;
            }

            tr:nth-child(even) td {
                background-color: #1e1e1e;
            }

            tr:hover td {
                background-color: #333333;
            }

            a {
                display: inline-block;
                margin: 20px 10px 0;
                color: #00bcd4;
                text-decoration: none;
                font-weight: bold;
            }

            a:hover {
                color: #ffffff;
                text-decoration: underline;
            }

            .footer {
                text-align: center;
                margin-top: 40px;
                font-size: 14px;
                color: #777;
            }
        </style>
    </head>
    <body>

        <div class="container">
            <h2>User Details Table</h2>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Mobile</th>
                    <th>City</th>
                    <th>Department</th>
                </tr>

                <%
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");

                        String url = "jdbc:mysql://localhost:3306/tasktwo";
                        String user = "root";
                        String pass = "heyitsnone";

                        Connection con = DriverManager.getConnection(url, user, pass);
                        String query = "SELECT u.id, u.username, u.mobile, u.city, dept.depname FROM users u LEFT JOIN departments dept ON u.depcode = dept.depcode";
                        Statement stm = con.createStatement();
                        ResultSet rs = stm.executeQuery(query);

                        while (rs.next()) {
                            int id = rs.getInt("id");
                            String name = rs.getString("username");
                            String mobile = rs.getString("mobile");
                            String city = rs.getString("city");
                            String dept = rs.getString("depname");
                %>

                <tr>
                    <td><%= id%></td>
                    <td><%= name%></td>
                    <td><%= mobile%></td>
                    <td><%= city%></td>
                    <td><%= dept%></td>
                </tr>

                <%
                        }
                    } catch (Exception e) {
                        out.println("<tr><td colspan='5' style='color:red;'>Error: " + e.getMessage() + "</td></tr>");
                        e.printStackTrace();
                    }
                %>
            </table>

            <div class="text-center mt-4">
                <a href="register.jsp">Registration Page</a>
                <a href="login.jsp">Login Page</a>
                <a href="update.jsp">Update User Details</a>

            </div>
            <center><a href="delete.jsp" style="color: red; ">← Delete User →</a></center>
        </div>

        <div class="footer">
            &copy; 2025 | Designed in Dark Mode by Harsh
        </div>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>

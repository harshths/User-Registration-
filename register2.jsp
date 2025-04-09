<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <%
            String username = request.getParameter("name");
            String password = request.getParameter("pass");
            String mobile = request.getParameter("mobile");
            String city = request.getParameter("city");
            String pincode = request.getParameter("pincode");

            String distcode = request.getParameter("distcode");
            String state = request.getParameter("state");

            String deptcode = request.getParameter("deptcode");
            String ddocode = request.getParameter("ddocode");
            String bankcode = request.getParameter("bankcode");

            
            // 
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/tasktwo";
            String user = "root";
            String pass = "heyitsnone";
            Connection con = DriverManager.getConnection(url, user, pass);

            // === USERS ===
            PreparedStatement insertUser = con.prepareStatement("INSERT INTO users(username, password, mobile, pincode, city, state, ddocode, distcode, depcode, bankcode) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            insertUser.setString(1, username);
            insertUser.setString(2, password);
            insertUser.setString(3, mobile);
            insertUser.setString(4, pincode);
            insertUser.setString(5, city);
            insertUser.setString(6, state);
            insertUser.setString(7, ddocode);
            insertUser.setString(8, distcode);
            insertUser.setString(9, deptcode);
            insertUser.setString(10, bankcode);
            insertUser.executeUpdate();
            
            
            insertUser.close();
            con.close();
            

            response.sendRedirect("showall.jsp");
        %>
    </body>
</html>

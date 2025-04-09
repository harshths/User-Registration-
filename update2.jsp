<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Profile Page</title>

    </head>
    <body>

        <%
            // id & password...
            String idd = request.getParameter("id");
            int id = Integer.parseInt(idd);
            String password = request.getParameter("pass");

            // personal details...
            String username = request.getParameter("name");
            String mobile = request.getParameter("mobile");
            String city = request.getParameter("city");
            String pincode = request.getParameter("pincode");

            String distcode = request.getParameter("distcode");
            String state = request.getParameter("state");

            // professonal details...
            String deptcode = request.getParameter("deptcode");
            String ddocode = request.getParameter("ddocode");
            String bankcode = request.getParameter("bankcode");

            // 
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/tasktwo";
            String user = "root";
            String pass = "heyitsnone";
            Connection con = DriverManager.getConnection(url, user, pass);

            // checking for the password....
            PreparedStatement pstm1 = con.prepareStatement("select password from users where id=?;");
            pstm1.setInt(1, id);

            ResultSet rs1 = pstm1.executeQuery();

            if (rs1.next()) {
                String pass1 = rs1.getString("password");
                if (pass1.equals(password)) {
                // valid user....
                    PreparedStatement insertUser = con.prepareStatement("UPDATE users SET username=?, mobile=?, pincode=?, city=?, state=?, ddocode=?, distcode=?, depcode=?, bankcode=? WHERE id=?");
                    insertUser.setString(1, username);
                    insertUser.setString(2, mobile);
                    insertUser.setString(3, pincode);
                    insertUser.setString(4, city);
                    insertUser.setString(5, state);
                    insertUser.setString(6, ddocode);
                    insertUser.setString(7, distcode);
                    insertUser.setString(8, deptcode);
                    insertUser.setString(9, bankcode);
                    insertUser.setInt(10, id);

                    insertUser.executeUpdate();

                    insertUser.close();
                    con.close();

                    response.sendRedirect("login.jsp");
                } else {
                    out.println("Wrong Password....");
                }
            } else {
                out.println("user not found...");
            }


        %>


    </body>
</html>

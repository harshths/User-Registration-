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

            String idd = request.getParameter("id");
            int id = Integer.parseInt(idd);
            String password = request.getParameter("pass");

            // load the driver...
            Class.forName("com.mysql.cj.jdbc.Driver");

            // build the connection...
            String url = "jdbc:mysql://localhost:3306/tasktwo";
            String user = "root";
            String dbpass = "heyitsnone";

            Connection con = DriverManager.getConnection(url, user, dbpass);

            PreparedStatement pstm1 = con.prepareStatement("select password from users where id=?;");
            pstm1.setInt(1, id);

            ResultSet rs1 = pstm1.executeQuery();
            

            if (rs1.next()) {
            String pass1 = rs1.getString("password");
                if (pass1.equals(password)) {
                    PreparedStatement pstm = con.prepareStatement("SELECT u.id, u.username, u.mobile, u.pincode,     u.city,   u.state, ddo.ddoname, dept.depname, dist.distname, b.bankname FROM users u LEFT JOIN ddo ddo ON u.ddocode = ddo.ddocode LEFT JOIN departments dept ON u.depcode = dept.depcode LEFT JOIN districts dist ON u.distcode = dist.distcode LEFT JOIN bank b ON u.bankcode = b.bankcode  WHERE u.id = ?");
                    pstm.setInt(1, id);

                    ResultSet rs = pstm.executeQuery();

                    if (rs.next()) {
                        request.setAttribute("id", rs.getInt("id"));
                        request.setAttribute("username", rs.getString("username"));
                        request.setAttribute("mobile", rs.getString("mobile"));
                        request.setAttribute("pincode", rs.getString("pincode"));
                        request.setAttribute("city", rs.getString("city"));
                        request.setAttribute("state", rs.getString("state"));
                        request.setAttribute("ddoname", rs.getString("ddoname"));
                        request.setAttribute("depname", rs.getString("depname"));
                        request.setAttribute("distname", rs.getString("distname"));
                        request.setAttribute("bankname", rs.getString("bankname"));

                        // Forward to JSP
                        RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
                        rd.forward(request, response);
                    } else {
                        response.getWriter().println("User not found!");
                    }
                } else {
                    out.println("Wrong Password....");
                }
            }
            
            else{
                out.println("user not found...");
            }


        %>



    </body>
</html>

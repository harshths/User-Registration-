<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login Page</title>

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
                    PreparedStatement pstm = con.prepareStatement("delete from users where id=?");
                    pstm.setInt(1, id);

                    pstm.executeUpdate();
                    
                    response.sendRedirect("showall.jsp");
                    

                    
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

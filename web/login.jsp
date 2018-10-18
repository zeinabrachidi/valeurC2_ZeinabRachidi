<%-- 
    Document   : login
    Created on : Oct 18, 2018, 1:33:18 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <%@ page import ="java.sql.*" %>
        <%@ page import ="javax.sql.*" %>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            Class.forName("com.mysql.jdbc.Driver"); 
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
            Statement st= con.createStatement(); 
            ResultSet rs = st.executeQuery("select * from person where username='"+ username+"'"); 
            if(rs.next()) 
            { 
               if(rs.getString(8).equals(password)) 
               { out.println("welcome "+ username);  } 
               else 
                { out.println("Invalid password try again"); } 
            } 
            else 
            %>
            <a href="index.xhtml">Home</a>
    </body>
</html>

<%-- 
    Document   : reg1
    Created on : Oct 18, 2018, 12:47:40 PM
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
        <h1>Register</h1>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
   Class.forName("com.mysql.jdbc.Driver"); 
   java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
   Statement st= con.createStatement(); 
   ResultSet rs; 
   
    String firstName= request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String gender =request.getParameter("gender");
    String mobile = request.getParameter("mobile");
    String e_mail = request.getParameter("e_mail");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    int idProfession = Integer.parseInt(request.getParameter("idProfession"));
    int streetId = Integer.parseInt(request.getParameter("streetId"));
    int i=st.executeUpdate("insert into Person(firstName, lastName, gender, mobile,email, userName, password, idProfession, streetId)" 
                       + " values (firstName, lastName, gender, mobile,email, userName, password, idProfession, streetId)  ")  ;
    out.println("Registered"); 
%>

<a href ="login.xhtml">Login</a><br/><br/>
<a href="index.xhtml">Home</a>
</body>
</html>

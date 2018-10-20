<%-- 
    Document   : addCity
    Created on : Oct 19, 2018, 10:13:06 PM
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
        <h1>Add City</h1>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%
   Class.forName("com.mysql.jdbc.Driver"); 
   java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
   Statement st= con.createStatement(); 
   ResultSet rs; 
   
    String cityName = request.getParameter("cityName");
   int i=st.executeUpdate("INSERT INTO `valeurc2`.`city` (`cityName`) VALUES ( '"+cityName+"'); ");
   out.println("Registered"); 
    %>
<a href="index.xhtml">Home</a>
</body>
</html>

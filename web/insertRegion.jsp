<%-- 
    Document   : insertRegion
    Created on : Oct 31, 2018, 11:37:47 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<%
                        
    String regionName = request.getParameter("regionName");

    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
        Statement st=con.createStatement();
        ResultSet rs; 
        int choosen =0;
        if (request.getParameter("choose") != null)
            choosen = Integer.parseInt(request.getParameter("choose"));
        if (regionName != null && choosen != 0)
        {  int i=st.executeUpdate("INSERT INTO `valeurc2`.`region` (`regionName`, `idcity`) VALUES ( '"+regionName+"', '"+choosen+"'); ");  }
        out.println("Registered"); 
    } 
    catch (Exception ex) 
    { ex.printStackTrace();
        out.println("error " + ex.getMessage());
    }

 %>

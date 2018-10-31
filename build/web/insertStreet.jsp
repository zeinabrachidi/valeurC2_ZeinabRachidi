<%-- 
    Document   : insertStreet
    Created on : Nov 1, 2018, 12:06:30 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<%
                        
    String StreetName = request.getParameter("streetName");

    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
        Statement st=con.createStatement();
        ResultSet rs; 
        int choosenRegion =0;
        if (request.getParameter("choose") != null && StreetName != null)
        {   choosenRegion = Integer.parseInt(request.getParameter("chooseRegion"));
            int i=st.executeUpdate("INSERT INTO `valeurc2`.`street` (`StreetName`, `idRegion`) VALUES ( '"+StreetName+"', '"+choosenRegion+"'); ");
        }
        out.println("Data is successfully inserted!");
    }
    catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
    }

 %>
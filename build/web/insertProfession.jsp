<%-- 
    Document   : insertProfession
    Created on : Oct 31, 2018, 11:35:54 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<%
                        
     String professionName = request.getParameter("professionName");

    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
        Statement st=con.createStatement();
        ResultSet rs; 
        if (professionName != null)
        {  int i=st.executeUpdate("INSERT INTO `valeurc2`.`profession` (`professionName`) VALUES ( '"+ professionName+"'); "); }
           out.println("Data is successfully inserted!");
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }

 %>

      

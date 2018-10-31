<%-- 
    Document   : insertHospital
    Created on : Oct 31, 2018, 11:11:22 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<%
                        
    String hospitalName = request.getParameter("hospitalName");

    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
        Statement st=con.createStatement();
        ResultSet rs; 
        if (hospitalName != null)
        {  int i=st.executeUpdate("INSERT INTO `valeurc2`.`hospital` (`hospitalName`) VALUES ( '"+ hospitalName +"'); "); }
           out.println("Data is successfully inserted!");
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }

 %>




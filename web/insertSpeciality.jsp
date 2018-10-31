<%-- 
    Document   : insertSpeciality
    Created on : Nov 1, 2018, 12:04:34 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<%
                        
    String specialityDesc = request.getParameter("specialityDesc");

    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
        Statement st=con.createStatement();
        ResultSet rs; 
        if (specialityDesc != null)
        {  int i=st.executeUpdate("INSERT INTO `valeurc2`.`speciality` (`specialityDesc`) VALUES ( '"+ specialityDesc+"'); "); }
           out.println("Data is successfully inserted!");
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }

 %>

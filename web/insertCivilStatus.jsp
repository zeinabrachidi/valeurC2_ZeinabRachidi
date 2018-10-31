<%-- 
    Document   : insertCivilStatus
    Created on : Oct 31, 2018, 10:54:10 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
                
 <%
                        
    String civilstatusDesc = request.getParameter("civilstatusDesc");

    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
        Statement st=con.createStatement();
        ResultSet rs; 
        if (civilstatusDesc != null)
        {  int i=st.executeUpdate("INSERT INTO `valeurc2`.`civilstatus` (`civilstatusDesc`) VALUES ( '"+ civilstatusDesc+"'); "); }
    }
    catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
    }

 %>               

<%-- 
    Document   : insertMedicalCard
    Created on : Oct 31, 2018, 11:17:49 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import ="javax.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date"%>



<!DOCTYPE html>
<%   
    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
        Statement st=con.createStatement();
        ResultSet rs; 
        
        String emissionDate_s = request.getParameter("emissionDate");
        java.util.Date emissionDate = new SimpleDateFormat("dd-MM-yyyy").parse(emissionDate_s);
        java.sql.Date sqlDate = new java.sql.Date(emissionDate.getTime());
        
        String s = request.getParameter("choosePatient");
        out.println("choosePatient= " + s);
        
        int choosenPatient =0;
        if (request.getParameter("choosePatient") != null && emissionDate != null)
        {   choosenPatient = Integer.parseInt(request.getParameter("choosePatient"));
            int i=st.executeUpdate("INSERT INTO `valeurc2`.`medicalCard` (`emissionDate`, `IdPersonPat`) VALUES ( '"+sqlDate+"', '"+choosenPatient+"'); ");     }
            out.println("Data is successfully inserted!"); 
    } 
    catch (Exception ex) 
        { ex.printStackTrace();
          out.println("error " + ex.getMessage());
        }
 %>
 <script type="text/javascript">
 window.location.href="addMedicalCard.jsp";
</script>




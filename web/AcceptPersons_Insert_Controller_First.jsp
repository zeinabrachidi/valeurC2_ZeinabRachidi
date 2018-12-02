<%-- 
    Document   : AcceptPersons_Insert_Controller_First
    Created on : Dec 2, 2018, 6:51:32 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="MiriamCenter.AcceptPersons_Insert"%>
<%@page import="MiriamCenter.Auxiliairy_Insert"%>
<%@page import="MiriamCenter.Technician_Insert"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>
<%@page import="MiriamCenter.DB_Connection"%>

<!DOCTYPE html>

<%
    int choosenIdPerson = Integer.parseInt(request.getParameter("chooseIdPerson"));
    int choosenPersonType = Integer.parseInt(request.getParameter("choosePersonType"));
    
    if (choosenIdPerson != 0 && choosenPersonType != 0)
    {   AcceptPersons_Insert api = new AcceptPersons_Insert();  
        if (choosenPersonType == 3)
             api.insert_values(choosenIdPerson , choosenPersonType, true);
        else
            api.insert_values(choosenIdPerson , choosenPersonType, false);
                
        out.println(" accept_ Person" + choosenIdPerson +  "    Registered"); 
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center;">Add Registeration Type </h1>
        <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="" method="post" onsubmit="return checkForm(this);" align="center">
            <input type="button" value="AddDoctor" onclick="AddDoctor('<%= choosenIdPerson %>')" />
            <input type="button" value="AddPatient" onclick="AddPatient()"/>
            <input type="button" value="AddAuxiliairy" onclick="AddAuxiliairy()"/>
            <input type="button" value="AddTechnician" onclick="AddTechnician()"/>
            <a href="index.xhtml">Home</a><br/><br/>

        </form>
</body>
</html> 

<script type="text/javascript">
   function AddDoctor() {                         
      window.location.href="Doctor_Insert.jsp?IdPerson=<%=choosenIdPerson%>" ;
    }
    
    function AddPatient() {                         
      window.location.href="Patient_Insert.jsp" ;
    }
    
    function AddAuxiliairy() {                         
      window.location.href="Auxiliairy_Insert.jsp" ;
    }
    function AddTechnician() {                         
      window.location.href="Technician_Insert.jsp"; 
    }
    
</script>

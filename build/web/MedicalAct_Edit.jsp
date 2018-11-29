<%-- 
    Document   : MedicalAct_Edit
    Created on : Nov 29, 2018, 11:23:13 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="MiriamCenter.MedicalAct_Bean"%>
<%@page import="MiriamCenter.MedicalAct_Edit"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
	int idMedicalAct=Integer.parseInt(request.getParameter("idMedicalAct"));
        
	MedicalAct_Edit  mae= new MedicalAct_Edit();
        
        MedicalAct_Bean mab = mae.get_value_of_medicalact(idMedicalAct);
	
	%>

<center>

<h1>Edit Values</h1>
<h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
<h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>

<form action="MedicalAct_Edit_Controller.jsp">

idMedicalAct :<input type="text" name="idMedicalAct" value="<%=idMedicalAct%>"><br>

Medical Act Date             :<input type="text" name="medicalActDate" value="<%=mab.getMedicalActDate()%>"><br>
Medical Act Time             :<input type="text" name="medicalactTime" value="<%=mab.getMedicalactTime()%>"><br>
Medicalact Description       :<input type="text" name="medicalactDesc" value="<%=mab.getMedicalactDesc()%>"><br>
Id Medical Card              :<input type="text" name="idMedicalCard" value="<%=mab.getIdMedicalCard()%>"><br>
             
<input type="submit" value="MedicalAct_Edit">

</form>
</center>
</body>
</html>

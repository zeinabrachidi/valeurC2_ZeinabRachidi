<%-- 
    Document   : AcceptPersons_Edit
    Created on : Nov 23, 2018, 9:29:18 AM
    Author     : zeina
--%>

<<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="MiriamCenter.AcceptPersons_Bean"%>
<%@page import="MiriamCenter.AcceptPersons_Edit"%>
<%@page import="java.sql.*"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
	int idPerson=Integer.parseInt(request.getParameter("idPerson"));
        int idPersonType=Integer.parseInt(request.getParameter("idPersonType"));
        
	AcceptPersons_Edit pe = new AcceptPersons_Edit();
	
	AcceptPersons_Bean pb = pe.get_value_of_acceptpersons(idPerson, idPersonType);
	%>

<center>

<h1>Edit Values</h1>
<h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
<h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>

<form action="AcceptPersons_Edit_Controller.jsp">

Id Person :<input type="text" name="idPerson" value="<%=idPerson%>"><br>
Id Person Type :<input type="text" name="idPersonType" value="<%=idPersonType%>"><br>

Accepted    :<input type="text" name="accepted" value="<%=pb.getAccepted()%>"><br>

<input type="submit" value="AcceptPersons_Edit">

</form>
</center>
</body>
</html>
     
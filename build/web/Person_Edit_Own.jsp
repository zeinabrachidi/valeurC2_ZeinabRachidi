<%-- 
    Document   : Person_Edit_Own
    Created on : Nov 26, 2018, 10:11:14 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="MiriamCenter.Person_Bean"%>
<%@page import="MiriamCenter.Person_Edit"%>
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
        
	Person_Edit pe = new Person_Edit();
	
	Person_Bean pb = pe.get_value_of_person(idPerson);
	%>

<center>

<h1>Edit Values</h1>
<h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
<h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>

<form action="Person_Edit_Own_Controller.jsp">

Id Person :<input type="text" name="idPerson" value="<%=idPerson%>"><br>

First Name    :<input type="text" name="firstName" value="<%=pb.getFirstName()%>"><br>
Last Name     :<input type="text" name="lastName" value="<%=pb.getLastName()%>"><br>
Gender        :<input type="text" name="gender" value="<%=pb.getGender()%>"><br>
Mobile<       :<input type="text" name="mobile" value="<%=pb.getMobile()%>"><br>
Email         :<input type="email" name="e_mail" value="<%=pb.getEMail()%>"><br>
Id Profession :<input type="text" name="idProfession" value="<%=pb.getIdProfession()%>"><br> 
Id Street     :<input type="text" name="idStreet" value="<%=pb.getIdStreet()%>"><br> 
User Name     :<input title="Username must not be blank and contain only letters, numbers and underscores." type="text" pattern="\w+" name="username" value="<%=pb.getUsername()%>"><br> 
Password      :<input title="Password must contain at least 6 characters, including UPPER/lowercase and numbers." type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="password"  value="<%=pb.getPassword()%>"><br>                      
                  
<input type="submit" value="Person_Edit">

</form>
</center>
</body>
</html>
     

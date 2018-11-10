<%-- 
    Document   : editUnit
    Created on : Nov 10, 2018, 5:48:19 PM
    Author     : zeina
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MiriamCenter.EditUnit"%>
<%@page import="MiriamCenter.Unit_bean"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	int idUnit=Integer.parseInt(request.getParameter("idUnit"));
	out.print("in edit.jsp idUnit=" + idUnit);
	EditUnit eu = new EditUnit();
	
	Unit_bean ub = eu.get_value_of_unit(idUnit);
        out.print("after call get_value_of _unit idUnit=" + ub.getIdUnit() + "  unitDesc=" + ub.getUnitDesc()) ;
	
	%>

<center>

<h1>Edit Values</h1>

<form action="Unit_Edit_controller.jsp">

Id Unit :<input type="text" name="idUnit" value="<%=idUnit%>"><br>

Unit Description :<input type="text" name="unitDesc" value="<%=ub.getUnitDesc()%>"><br>

<input type="submit" value="EditUnit">

</form>
</center>
</body>
</html>

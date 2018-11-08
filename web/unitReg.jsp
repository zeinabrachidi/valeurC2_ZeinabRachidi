<%-- 
    Document   : unitReg
    Created on : Nov 9, 2018, 12:23:59 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MiriamCenter.UnitFacade"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>


<%
String unitDesc=request.getParameter("unitDesc");
int idUnit=Integer.parseInt(request.getParameter("idUnit"));

 
UnitFacade obj_Insert_Values=new UnitFacade();

obj_Insert_Values.insertUnit(idUnit, unitDesc);

%>


</body>
</html>

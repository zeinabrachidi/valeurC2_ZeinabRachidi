<%-- 
    Document   : AcceptPersons_Delete_Controller
    Created on : Nov 23, 2018, 11:07:19 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MiriamCenter.AcceptPersons_Insert"%>
<%@page import="MiriamCenter.AcceptPersons_Edit"%>
<%@page import="MiriamCenter.AcceptPersons_Delete"%>
<%@page import="MiriamCenter.AcceptPersons_Bean"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
    int idPerson =Integer.parseInt(request.getParameter("idPerson"));
    int idPersonType =Integer.parseInt(request.getParameter("idPersonType"));
    out.println("in delete controller idPerson=" + idPerson + " " + idPersonType);
    AcceptPersons_Delete apd =new AcceptPersons_Delete();

    apd.delete_value(idPerson, idPersonType);
%>

<script type="text/javascript">
    window.location.href="AcceptPersons_Read.jsp";
</script>
    </body>
</html>


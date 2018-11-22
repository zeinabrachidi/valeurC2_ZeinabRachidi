<%-- 
    Document   : Person_Delete_Controller
    Created on : Nov 22, 2018, 10:39:17 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MiriamCenter.Person_Insert"%>
<%@page import="MiriamCenter.Person_Edit"%>
<%@page import="MiriamCenter.Person_Delete"%>
<%@page import="MiriamCenter.Person_Bean"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
    int idPerson =Integer.parseInt(request.getParameter("idPerson"));
    out.println("in delete controller idPerson=" + idPerson);
    Person_Delete dp =new Person_Delete();

    dp.delete_value(idPerson);
%>

<script type="text/javascript">
    window.location.href="Person_Read.jsp";
</script>
    </body>
</html>


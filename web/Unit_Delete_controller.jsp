<%-- 
    Document   : Unit_Delete_controller
    Created on : Nov 10, 2018, 5:43:52 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MiriamCenter.InsertUnit"%>
<%@page import="MiriamCenter.EditUnit"%>
<%@page import="MiriamCenter.DeleteUnit"%>
<%@page import="MiriamCenter.Unit_bean"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
    int idUnit =Integer.parseInt(request.getParameter("idUnit"));
    out.println("in delete controller idUnit=" + idUnit);
    DeleteUnit du =new DeleteUnit();

    du.delete_value(idUnit);
%>

<script type="text/javascript">
    window.location.href="readUnit.jsp";
</script>
    </body>
</html>

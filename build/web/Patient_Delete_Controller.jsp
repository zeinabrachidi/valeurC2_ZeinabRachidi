<%-- 
    Document   : Patient_Delete_Controller
    Created on : Nov 23, 2018, 11:17:19 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MiriamCenter.Patient_Insert"%>
<%@page import="MiriamCenter.Patient_Edit"%>
<%@page import="MiriamCenter.Patient_Delete"%>
<%@page import="MiriamCenter.Patient_Bean"%>

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
    Patient_Delete pd =new Patient_Delete();

    pd.delete_value(idPerson);
%>

<script type="text/javascript">
    window.location.href="Patient_Read.jsp";
</script>
    </body>
</html>


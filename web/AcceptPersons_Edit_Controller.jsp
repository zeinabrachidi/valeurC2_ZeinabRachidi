<%-- 
    Document   : AcceptPersons_Edit_Controller
    Created on : Nov 23, 2018, 10:02:04 AM
    Author     : zeina
--%>

<%@page import="MiriamCenter.AcceptPersons_Edit"%>
<%@page import="MiriamCenter.AcceptPersons_Insert"%>
<%@page import="MiriamCenter.AcceptPersons_Bean"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>



<%
    int idPerson=Integer.parseInt(request.getParameter("idPerson"));
    int idPersonType=Integer.parseInt(request.getParameter("idPersonType"));
    boolean accepted =Boolean.parseBoolean(request.getParameter("accepted"));
    
    out.print(" idPersonType =" +  idPersonType  );
    out.print("accepted =" +  accepted);
    
    AcceptPersons_Bean apb = new  AcceptPersons_Bean();
   
    apb.setIdPerson(idPerson);
    apb.setIdPersonType(idPersonType);
    apb.setAccepted(accepted);
    
    AcceptPersons_Edit ape = new  AcceptPersons_Edit();

     ape.edit_acceptpersons(apb);
%>

<script type="text/javascript">
 window.location.href="AcceptPersons_Read.jsp";
</script>


<%-- 
    Document   : MedicalAct_Edit_Controller
    Created on : Nov 29, 2018, 12:16:19 PM
    Author     : zeina
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="MiriamCenter.MedicalAct_Edit"%>
<%@page import="MiriamCenter.MedicalAct_Bean"%>
<%@page import="MiriamCenter.MedicalAct_Insert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>



<%
    int idMedicalAct = Integer.parseInt(request.getParameter("idMedicalAct"));
    
    String medicalActDate_s= request.getParameter("medicalActDate");
    java.util.Date medicalActDate =  new SimpleDateFormat("dd-mm-yyyy").parse(medicalActDate_s);
 
    String medicalactDesc =request.getParameter("medicalactDesc");
    int idMedicalCard = Integer.parseInt(request.getParameter("idMedicalCard"));
    
    out.print(" medicalActDate =" +  medicalActDate  );
    out.print(" medicalactDesc =" + medicalactDesc);
    out.print(" idMedicalCard =" +  idMedicalCard ) ;
    
    MedicalAct_Bean mab = new MedicalAct_Bean();
   
    mab.setIdMedicalAct(idMedicalAct);
    mab.setMedicalActDate(medicalActDate);
    mab.setMedicalactDesc(medicalactDesc);
    mab.setIdMedicalCard(idMedicalCard);
 

    MedicalAct_Edit mae = new  MedicalAct_Edit();

     mae.edit_medicalact(mab);
%>

<script type="text/javascript">
     //window.opener.location.reload();
    // window.close();
     window.location.href="MedicalAct_Read.jsp";
</script>


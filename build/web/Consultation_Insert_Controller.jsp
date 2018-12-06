<%-- 
    Document   : Consultation_Insert_Controller
    Created on : Dec 3, 2018, 8:11:47 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>
<%@page import="MiriamCenter.Consultation_Insert"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="MiriamCenter.DB_Connection"%>

<!DOCTYPE html>

<%
    DB_Connection obj_con =new DB_Connection();
    Connection con=obj_con.get_connection();   
    ResultSet rs;
    PreparedStatement ps;  
    Statement st=con.createStatement();
                
    int idMedicalAct = Integer.parseInt(request.getParameter("idMedicalAct"));
    out.println("idMedicalAct=" + idMedicalAct);
    String chooseDoctor = request.getParameter("chooseDoctor");
    int choosenDoctor = 0;
    if (request.getParameter("chooseDoctor") != null)
        choosenDoctor = Integer.parseInt(request.getParameter("chooseDoctor"));
    int montant = Integer.parseInt(request.getParameter("montant"));
                
    try{             
        if (idMedicalAct!= 0 && montant != 0)
        {   Consultation_Insert ci = new Consultation_Insert();
            ci.insert_values(idMedicalAct, choosenDoctor, montant);
        }
        } 
        catch (Exception ex) 
        { ex.printStackTrace();
             out.println("error " + ex.getMessage());
        }

 %>
 <script type="text/javascript">
 window.location.href="Consultation_Insert.jsp";
</script>


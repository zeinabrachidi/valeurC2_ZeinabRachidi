<%-- 
    Document   : AcceptPersons_Insert_Controller
    Created on : Nov 23, 2018, 8:48:05 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="MiriamCenter.AcceptPersons_Insert"%>
<%@page import="MiriamCenter.Auxiliairy_Insert"%>
<%@page import="MiriamCenter.Technician_Insert"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>
<%@page import="MiriamCenter.DB_Connection"%>

<!DOCTYPE html>

<%
    int choosenIdPerson = Integer.parseInt(request.getParameter("chooseIdPerson"));
    int choosenPersonType = Integer.parseInt(request.getParameter("choosePersonType"));
    
    if (choosenIdPerson != 0 && choosenPersonType != 0)
    {   AcceptPersons_Insert api = new AcceptPersons_Insert();  
        if (choosenPersonType == 3)
             api.insert_values(choosenIdPerson , choosenPersonType, true);
        else
            api.insert_values(choosenIdPerson , choosenPersonType, false);
                
        out.println(" accept_ Person" + choosenIdPerson +  "    Registered"); 

        if(choosenPersonType == 2)
        {    
            %>
                <a href ="Doctor_Insert.jsp?idPerson=<%=(choosenIdPerson)%> ">Go to Doctor page</a> 
            <%                    
        }

        if (choosenPersonType == 3)
        {      
            %>
                <a href ="Patient_Insert.jsp?idPerson=<%=(choosenIdPerson)%> ">Go to Patient Page</a>   
           <%                 
        }

        if(choosenPersonType == 4)
        {  Auxiliairy_Insert ai = new Auxiliairy_Insert();
            ai.insert_values(choosenIdPerson); 
        }    
        if(choosenPersonType == 5)
        {   Technician_Insert ti = new Technician_Insert();
            ti.insert_values(choosenIdPerson); 
        } 
    }
%>





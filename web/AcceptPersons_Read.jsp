<%-- 
    Document   : AcceptPersons_Read
    Created on : Nov 23, 2018, 8:51:19 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="MiriamCenter.AcceptPersons_Bean_Detail"%>
<%@page import="MiriamCenter.AcceptPersons_Read_Detail"%>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body>
    <center>

    <h1>Read Values</h1>
    <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
    <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>

        <form action="" method="post" onsubmit="return checkForm(this);">
            <table border="1" align="center">
                <%
                    AcceptPersons_Read_Detail apr = new AcceptPersons_Read_Detail();

                    List<AcceptPersons_Bean_Detail> list= apr.get_values(); 

                    Iterator<AcceptPersons_Bean_Detail> it_list = list.iterator();
                    while(it_list.hasNext()){
                        AcceptPersons_Bean_Detail apb =new AcceptPersons_Bean_Detail();
                        apb = it_list.next();
                %>            
                <tr>        
                            <td><%=apb.getIdPerson()%></td> 
                            <td><%=apb.getFirstName()%></td>
                             <td><%=apb.getLastName()%></td>
                            <td><%=apb.getIdPersonType()%></td>
                            <td><%=apb.getPersonTypeDesc()%></td>
                             <td><%=apb.getAccepted() %></td>
                            <td><a href="AcceptPersons_Edit.jsp?idPerson=<%=apb.getIdPerson()%>">Edit Accept Persons</a></td>	
                            <td><a href="AcceptPersons_Delete_Controller.jsp?idPerson=<%=apb.getIdPerson()%>">Delete Accept Persons</a><td>
                </tr>        
                <%  
                    }   
                %>           
            </table>
            <a href="index.xhtml" style="text-align: center;">Home</a>
            <a href="Admin_Login.jsp" style="text-align: center;">Administrator Page</a>
        </form>
    </center>
</body>
</html>

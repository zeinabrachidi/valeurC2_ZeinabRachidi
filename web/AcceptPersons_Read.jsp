<%-- 
    Document   : AcceptPersons_Read
    Created on : Nov 23, 2018, 8:51:19 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="MiriamCenter.AcceptPersons_Bean"%>
<%@page import="java.util.List"%>
<%@page import="MiriamCenter.AcceptPersons_Read"%>

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
                    AcceptPersons_Read apr = new AcceptPersons_Read();

                    List<AcceptPersons_Bean> list= apr.get_values(); 

                    Iterator<AcceptPersons_Bean> it_list = list.iterator();
                    while(it_list.hasNext()){
                        AcceptPersons_Bean apb =new AcceptPersons_Bean();
                        apb = it_list.next();
                    %>
                        <tr>	
                            <td><%=apb.getIdPerson() %></td>
                            <td><%=apb.getIdPersonType() %></td>
                            <td><%=apb.getAccepted() %></td>

                            <td><a href="AcceptPersons_Edit.jsp?idUnit=<%=apb.getIdPerson()%>">Edit Accept Persons</a></td>	
                            <td><a href="AcceptPersons_Delete_controller.jsp?idPerson=<%=apb.getIdPerson()%>">Delete Accept Persons</a></td>	
                        </tr>
                    <%	 
                    }   
                %>
            </table>
            <a href="index.xhtml" style="text-align: center;">Home</a>
        </form>
    </center>
</body>
</html>

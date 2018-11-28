<%-- 
    Document   : AcceptPersons_Read_Own
    Created on : Nov 28, 2018, 8:22:31 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>
<%@page import="MiriamCenter.AcceptPersons_Bean_Own"%>
<%@page import="MiriamCenter.AcceptPersons_Read_Own"%>
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
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    
                    AcceptPersons_Read_Own apr = new AcceptPersons_Read_Own();

                    List<AcceptPersons_Bean_Own> list= apr.get_values(username, password); 

                    Iterator<AcceptPersons_Bean_Own> it_list = list.iterator();
                    while(it_list.hasNext()){
                        AcceptPersons_Bean_Own apb =new AcceptPersons_Bean_Own();
                        apb = it_list.next();
                    %>
                        <tr>	
                            <td><%=apb.getIdPerson()%></td>
                            <td><%=apb.getFirstName()%></td>
                            <td><%=apb.getLastName()%></td>
                            <td><%=apb.getUserName()%></td>
                            <td><%=apb.getPassword()%></td>    
                            <td><%=apb.getIdPersonType() %></td>
                            <td><%=apb.getPersonTypeDesc()%></td>
                            <td><%=apb.getAccepted() %></td>
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


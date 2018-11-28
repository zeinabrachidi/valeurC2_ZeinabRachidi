<%-- 
    Document   : Person_Read_Own
    Created on : Nov 24, 2018, 5:26:43 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="MiriamCenter.Person_Bean"%>
<%@page import="java.util.List"%>
<%@page import="MiriamCenter.Person_Read_Own"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
    <h1>Show Registered Persons</h1>
    <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
    <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>

        <form action="" method="post" onsubmit="return checkForm(this);">
            <table border="1" align="center">
                <%
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");

                    Person_Read_Own pro =new Person_Read_Own();

                    List<Person_Bean> list= pro.get_values(username, password); 

                    Iterator<Person_Bean> it_list = list.iterator();
                    while(it_list.hasNext()){
                        Person_Bean pb =new Person_Bean();
                        pb = it_list.next();
                    %>
                        <tr>	
                            <td><%=pb.getIdPerson() %></td>
                            <td><%=pb.getFirstName() %></td>
                            <td><%=pb.getLastName() %></td>
                            <td><%=pb.getGender() %></td>
                            <td><%=pb.getMobile() %></td>
                            <td><%=pb.getEMail() %></td>
                            <td><%=pb.getIdProfession() %></td>
                            <td><%=pb.getIdStreet() %></td>
                            <td><%=pb.getUsername() %></td>
                            <td><%=pb.getPassword() %></td>
                            

                            <td><a href="Person_Edit_Own.jsp?idPerson=<%=pb.getIdPerson()%>">Edit Person</a></td>	
                            <td><a href="Person_Delete_Own_Controller.jsp?idPerson=<%=pb.getIdPerson()%>">Delete Person</a></td>	
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
            
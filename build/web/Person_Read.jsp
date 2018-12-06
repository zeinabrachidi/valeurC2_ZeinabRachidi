<%-- 
    Document   : Person_Read
    Created on : Nov 22, 2018, 10:12:38 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="MiriamCenter.Person_Bean"%>
<%@page import="java.util.List"%>
<%@page import="MiriamCenter.Person_Read"%>

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
                <tr>
                    <td width="100">Id Person</td>
                    <td width="120">First Name</td>
                    <td width="120">Last Name</td>
                    <td width="80">Gender</td>
                    <td width="120">Mobile</td>
                    <td width="180">Email</td>
                    <td width="120">Id Profession</td>
                    <td width="80">Id Street</td>
                    <td width="120">UserName</td>
                    <td width="120">Password</td>
                </tr>
                <%
                    Person_Read pr =new Person_Read();

                    List<Person_Bean> list= pr.get_values(); 

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
                            

                            <td><a href="Person_Edit.jsp?idPerson=<%=pb.getIdPerson()%>">Edit Person</a></td>	
                            <td><a href="Person_Delete_Controller.jsp?idPerson=<%=pb.getIdPerson()%>">Delete Person</a></td>	
                        </tr>
                    <%	 
                    }   
                %>
            </table>
            <a href="index.xhtml" style="text-align: center;">Home</a>
            <input type="button" id="reload"  value="reload"   styleClass="button" onclick="refresh();">
        </form>
    </center>
</body>
</html>

<script type="text/javascript">
   function refresh() {                         
        //Refresh page implementation here
        window.location.reload();
    }
</script>
                
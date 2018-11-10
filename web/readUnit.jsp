<%-- 
    Document   : readUnit
    Created on : Nov 10, 2018, 9:40:00 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="MiriamCenter.Unit_bean"%>
<%@page import="java.util.List"%>
<%@page import="MiriamCenter.ReadUnit"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body>
    <center>

    <h1>Insert Values</h1>
    <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
    <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>

        <form action="" method="post" onsubmit="return checkForm(this);">
            <table border="1" align="center">
                <%
                    ReadUnit ru =new ReadUnit();

                    List<Unit_bean> list= ru.get_values(); 

                    Iterator<Unit_bean> it_list = list.iterator();
                    while(it_list.hasNext()){
                        Unit_bean ub =new Unit_bean();
                        ub = it_list.next();
                    %>
                        <tr>	
                            <td><%=ub.getIdUnit() %></td>
                            <td><%=ub.getUnitDesc() %></td>

                            <td><a href="editUnit.jsp?idUnit=<%=ub.getIdUnit()%>">Edit Unit</a></td>	
                            <td><a href="Unit_Delete_controller.jsp?idUnit=<%=ub.getIdUnit()%>">Delete Unit</a></td>	
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
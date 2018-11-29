<%-- 
    Document   : MedicalAct_Read
    Created on : Nov 29, 2018, 10:11:48 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="MiriamCenter.MedicalAct_Bean_Read"%>
<%@page import="java.util.List"%>
<%@page import="MiriamCenter.MedicalAct_Read"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
    <h1>Show Medical Acts</h1>
    <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
    <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>

        <form action="" method="post" onsubmit="return checkForm(this);">
            <table border="1" align="center">
                <%
                    MedicalAct_Read mar =new MedicalAct_Read();

                    List<MedicalAct_Bean_Read> list= mar.get_values(); 

                    Iterator<MedicalAct_Bean_Read> it_list = list.iterator();
                    while(it_list.hasNext()){
                        MedicalAct_Bean_Read pb =new MedicalAct_Bean_Read();
                        pb = it_list.next();
                    %>
                        <tr>	
                            <td><%=pb.getIdMedicalAct() %></td>
                            <td><%=pb.getMedicalActDate() %></td>
                            <td><%=pb.getMedicalactTime() %></td>
                            <td><%=pb.getMedicalactDesc() %></td>
                            <td><%=pb.getIdMedicalCard() %></td>
                            <td><%=pb.getEmissionDate() %></td>
                            <td><%=pb.getIdPersonPat() %></td>
                            <td><%=pb.getPeron_Data() %></td>
                            
                            <td><a href="MedicalAct_Edit.jsp?idMedicalAct=<%=pb.getIdMedicalAct()%>">Edit Medical Act</a></td>	
                            <td><a href="MedicalAct_Delete_Controller.jsp?idMedicalAct=<%=pb.getIdMedicalAct()%>">Delete Medical Act</a></td>	
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

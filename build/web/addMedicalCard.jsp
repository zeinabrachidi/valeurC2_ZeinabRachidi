<%-- 
    Document   : addMedicalCard
    Created on : Oct 30, 2018, 10:13:05 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import ="javax.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="insertMedicalCard.jsp" method="post" onsubmit="return checkForm(this);">
            <table align="center">   
                <%
                    Class.forName("com.mysql.jdbc.Driver"); 
                    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
                    Statement st=con.createStatement();
                    ResultSet rs; 
                %>    
                <tr>
                    <td>Emission Date</td>
                    <td><input type="text" name="emissionDate"/></td> 
                </tr>               
                <tr>
                    <td>Id Patient</td>
                            <td><select id="choose" name="choosePatient">                           
                                    <option value="0">Select Patient</option>
                                    <%  
                                        String query = "SELECT valeurc2.patient.idPerson, concat(valeurc2.person.firstName, ' ', valeurc2.person.lastName, ' ', valeurc2.patient.ssn, ' ' , valeurc2.patient.registerNo) as Patient_Data FROM valeurc2.person, valeurc2.patient where valeurc2.person.idPerson = valeurc2.patient.idPerson;";
                                        rs = st.executeQuery(query); 
                                         while (rs.next())
                                        { %>
                                            <option value="<%=rs.getInt("idPerson") %>" 
                                                        ><%=rs.getString("Patient_Data")%>  
                                            </opion>  
                                          <%
                                        } 
                                    %>
                                </select>
                            </td>    
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
               </tr>
               <tr>
                    <td colspan="2" style="text-align: center;"><input type="reset" value="Clear" onclick="Clear"/></td>
               </tr>
               <tr>
                    <td colspan="2" style="text-align: center;"><a href="index.xhtml">Home</a></td>
               </tr>
            </table>
        </form> 
    </body>
</html>

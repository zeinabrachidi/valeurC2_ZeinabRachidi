<%-- 
    Document   : addMedicalAct
    Created on : Nov 3, 2018, 10:32:49 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add Medical Act</h1>
        <h1 style="text-align: center; color: red;">WELCOME TO MiRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="insertMedicalAct.jsp" method="post" onsubmit="return checkForm(this);">
            <table align="center">
                <%
                        Class.forName("com.mysql.jdbc.Driver"); 
                        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
                        Statement st= con.createStatement(); 
                %>  
                <tr>
                    <td>Medical Act Date</td>
                    <td><input type="text" name="medicalActDate"/></td>    
                </tr>
                <tr>
                    <td>Medical Act Time</td>
                    <td><input type="text" name="medicalactTime"/></td>    
                </tr>
                <tr>
                    <td>Medical Act Description</td>
                    <td><input type="text" name="medicalactDesc"/></td>    
                </tr>
                <tr>
                    <td>Id Medical Card</td>
                            <td><select id="chooseCard" name="chooseCard">                           
                                    <option value="0">Select City</option>
                                    <%
                                       String query = "SELECT valeurc2.medicalcard.idmedicaCard, concat(valeurc2.person.firstName, ' ', valeurc2.person.lastName) as fullName FROM valeurc2.medicalcard, valeurc2.patient, valeurc2.person where valeurc2.medicalcard.IdPersonPat = valeurc2.patient.IdPerson and valeurc2.patient.IdPerson = valeurc2.person.IdPerson;"; 
                                       ResultSet rs = st.executeQuery(query); 
                                       while (rs.next())
                                       { %>
                                           <option value="<%=rs.getInt("idmedicaCard") %>" 
                                                          ><%=rs.getString("fullName")%>
                                           </opion>  
                                         <%
                                       }      
                                   %>
                                </select>
                            </td>    
                </tr>
                <tr>
                    <td>Medical Act Type</td>
                            <td><select id="chooseType" name="chooseType">  
                                    <option value="0">Select</opion>    
                                    <option value="1">Consultation</opion>
                                    <option value="2">Hospitalization</opion>  
                                </select>
                       
                    </td>    
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
               </tr>
               <tr>
                    <td colspan="2" style="text-align: center;"><input type="reset" value="Clear" onclick="Clear"/></td>
               </tr>
            </table>
        </form>     

<a href="index.xhtml">Home</a>
</body>
</html>

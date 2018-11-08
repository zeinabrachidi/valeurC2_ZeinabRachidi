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
                    <td><input type="textArea" name="medicalactDesc" maxLength="300" rows="5" cols="60"/></td>    
                </tr>
                <tr>
                    <td>Id Medical Card</td>
                            <td><select id="chooseCard" name="chooseCard">                           
                                    <option value="0">Select Medical Card</option>
                                    <%
                                       String query = "SELECT valeurc2.medicalcard.idmedicaCard, valeurc2.q_patient.Peron_Data FROM valeurc2.medicalcard, valeurc2.q_patient where valeurc2.medicalcard.IdPersonPat = valeurc2.q_patient.IdPerson;"; 
                                       ResultSet rs = st.executeQuery(query); 
                                       while (rs.next())
                                       { %>
                                           <option value="<%=rs.getInt("idmedicaCard") %>" 
                                                          ><%=rs.getString("Peron_Data")%>
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

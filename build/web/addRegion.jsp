<%-- 
    Document   : addRegion
    Created on : Oct 20, 2018, 7:43:55 PM
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
        <h1>Add Region</h1>
        <h1 style="text-align: center; color: red;">WELCOME TO MiRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="insertRegion.jsp" method="post" onsubmit="return checkForm(this);">
            <table align="center">
                <%
                        Class.forName("com.mysql.jdbc.Driver"); 
                        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
                        Statement st= con.createStatement(); 
                %>  
                <tr>
                    <td>Region Name</td>
                    <td><input type="text" name="regionName"/></td>    
                </tr>
                <tr>
                    <td>Id City</td>
                            <td><select id="choose" name="choose">                           
                                    <option value="0">Select City</option>
                                    <%
                                       String query = "SELECT * FROM valeurc2.city;";
                                       ResultSet rs = st.executeQuery(query); 
                                       while (rs.next())
                                       { %>
                                           <option value="<%=rs.getInt("idcity") %>" 
                                                          ><%=rs.getString("cityName")%>
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
            </table>
        </form>     

<a href="index.xhtml">Home</a>
</body>
</html>

<%-- 
    Document   : addStreet
    Created on : Oct 21, 2018, 11:26:16 AM
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
        <h1>Add Street</h1>
        <h1 style="text-align: center; color: red;">WELCOME TO MiRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="insertStreet.jsp" method="post" >
            <table align="center">
                <%
                         Class.forName("com.mysql.jdbc.Driver"); 
                         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
                        Statement st= con.createStatement(); 
                        ResultSet rs;
                %>  
                <tr>
                    <td>Street Name</td>
                    <td><input type="text" name="streetName"/></td>    
                </tr>
                <tr>
                    <td>Id Region</td>
                            <td><select id="choose" name="chooseRegion">                           
                                    <option value="0">Select Region</option>
                                    <%
                                    try
                                    {  String query = "SELECT valeurc2.region.idRegion, concat(valeurc2.city.cityName, ' ', valeurc2.region.regionName) as Region_Name FROM valeurc2.city, valeurc2.region where valeurc2.city.idcity = valeurc2.region.idcity;"; 
                                       rs = st.executeQuery(query); 
                                       while (rs.next())
                                       { %>
                                           <option value="<%=rs.getInt("idRegion") %>" 
                                                          ><%=rs.getString("Region_Name")%>
                                           </opion>  
                                         <%
                                       }      
                                    } 
                                    catch (Exception ex) 
                                    { ex.printStackTrace();
                                      out.println("error " + ex.getMessage());
                                    }
                                   %>
                                </select>
                            </td>    
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
               </tr>
            </table>
        </form>     
<a href="index.xhtml">Home</a>
    </body>
</html>

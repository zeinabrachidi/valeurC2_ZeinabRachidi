<%-- 
    Document   : patient
    Created on : Oct 23, 2018, 9:57:18 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="" method="post" onsubmit="return checkForm(this);">
        <table>
            
            <%
                Class.forName("com.mysql.jdbc.Driver"); 
                java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
                Statement st=con.createStatement();
                ResultSet rs; 
                
                int idPerson = Integer.parseInt(request.getParameter("idPerson"));
                out.println("idPerson=" + idPerson);
                
                int ssn = Integer.parseInt(request.getParameter("ssn"));
                String registerNo =request.getParameter("registerNo");
                
                String dob_s = request.getParameter("dob");
                java.util.Date dob = new SimpleDateFormat("dd/MM/yyyy").parse(dob_s);
                java.sql.Date sqlDate = new java.sql.Date(dob.getTime());
                
                String bloodGrp = request.getParameter("bloodGrp");
                try{
                    int choosenNationality=0;
                    int choosenRegion =0;
                    if (request.getParameter("chooseNationality") !=null)
                        choosenNationality = Integer.parseInt(request.getParameter("chooseNationality"));
                    if (request.getParameter("chooseRegion") != null)
                        choosenRegion = Integer.parseInt(request.getParameter("chooseRegion"));
                    if (idPerson != 0 && ssn!= 0)
                    {  int i=st.executeUpdate("INSERT INTO `valeurc2`.`patient` (`idPerson`, `ssn`, `registerNo`, `dob`, `bloodGrp`, `idNationality`, `idRegion`) VALUES ( '"+ idPerson +"', '"+ ssn +"', '"+ registerNo +"', '"+ sqlDate +"', '"+ bloodGrp +"', '"+ choosenNationality +"', '"+ choosenRegion +"'); "); }
                    out.println(" Patient Registered"); 
                } 
                catch(Exception e){
                    System.out.print(e);
                    e.printStackTrace();
                }
             %>
            
            <tr>
                <td> Id Person no</td>
                   <td><%=(idPerson)%></td> 
            </tr>
            <tr>
                <td>Social Security no</td>
                <td><input type="text" name="ssn"/></td>    
            </tr>
            <tr>
                <td>register No</td>
                <td><input type="text" name="registerNo"/></td>    
            </tr>
            <tr>
                <td>Date Of Birth</td>
                <td><input type="date"  name="dob"/></td>    
            </tr>
            <tr>
                <td>Blood Group</td>
                <td><input type="text" name="bloodGrp"/></td>    
            </tr>
            <tr>
                <td>Id Nationality</td>
                <td><select id="chooseNationality" name="chooseNationality">                           
                       <option value="0">Select Nationality</option>
                           <%
                                try
                                {                                 
                                    rs = st.executeQuery("SELECT * FROM valeurc2.Nationality;"); 
                                    while (rs.next())
                                    { %>
                                        <option value="<%=rs.getInt("idNationality") %>" 
                                                      ><%=rs.getString("nationalityName")%>
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
                <td><a href="addNationality .jsp">Add Nationality </a></td>
            </tr>
            <tr>
                <td>Id Region</td>
                <td><select id="choose" name="chooseRegion">                           
                    <option value="0">Select Region</option>
                        <%
                          try
                          { String query = "SELECT valeurc2.region.idRegion, concat(valeurc2.city.cityName, ' ', valeurc2.region.regionName) as Region_Name FROM valeurc2.city, valeurc2.region where valeurc2.city.idcity = valeurc2.region.idcity;";
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
                <td><a href="addRegion.jsp">Add Region </a></td>
            </tr>  
            <tr>
                <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
            </tr>
        </table>
        </form>            
    </body>
</html>

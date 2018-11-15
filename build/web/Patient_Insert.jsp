<%-- 
    Document   : Patient_Insert
    Created on : Nov 15, 2018, 8:52:45 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>
<%@page import="MiriamCenter.DB_Connection"%>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Register</h1>
        <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="Patient_Controller_Insert.jsp" method="post" onsubmit="return checkForm(this);">
            <table align="center">
                <%
                    DB_Connection obj_DB_Con =new DB_Connection();
                    Connection con=obj_DB_Con.get_connection();
                    Statement st=con.createStatement();
                    ResultSet rs;
                    int idPerson = Integer.parseInt(request.getParameter("idPerson"));
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
                          { String query = "SELECT * FROM valeurc2.q_region;";
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
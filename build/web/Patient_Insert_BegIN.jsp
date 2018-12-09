<%-- 
    Document   : Patient_Insert_BegIN
    Created on : Dec 2, 2018, 10:15:03 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>
<%@page import="MiriamCenter.Doctor_Insert"%>
<%@page import="MiriamCenter.DB_Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="Patient_Insert_BegIN_Controller.jsp" method="post" onChange="document.Patient_Insert_BegIN.submit()"  onsubmit="return checkForm(this);">
            <%
               DB_Connection obj_con =new DB_Connection();
		Connection con=obj_con.get_connection();   
                ResultSet rs;
                con.setAutoCommit(true);
                int r = -1;
                PreparedStatement ps;  
                Statement st=con.createStatement();
            %>
        <table>
            <tr>
                <td>Choose Your Person Id</td>
                <td><select id="chooseIdPerson" name="chooseIdPerson">                           
                        <option value="0">Select Person Id</option>
                        <%
                            try
                               {  String query = "SELECT * FROM valeurc2.q_patient_choose;";
                                  rs = st.executeQuery(query); 
                                  while (rs.next())
                                  { int idPerson = rs.getInt("idPerson") ;
                                    String Person_Data = rs.getString("Person_Data");
                                    String personTypeDesc = rs.getString("personTypeDesc");
                                    boolean accepted = rs.getBoolean("accepted");
                                    if (idPerson != 1)
                                    { 
                                        %>
                                            <option value="<%=(idPerson)%>" 
                                                          ><%=(Person_Data)%>
                                                           <%=(personTypeDesc)%>
                                                           <%=(accepted)%>
                                            </opion>  
                                        <%
                                    }    
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
                <td>Social Security no</td>
                <td><input type="text" name="ssn"/></td>    
            </tr>
            <tr>
                <td>register No</td>
                <td><input type="text" name="registerNo"/></td>    
            </tr>
             <tr>
                <td>Date Of Birth</td>
                <td><input type="text" name="dob"/></td>    
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
                                    rs = st.executeQuery("SELECT * FROM valeurc2.nationality;"); 
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
                <td><a href="addNationality.jsp">Add Nationality </a></td>
            </tr>
            
            <tr>
                <td>Id Region</td>
                <td><select id="chooseRegion" name="chooseRegion">                           
                       <option value="0">Select Region</option>
                           <%
                                try
                                {                                 
                                    rs = st.executeQuery("SELECT * FROM valeurc2.q_region;"); 
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
            <tr>
                    <td colspan="2" style="text-align: center;"><a href="index.xhtml" style="text-align: center;">Home</a></td>
            </tr>
    </table>
        </form>     
    </body>
</html>


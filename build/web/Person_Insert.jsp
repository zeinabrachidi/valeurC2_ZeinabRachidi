<%-- 
    Document   : Person_Insert
    Created on : Nov 13, 2018, 9:04:34 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>
<%@page import="MiriamCenter.DB_Connection"%>


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
        <form action="Person_Controller_Insert.jsp" method="post" onsubmit="return checkForm(this);">
            <table align="center">
                <%
                    DB_Connection obj_DB_Con =new DB_Connection();
                    Connection con=obj_DB_Con.get_connection();
                    Statement st=con.createStatement();
                    ResultSet rs;
                %>  
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="firstName"/></td>    
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lastName"/></td>    
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="text" name="gender"/>
                    </td>    
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td><input type="text" name="mobile"/></td>    
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="e_mail"/></td>    
                </tr>
                <tr>
                    <td>Id Profession</td>
                    <td><select id="chooseProfession" name="chooseProfession">                           
                            <option value="0">Select Profession</option>
                            <%
                              try
                                { String query = "SELECT * FROM valeurc2.profession;";
                                  rs = st.executeQuery(query); 
                                  while (rs.next())
                                  { %>
                                      <option value="<%=rs.getInt("idProfession") %>" 
                                                   ><%=rs.getString("ProfessionName")%>
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
                    <td><a href="addProfession.jsp">Add Profession</a></td>
                </tr>
                <tr>
                    <td>Id Street</td>
                            <td><select id="chooseStreet" name="chooseStreet">                           
                                    <option value="0">Select Street</option>
                                    <%
                                    try
                                    {  String query = "SELECT * FROM valeurc2.q_street;";
                                       rs = st.executeQuery(query); 
                                       while (rs.next())
                                       { %>
                                           <option value="<%=rs.getInt("idStreet") %>" 
                                                          ><%=rs.getString("Street_Name")%>
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
                            <td><a href="addStreet.jsp">Add Street</a></td>
                </tr> 
                <tr>
                    <td>User Name</td>
                    <td><input title="Username must not be blank and contain only letters, numbers and underscores." type="text" pattern="\w+" name="username"/></td>    
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input title="Password must contain at least 6 characters, including UPPER/lowercase and numbers." type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="password"/></td>    
                </tr>
                <tr>
                    <td>Choose Person Type</td>
                    <td><select id="choosePersonType" name="choosePersonType">                           
                            <option value="0">Select Person Type</option>
                            <%
                              try
                               {  String query = "SELECT * FROM valeurc2.persontype;";
                                  rs = st.executeQuery(query); 
                                  while (rs.next())
                                  { int idType = rs.getInt("idpersonType") ;
                                    String TypeDesc = rs.getString("personTypeDesc");
                                    if (idType != 1)
                                    { 
                                        %>
                                            <option value="<%=(idType)%>" 
                                                          ><%=(TypeDesc)%>
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
                    <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
               </tr>
               <tr>
                   <td colspan="2" style="text-align: center;"> <a href="index.xhtml">Home</a><br/><br/></td>
               </tr>
            </table>
        </form>         
</body>
</html>


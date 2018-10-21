<%-- 
    Document   : reg1
    Created on : Oct 18, 2018, 12:47:40 PM
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
        <h1>Register</h1>
        <form action="reg1.jsp" method="post" onsubmit="return checkForm(this);">
            <table>
                <%
                         Class.forName("com.mysql.jdbc.Driver"); 
                         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
                         int choosenStreet = 0;
                         int choosenProfession = 0;
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
                    <td><input type="text" name="gender"/></td>    
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td><input type="text" name="mobile"/></td>    
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="e_mail"/></td>    
                </tr>
                <tr>
                    <td>Id Profession</td>
                    <td><select id="chooseProfession" name="chooseProfession">                           
                            <option value="0">Select Profession</option>
                            <%
                              try
                                { String query = "SELECT * FROM valeurc2.profession;";
                                    
                                  Statement st= con.createStatement(); 
                                  ResultSet rs = st.executeQuery(query); 
                                  while (rs.next())
                                  { %>
                                      <option value="<%=rs.getInt("idProfession") %>" 
                                                   ><%=rs.getString("Profession_Name")%>
                                      </opion>  
                                    <%
                                  }      
                                  choosenProfession = Integer.parseInt(request.getParameter("chooseProfession"));
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
                    <td>Id Street</td>
                            <td><select id="chooseStreet" name="chooseStreet">                           
                                    <option value="0">Select Street</option>
                                    <%
                                    try
                                    {  String query = "SELECT valeurc2.region.idRegion, concat(valeurc2.city.cityName, '  ', valeurc2.region.regionName, '  ', valeurc2.street.streetName) as Street_Name"
                                                       + " FROM valeurc2.city, valeurc2.region, valeurc2.street"
                                                       + " where valeurc2.city.idcity = valeurc2.region.idcity and valeurc2.region.idRegion=valeurc2.street.idRegion;";
                                    
                                       Statement st= con.createStatement(); 
                                       ResultSet rs = st.executeQuery(query); 
                                       while (rs.next())
                                       { %>
                                           <option value="<%=rs.getInt("idStreet") %>" 
                                                          ><%=rs.getString("Street_Name")%>
                                           </opion>  
                                         <%
                                       }      
                                       choosenStreet = Integer.parseInt(request.getParameter("chooseStreet"));
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
                    <td>User Name</td>
                    <td><input title="Username must not be blank and contain only letters, numbers and underscores." type="text" pattern="\w+" name="userName"/></td>    
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input title="Password must contain at least 6 characters, including UPPER/lowercase and numbers." type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="password"/></td>    
                </tr>
                
                <%
                    Statement stp= con.createStatement(); 
                    ResultSet rs; 
                    
                    String firstName= request.getParameter("firstName");
                    String lastName = request.getParameter("lastName");
                    String gender =request.getParameter("gender");
                    String mobile = request.getParameter("mobile");
                    String e_mail = request.getParameter("e_mail");
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    int i=stp.executeUpdate("INSERT INTO `valeurc2`.`person` (`firstName`, `lastName`, `gender`, `mobile`, `e_mail`, `idProfession`, `idStreet`, `username`, `password`) VALUES ( '"+ firstName +"', '"+ lastName +"', '"+ gender +"', '"+ mobile +"', '"+ e_mail +"', '"+ choosenProfession +"', '"+ choosenStreet +"', '"+ username +"', '"+ password +"'); ");
                    out.println("Registered"); 
                %>   
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
               </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="reset" value="Clear" name="clear" onclick="Clear"/></td>
               </tr>
            </table>
        </form>       

<a href ="login.xhtml">Login</a><br/><br/>
<a href="index.xhtml">Home</a>
</body>
</html>
<%-- 
    Document   : login
    Created on : Oct 18, 2018, 1:33:18 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@page import="MiriamCenter.DB_Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center;">Login</h1>
        <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="Login_Controller.jsp" method="post">
          <table border="1" align="center">
                <%
                    DB_Connection obj_DB_Con =new DB_Connection();
                    Connection con=obj_DB_Con.get_connection();

                    Statement st=con.createStatement();
                    ResultSet rs; 

                %>         
                <tr>
                    <td> User name </td>
                    <td><input type="text" name="username"/></td> 
                       
                </tr>
                <tr>
                    <td> Password </td>
                    <td><input type="password" name="password" /></td> 
                       
                </tr>
                
                <tr>
                    <td>User Type</td>
                    <td><select id="choose" name="chooseType">                           
                        <option value="0">Select User Type</option>
                        <%
                            String query = "SELECT * FROM valeurc2.persontype;";
                            rs = st.executeQuery(query); 
                            while (rs.next())
                            { %>
                                <option value="<%=rs.getInt("idpersonType") %>" 
                                                ><%=rs.getString("personTypeDesc")%>
                                </opion>  
                                <%
                            }      
                        %>
                        </select>
                    </td>    
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="Login" onclick="Submit"/></td>
               </tr>
               <tr>
                   <td colspan="2" style="text-align: center;"> <a href="index.xhtml">Home</a><br/><br/></td>
               </tr>
            </table>
        </form>          
    </body>
</html>

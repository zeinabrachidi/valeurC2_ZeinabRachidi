<%-- 
    Document   : login
    Created on : Oct 18, 2018, 1:33:18 PM
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
        <h1>Login</h1>
        <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="login.jsp" method="post">
          <table border="1" align="center">
                <%
                         Class.forName("com.mysql.jdbc.Driver"); 
                         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
                %>         
                <tr>
                    <td> User name </td>
                    <td><input type="text" name="username"/></td> 
                       
                </tr>
                <tr>
                    <td> Password </td>
                    <td><input type="password" name="password" /></td> 
                       
                </tr>
                <%
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    String query = "select * from person where username='"+ username+"'";
                    Statement st= con.createStatement(); 
                    ResultSet rs = st.executeQuery(query); 
                    if(rs.next()) 
                    { 
                        if(rs.getString(10).equals(password)) 
                        { out.println("welcome "+ username);  } 
                        else 
                        { out.println("Invalid password try again"); } 
                    } 
                    else
                    { out.println("Invalid usernme"); } 
                %>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
               </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="reset" value="Clear" name="clear" onclick="Clear"/></td>
               </tr>
            </table>
        </form>          
            <a href="index.xhtml">Home</a>
    </body>
</html>

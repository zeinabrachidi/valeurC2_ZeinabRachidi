<%-- 
    Document   : addProfession
    Created on : Oct 21, 2018, 3:17:44 PM
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
    <h:body>
        <h1 style="text-align: center; color: red;">WELCOME TO MiRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="" method="post" onsubmit="return checkForm(this);">
            <table border="1" align="center">
                <%
                         Class.forName("com.mysql.jdbc.Driver"); 
                         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
                %>         
                <tr>
                    <td>Profession Name</td>
                    <td><input type="text" name="professionName"/></td> 
                       <%
                         Statement st= con.createStatement(); 
                         ResultSet rs; 
                         String professionName = request.getParameter("professionName");
                         if (professionName != null)
                         {  int i=st.executeUpdate("INSERT INTO `valeurc2`.`profession` (`professionName`) VALUES ( '"+ professionName+"'); "); }
                       %>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
               </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="reset" value="Clear" name="clear" onclick="Clear"/></td>
               </tr>
            </table>
        </form>    
        <a href="index.xhtml">Home</a>                
    </h:body>
</html>

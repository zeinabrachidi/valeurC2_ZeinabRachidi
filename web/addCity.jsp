<%-- 
    Document   : addCity
    Created on : Oct 19, 2018, 10:13:06 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html>
<html>
    <h:head>
        <title>The Miriyam Center</title>
    </h:head>
    <h:body>
        <h1 style="text-align: center; color: red;">WELCOME TO MiRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="" method="post" onsubmit="return checkForm(this);">
            <table>
                <%
                         Class.forName("com.mysql.jdbc.Driver"); 
                         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
                %>         
                <tr>
                    <td>City Name</td>
                    <td><input type="text" name="cityName"/></td> 
                       <%
                         Statement st= con.createStatement(); 
                         ResultSet rs; 
                         String cityName = request.getParameter("cityName");
                         int i=st.executeUpdate("INSERT INTO `valeurc2`.`city` (`cityName`) VALUES ( '"+cityName+"'); ");
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
    </h:body>




<a href="index.xhtml">Home</a>
</body>
</html>

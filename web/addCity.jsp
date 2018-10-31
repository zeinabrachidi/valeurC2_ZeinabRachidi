<%-- 
    Document   : addCity
    Created on : Oct 19, 2018, 10:13:06 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <h:head>
        <title>The Miriyam Center</title>
    </h:head>
    <h:body>
        <h1 style="text-align: center; color: red;">WELCOME TO MiRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="insertCity.jsp" method="post" onsubmit="return checkForm(this);">
            <table align="center">  
                <tr>
                    <td>City Name</td>
                    <td><input type="text" name="cityName"/></td> 
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
               </tr>
            </table>
        </form>    
        <a href="index.xhtml">Home</a>                
    </h:body>
</html>

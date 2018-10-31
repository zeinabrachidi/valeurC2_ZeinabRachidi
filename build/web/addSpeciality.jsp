<%-- 
    Document   : addSpeciality
    Created on : Oct 23, 2018, 11:25:45 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center; color: red;">WELCOME TO MiRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="insertSpeciality.jsp" method="post" onsubmit="return checkForm(this);">
            <table align="center">       
                <tr>
                    <td>Speciality Name</td>
                    <td><input type="text" name="specialityDesc"/></td> 
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
               </tr>
            </table>
        </form>    
        <a href="index.xhtml">Home</a>  
    </body>
</html>

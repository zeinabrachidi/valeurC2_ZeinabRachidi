<%-- 
    Document   : addCivilStatus
    Created on : Oct 29, 2018, 9:06:20 PM
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
        <form action="" method="post" onsubmit="return checkForm(this);">
            <table align="center">
                       
                <tr>
                    <td>Civil Status Name</td>
                    <td><input type="text" name="civilstatusDesc"/></td> 
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
               </tr>
               
               <tr>
                    <td colspan="2" style="text-align: center;"><a href="Admin_Login.jsp" style="text-align: center;">Administrator Page</a></td>
               </tr>
               <tr>
                    <td colspan="2" style="text-align: center;"><a href="index.xhtml">Home</a></td>
               </tr>
               
            </table>
        </form>    
        
    </body>
</html>

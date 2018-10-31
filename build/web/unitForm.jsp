<%-- 
    Document   : unitForm
    Created on : Oct 30, 2018, 8:44:24 PM
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
        <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="unitReg" method="post" onsubmit="return checkForm(this);">
            <table align="center">
                
                <tr>
                    <td>Id unit </td>
                    <td><input type="text" name="idUnit"/></td> 
                </tr>
                <tr>
                    <td>unit Description</td>
                    <td><input type="text" name="unitDesc"/></td> 
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
               </tr>
               <tr>
                    <td colspan="2" style="text-align: center;"><a href="index.xhtml">Home</a></td>
               </tr>
            </table>
        </form>    
    </body>
</html>

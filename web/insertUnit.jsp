<%-- 
    Document   : insertUnit
    Created on : Nov 9, 2018, 9:07:13 AM
    Author     : zeina
--%>

<%@page import="java.util.Iterator"%>
<%@page import="MiriamCenter.Unit_bean"%>
<%@page import="java.util.List"%>
<%@page import="MiriamCenter.ReadUnit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <center>

    <h1>Insert Values</h1>
    <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
    <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>

        <form action="Unit_Controller.jsp" method="post" onsubmit="return checkForm(this);">
            <table align="center">
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
    </center>
</body>
</html>
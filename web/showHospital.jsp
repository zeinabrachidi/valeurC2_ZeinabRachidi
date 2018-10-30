<%-- 
    Document   : showHospital
    Created on : Oct 29, 2018, 10:09:00 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="javax.sql.*" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body
            { background-color:aliceblue;            }
            
            caption
            {   color: blue;
                text-align: center;
                background-color: white;
                font-size: x-large;
            }
            th 
            {   color: blue;
                text-align: center;
                background-color: white;
                font-size: large;
            }
            tr 
            {   text-align: left;
                background-color: white;
                font-size: large;
            }
        </style>
    </head>
    <body>
        <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="" method="post">
            <table align="center" font-size="large" border="1">
                <caption>Hospital Information</caption>
                <%
                         Class.forName("com.mysql.jdbc.Driver"); 
                         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
                         Statement st= con.createStatement(); 
                         ResultSet rs; 
                %>         
                <tr>
                    <th>Id Hospital</th>
                    <th>Hospital Name</th>
                    <th>Update</th>
                    <th>Delete</th>
                       <%
                            rs =st.executeQuery("select * from hospital");
                             while (rs.next()) {
                            %>    
                                <tr>
                                     <td><%=rs.getInt("idHospital") %></td>
                                     <td><%=rs.getString("hospitalName") %></td>
                                     <td> <a href="updateHospital.jsp?idHospital=<%=rs.getInt("idHospital") %>">Update</a></td>
                                     <td> <a href="deleteHospital.jsp?idHospital=<%=rs.getInt("idHospital") %>">Delete</a></td>

                                </tr>  
                            <%   
                            }
                       %>
                </tr><br/>
               <tr>
                    <td colspan="4" style="text-align: center; font-size: x-large;"><a href="index.xhtml">Home</a></td>
               </tr>
            </table><br/><br/>
        </form>
    </body>
</html>

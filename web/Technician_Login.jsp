<%-- 
    Document   : Technician_Login
    Created on : Nov 24, 2018, 6:44:29 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{
                margin: 0px;
                padding: 0px;
            }
            body
            { background-color:aliceblue;            }
            h1 
            {   color: white;
                text-align: center;
                background-color: white;
            }
            p 
            {  font-family: verdana;
               font-size: 20px;
            }
            #container ul 
            {  list-style: none;  }
            #container ul li
            {  background-color: aqua ;
               width: 220px;
               border: 1px solid white;
               height: 28px;
               line-height: 28px;
               text-align: left;
               float: left;
               color: red;
               font-size: 18px;
               position: relative;
            }
            #container ul li:hover
            { background-color: chartreuse  }
            #container ul ul
            { display: none;      }
            #container ul li:hover > ul
            { display: block;     }
            #container ul ul 
            { margin-left: 0px;
              top:0px;
              position:relative;
            }  
            #container ul ul ul
            { margin-left: 180px;
              top:0px;
              position :absolute;
            }  
        </style>
    </head>
    <body>
        <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1><br></br>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="" method="post" onsubmit="return checkForm(this);">
            <%
                    DB_Connection obj_DB_Con =new DB_Connection();
                    Connection con=obj_DB_Con.get_connection();

                    Statement st=con.createStatement();
                    ResultSet rs; 
                    
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
             %>   
            <table align="center">
        <div id="container">
            <ul>
                <li colspan="2" style="text-align: center;"> <a href="index.xhtml">Home</a></li>
                <li> Technician
                    <ul>
                        <li>Test Lab</li>
                        <li><a href="Person_Read_Own.jsp?username=<%=username%>&password=<%=password%>">Manage Own Registration</a></li> 
                            <li><a href="AcceptPersons_Read_Own.jsp?username=<%=username%>&password=<%=password%>">Show Registration Type</a></li>
                    </ul>
                </li>  
            </ul> 
        </div>
        <tr>
             <td colspan="2" style="text-align: center;"> <a href="index.xhtml">Home</a><br/><br/></td>
        </tr> 
        </table>
</form>
    </body>
</html>

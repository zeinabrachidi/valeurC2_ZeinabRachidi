<%-- 
    Document   : Technician_Login
    Created on : Nov 18, 2018, 9:11:54 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
               width: 180px;
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
        <div id="container">
            <ul>
                <li> Technician
                    <ul>
                        <li>Test Lab</li>
                        <li>Add Patient Type</li>
                    </ul>
                </li>

                             
            </ul> 
            
        </div>
    </body>
</html>
<script type="text/javascript">
 window.location.href="login.jsp";
</script>
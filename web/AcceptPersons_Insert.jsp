<%-- 
    Document   : AcceptPersons_Insert
    Created on : Nov 23, 2018, 8:44:53 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>
<%@page import="MiriamCenter.DB_Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add Registeration Type </h1>
        <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="AcceptPersons_Insert_Controller.jsp" method="post" onsubmit="return checkForm(this);">
            <table align="center">
                <%
                    DB_Connection obj_DB_Con =new DB_Connection();
                    Connection con=obj_DB_Con.get_connection();
                    Statement st=con.createStatement();
                    ResultSet rs;
                %> 
                
                <tr>
                    <td>Choose Your Person Id</td>
                    <td><select id="chooseIdPerson" name="chooseIdPerson">                           
                            <option value="0">Select Person Id</option>
                            <%
                              try
                               {  String query = "SELECT * FROM valeurc2.q_persons;";
                                  rs = st.executeQuery(query); 
                                  while (rs.next())
                                  { int idPerson = rs.getInt("idPerson") ;
                                    String Person_Data = rs.getString("Person_Data");
                                    if (idPerson != 1)
                                    { 
                                        %>
                                            <option value="<%=(idPerson)%>" 
                                                          ><%=(Person_Data)%>
                                            </opion>  
                                        <%
                                    }    
                                  }       
                                 } 
                                  catch (Exception ex) 
                                  { ex.printStackTrace();
                                    out.println("error " + ex.getMessage());
                                  }
                            %>
                        </select>
                    </td>  
                </tr>
                <tr>
                    <td>Choose Person Type</td>
                    <td><select id="choosePersonType" name="choosePersonType">                           
                            <option value="0">Select Person Type</option>
                            <%
                              try
                               {  String query = "SELECT * FROM valeurc2.persontype;";
                                  rs = st.executeQuery(query); 
                                  while (rs.next())
                                  { int idpersonType = rs.getInt("idpersonType") ;
                                    String personTypeDesc = rs.getString("personTypeDesc");
                                    if (idpersonType != 1)
                                    { 
                                        %>
                                            <option value="<%=(idpersonType)%>" 
                                                          ><%=(personTypeDesc)%>
                                            </opion>  
                                        <%
                                    }    
                                  }       
                                 } 
                                  catch (Exception ex) 
                                  { ex.printStackTrace();
                                    out.println("error " + ex.getMessage());
                                  }
                            %>
                        </select>
                    </td>  
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
               </tr>
               <tr>
                   <td colspan="2" style="text-align: center;"> <a href="index.xhtml">Home</a><br/><br/></td>
               </tr>
    </body>
</html>

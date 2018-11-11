<%-- 
    Document   : Consultation_Insert
    Created on : Nov 11, 2018, 10:55:37 AM
    Author     : zeina
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="MiriamCenter.Consultation_Bean"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page import ="javax.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="Consultation_Controller_Insert.jsp" method="post" onsubmit="return checkForm(this);">
        <table align="center">
            <%
                DB_Connection obj_DB_Con =new DB_Connection();
                Connection con=obj_DB_Con.get_connection();
		
		Statement st=con.createStatement();
		ResultSet rs;
                
                int idMedicalAct = Integer.parseInt(request.getParameter("idMedicalAct"));

             %>
            
            <tr>
                <td> Id Medical Act</td>
                   <td><%=(idMedicalAct)%></td> 
            </tr>
            <tr>
                <td>Id Doctor</td>
                <td><select id="chooseDoctor" name="chooseDoctor">                           
                       <option value="0">Select Doctor</option>
                           <%
                                try
                                {                                 
                                    rs = st.executeQuery("SELECT * FROM valeurc2.q_doctors;"); 
                                    while (rs.next())
                                    { %>
                                        <option value="<%=rs.getInt("idPerson") %>" 
                                                      ><%=rs.getString("Doctor_Data")%>
                                        </opion>  
                                      <%
                                    }      
                                } 
                                catch (Exception ex) 
                                { ex.printStackTrace();
                                  out.println("error " + ex.getMessage());
                                }
                            %>
                    </select>
                </td>  
                <td><a href="reg1.jsp">Add Doctor </a></td>
            </tr>
            <tr>
                <td> Montant</td>
                <td><input type="text" name="montant"/></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
            </tr>
        </table>
        <table id="hideDesease"  name=hideDisease"  border="1" style="display: none"   >  
            <tr>
                <td>Id Medical Act</td>
                <td>Id Disease</td>
                <td>Disease Name</td> 
            </tr>
            <tr>
                <td><%=(idMedicalAct)%></td>
                <td>Id Disease</td>
                <td><select id="chooseDisease" name="chooseDisease">                           
                       <option value="0">Select Disease</option>
                           <%
                                try
                                {                                 
                                    rs = st.executeQuery("SELECT * FROM valeurc2.Diseases;"); 
                                    int choosenDisease = 0;
                                    while (rs.next())
                                    { %>
                                        <option value="<%=rs.getInt("iddisease") %>" 
                                                      ><%=rs.getString("diseaseName")%>
                                        </opion>  
                                      <%
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
        </table>

        </form>
   <<a href="index.xhtml" style="text-align: center;">Home</a>                 
    </body>
</html>


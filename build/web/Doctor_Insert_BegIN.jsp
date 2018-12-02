<%-- 
    Document   : Doctor_Insert_BegIN
    Created on : Dec 2, 2018, 7:32:16 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>
<%@page import="MiriamCenter.Doctor_Insert"%>
<%@page import="MiriamCenter.DB_Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="Doctor_Insert_BegIN_Controller.jsp" method="post" onsubmit="return checkForm(this);">
            <%
               DB_Connection obj_con =new DB_Connection();
		Connection con=obj_con.get_connection();   
                ResultSet rs;
                con.setAutoCommit(true);
                int r = -1;
                PreparedStatement ps;  
                Statement st=con.createStatement();
            %>
        <table>
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
                <td>Syndicat no</td>
                <td><input type="text" name="syndicat_no"/></td>    
            </tr>
            <tr>
                <td>Id Speciality</td>
                <td><select id="chooseSpeciality" name="chooseSpeciality">                           
                       <option value="0">Select Speciality</option>
                           <%
                                try
                                {                                 
                                    rs = st.executeQuery("SELECT * FROM valeurc2.Speciality;"); 
                                    while (rs.next())
                                    { %>
                                        <option value="<%=rs.getInt("idSpeciality") %>" 
                                                      ><%=rs.getString("specialityDesc")%>
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
                <td><a href="addSpeciality.jsp">Add Speciality </a></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
            </tr>
            <tr>
                    <td colspan="2" style="text-align: center;"><a href="index.xhtml" style="text-align: center;">Home</a></td>
            </tr>
            
    </table>
        </form>     
    </body>
</html>

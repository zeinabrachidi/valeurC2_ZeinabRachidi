<%-- 
    Document   : Doctor_Insert
    Created on : Nov 15, 2018, 8:52:27 PM
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
        <form action="" method="post" onsubmit="return checkForm(this);">
        <table>
            <%
               DB_Connection obj_con =new DB_Connection();
		Connection con=obj_con.get_connection();   
                ResultSet rs;
                con.setAutoCommit(true);
                int r = -1;
                PreparedStatement ps;  
                Statement st=con.createStatement();
                
                int idPerson = Integer.parseInt(request.getParameter("idPerson"));
                String syndicat_no = request.getParameter("syndicat_no");
                int choosenSpeciality = 0;
                if (request.getParameter("chooseSpeciality") != null)
                     choosenSpeciality = Integer.parseInt(request.getParameter("chooseSpeciality"));
                
                 try{             
                     if (idPerson != 0 && syndicat_no!= null)
                    {   Doctor_Insert di = new Doctor_Insert();
                        di.insert_values(idPerson, syndicat_no, choosenSpeciality);
                    }
                out.println(" Doctor Registered"); 
                } 
                catch (Exception ex) 
                { ex.printStackTrace();
                     out.println("error " + ex.getMessage());
                }
 %>
            <tr>
                <td> Id Person no</td>
                <td><%=(idPerson)%></td> 
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
        </table>
        </form>     
    </body>
</html>



<%-- 
    Document   : addHospitalization
    Created on : Nov 4, 2018, 10:16:14 AM
    Author     : zeina
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
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
        <form action="" method="post" onsubmit="return checkForm(this);">
        <table>
            <%
                Class.forName("com.mysql.jdbc.Driver"); 
                java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
                Statement st=con.createStatement();
                ResultSet rs; 
                
                int idMedicalAct = Integer.parseInt(request.getParameter("idMedicalAct"));
                out.println("idMedicalAct=" + idMedicalAct);

                try{
                    int choosenHospital = 0;
                    if (request.getParameter("chooseHospital") != null)
                        choosenHospital = Integer.parseInt(request.getParameter("chooseHospital"));
                    
                    if (idMedicalAct != 0 && choosenHospital != 0)
                    {   int i=st.executeUpdate("INSERT INTO `valeurc2`.`consultation` (`idMedicalAct`, `IdPersonDoc`) VALUES ( '"+ idMedicalAct +"', '"+ choosenHospital +"'); "); 
                        out.println(" Consultation Registered");
                    }    
                }  catch (Exception ex) 
                { ex.printStackTrace();
                    out.println("error " + ex.getMessage());
                }
             %>
            
            <tr>
                <td> Id Medical Act</td>
                   <td><%=(idMedicalAct)%></td> 
            </tr>
            <tr>
                <td>Id Hospital</td>
                <td><select id="chooseHospital" name="chooseHospital">                           
                       <option value="0">Select Hospital</option>
                           <%
                                try
                                {                                 
                                    rs = st.executeQuery("SELECT * FROM valeurc2.hospital;"); 
                                    int choosenHospital = 0;
                                    while (rs.next())
                                    { %>
                                        <option value="<%=rs.getInt("idHospital") %>" 
                                                      ><%=rs.getString("hospitalName")%>
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
                <td><a href="addHospital.jsp">Add Hospital</a></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
            </tr>
        </table>
        </form>     
    </body>
</html>


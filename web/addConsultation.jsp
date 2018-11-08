<%-- 
    Document   : addConsultation
    Created on : Nov 4, 2018, 10:15:42 AM
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
                    int choosenDoctor = 0;
                    if (request.getParameter("chooseDoctor") != null)
                        choosenDoctor = Integer.parseInt(request.getParameter("chooseDoctor"));
                    int montant = Integer.parseInt(request.getParameter("montant"));
                    
                    if (idMedicalAct != 0 && choosenDoctor != 0)
                    {   int i=st.executeUpdate("INSERT INTO `valeurc2`.`consultation` (`idMedicalActCons`, `IdPersonDoc`, `montant`) VALUES ( '"+ idMedicalAct +"', '"+ choosenDoctor +"', '"+ montant +"'); "); 
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
                <td>Id Doctor</td>
                <td><select id="chooseDoctor" name="chooseDoctor">                           
                       <option value="0">Select Doctor</option>
                           <%
                                try
                                {                                 
                                    rs = st.executeQuery("SELECT * FROM valeurc2.q_doctors;"); 
                                    int choosenDoctor = 0;
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
    </body>
</html>

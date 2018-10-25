<%-- 
    Document   : doctor
    Created on : Oct 23, 2018, 9:57:36 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
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
        <form action="doctor.jsp" method="post" onsubmit="return checkForm(this);">
        <table>
            <%
                         Class.forName("com.mysql.jdbc.Driver"); 
                         java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
                         int choosenSpeciality = 0;
            %> 
            
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
                                    Statement st= con.createStatement(); 
                                    ResultSet rs = st.executeQuery("SELECT * FROM valeurc2.Speciality;"); 
                                    while (rs.next())
                                    { %>
                                        <option value="<%=rs.getInt("idSpeciality") %>" 
                                                      ><%=rs.getString("specialityDesc")%>
                                        </opion>  
                                      <%
                                    }      
                                    choosenSpeciality = Integer.parseInt(request.getParameter("chooseSpeciality"));
                                } 
                                catch (Exception ex) 
                                { ex.printStackTrace();
                                  out.println("error " + ex.getMessage());
                                }
                            %>
                    </select>
                </td>  
                <td><a href="addSpeciality .jsp">Add Speciality </a></td>
            </tr>
            <%
                    Statement stp= con.createStatement(); 
                    String idPerson =  request.getParameter("idPerson");
                    out.println("idPerson=" + idPerson);
                    String syndicat_no = request.getParameter("syndicat_no");
                    if (idPerson != null && syndicat_no!= null)
                    {  int i=stp.executeUpdate("INSERT INTO `valeurc2`.`doctor` (`idPerson`, `syndicat_no`, `idSpeciality`) VALUES ( '"+ idPerson +"', '"+ syndicat_no +"', '"+ choosenSpeciality +"'); ");
                        out.println(" Person Registered"); 
                    }
            %>  
            <tr>
                <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
            </tr>
        </table>
        </form>     
    </body>
</html>

<%-- 
    Document   : Doctor_Controller_Insert
    Created on : Nov 15, 2018, 8:53:14 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>
<%@page import="MiriamCenter.Doctor_Insert"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="MiriamCenter.DB_Connection"%>

Doctor_Insert
<!DOCTYPE html>

<%
    Class.forName("com.mysql.jdbc.Driver"); 
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
    Statement st=con.createStatement();
    ResultSet rs; 
                
    int idPerson = Integer.parseInt(request.getParameter("idPerson"));
    out.println("idPerson=" + idPerson);
    String syndicat_no = request.getParameter("syndicat_no");
    int choosenSpeciality = 0;
    if (request.getParameter("chooseSpeciality") != null)
        choosenSpeciality = Integer.parseInt(request.getParameter("chooseSpeciality"));
                
    try{             
        if (idPerson != 0 && syndicat_no!= null)
        {   Doctor_Insert di = new Doctor_Insert();
            di.insert_values(idPerson, syndicat_no, choosenSpeciality);
        }
        } 
        catch (Exception ex) 
        { ex.printStackTrace();
             out.println("error " + ex.getMessage());
        }

 %>
 <script type="text/javascript">
 window.location.href="RegistrationType_Insert.jsp";
</script>

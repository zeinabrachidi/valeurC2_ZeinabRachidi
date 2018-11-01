<%-- 
    Document   : insertDoctor
    Created on : Nov 1, 2018, 10:28:59 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<%
  
    int idPerson = Integer.parseInt(request.getParameter("idPerson"));
    out.println("idPerson=" + idPerson);
    String syndicat_no = request.getParameter("syndicat_no");
    

    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
        Statement st=con.createStatement();
        ResultSet rs; 
        int choosenSpeciality = 0;
        if (request.getParameter("chooseSpeciality") != null)
            choosenSpeciality = Integer.parseInt(request.getParameter("chooseSpeciality"));
        if (idPerson != 0 && syndicat_no!= null)
        {   int i=st.executeUpdate("INSERT INTO `valeurc2`.`doctor` (`idPerson`, `syndicat_no`, `idSpeciality`) VALUES ( '"+ idPerson +"', '"+ syndicat_no +"', '"+ choosenSpeciality +"'); "); }
            out.println(" Person Registered"); 
                  
    } 
    catch (Exception ex) 
    { ex.printStackTrace();
        out.println("error " + ex.getMessage());
    }

 %>
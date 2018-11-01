<%-- 
    Document   : insertPatient
    Created on : Nov 2, 2018, 12:20:34 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<%
                        
    int idPerson= Integer.parseInt(request.getParameter("idPerson"));
    int choosenNationality = Integer.parseInt(request.getParameter("chooseNationality"));
    int choosenRegion = Integer.parseInt(request.getParameter("chooseRegion"));
    int ssn = Integer.parseInt(request.getParameter("ssn"));
    String registerNo =request.getParameter("registerNo");
    String dob_s = request.getParameter("dob");
    Date dob = new SimpleDateFormat("dd/MM/yyyy").parse(dob_s);
    String bloodGrp = request.getParameter("bloodGrp");

    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
        Statement st=con.createStatement();
        ResultSet rs;  
        if (idPerson != 0 && ssn!= 0 &&  registerNo != null)
        {  int i=st.executeUpdate("INSERT INTO `valeurc2`.`patient` (`idPerson`, `ssn`, `registerNo`, `dob`, `bloodGrp`, `idNationality`, `idRegion`) VALUES ( '"+ idPerson +"', '"+ ssn +"', '"+ registerNo +"', '"+ dob +"', '"+ bloodGrp +"', '"+ choosenNationality +"', '"+ choosenRegion +"'); "); }
        out.println(" Person Registered"); 
    }
    catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
    }

 %>



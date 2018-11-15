<%-- 
    Document   : Patient_Controller_Insert
    Created on : Nov 15, 2018, 8:53:36 PM
    Author     : zeina
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="MiriamCenter.Person_Insert"%>
<%@page import="MiriamCenter.Patient_Insert"%>

<!DOCTYPE html>
<%
    DB_Connection obj_DB_Con =new DB_Connection();
    Connection con=obj_DB_Con.get_connection();
    Statement st=con.createStatement();
    ResultSet rs;
    int idPerson = Integer.parseInt(request.getParameter("idPerson"));
    int ssn = Integer.parseInt(request.getParameter("ssn"));
    String registerNo =request.getParameter("registerNo");
                
    String dob_s = request.getParameter("dob");
    java.util.Date dob = new SimpleDateFormat("dd/MM/yyyy").parse(dob_s);
    java.sql.Date sqlDate = new java.sql.Date(dob.getTime());
                
    String bloodGrp = request.getParameter("bloodGrp");

   try{
        int choosenNationality=0;
        int choosenRegion =0;
        if (request.getParameter("chooseNationality") !=null)
                choosenNationality = Integer.parseInt(request.getParameter("chooseNationality"));
        if (request.getParameter("chooseRegion") != null)
                choosenRegion = Integer.parseInt(request.getParameter("chooseRegion"));
        if (idPerson != 0 && ssn!= 0)
        {  Patient_Insert pi = new Patient_Insert();
           pi.insert_values(idPerson,  ssn, registerNo,  dob,  bloodGrp,  choosenNationality,  choosenRegion);
            
            int i=st.executeUpdate("INSERT INTO `valeurc2`.`patient` (`idPerson`, `ssn`, `registerNo`, `dob`, `bloodGrp`, `idNationality`, `idRegion`) VALUES ( '"+ idPerson +"', '"+ ssn +"', '"+ registerNo +"', '"+ sqlDate +"', '"+ bloodGrp +"', '"+ choosenNationality +"', '"+ choosenRegion +"'); "); }
            out.println(" Patient Registered"); 
        } 
        catch(Exception e){
            System.out.print(e);
            e.printStackTrace();
        }
%>

<input type="submit" value="Save Data" onclick="SaveData"  style="text-align: center;"/>

<%-- 
    Document   : insertMedicalAct
    Created on : Nov 3, 2018, 10:33:10 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import ="javax.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<%  
    String medicalActDate_s= request.getParameter("medicalActDate");
    java.util.Date medicalActDate = new SimpleDateFormat("dd/MM/yyyy").parse(medicalActDate_s);
    java.sql.Date sqlDate = new java.sql.Date(medicalActDate.getTime());
        
    String medicalactTime_s = request.getParameter("medicalactTime");    
    java.util.Date medicalactTime = new SimpleDateFormat("hh:mm").parse(medicalactTime_s);
    java.sql.Timestamp sqlTime = new java.sql.Timestamp(medicalactTime.getTime());
    
    String medicalactDesc =request.getParameter("medicalactDesc");
    String chooseCard = request.getParameter("chooseCard");
    String chooseType = request.getParameter("chooseType");

    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
        Statement st=con.createStatement();
        ResultSet rs; 
    
        int choosenCard = Integer.parseInt(request.getParameter("chooseCard"));
         int choosenType = Integer.parseInt(request.getParameter("chooseType"));
                  
        if (medicalactDesc != null && choosenCard  != 0 )
        {   int i=st.executeUpdate("INSERT INTO `valeurc2`.`medicalact` (`medicalActDate`, `medicalactTime`, `medicalactDesc`, `idMedicalCard`) VALUES ( '"+ sqlDate +"', '"+ sqlTime +"', '"+ medicalactDesc +"', '"+ choosenCard  +"'); ");
            out.println(" medicalAct Registered"); 
            out.println();
            out.println();
            rs = st.executeQuery("SELECT * FROM valeurc2.medicalAct order by idMedicalAct desc limit 1;"); 
            rs.next();
            int idMedicalAct =rs.getInt("idMedicalAct");
                        
            if (idMedicalAct != 0 && choosenType  != 0)
            {   if(choosenType == 1)
                {    %>
                        <a href ="addConsultation.jsp?idMedicalAct=<%=(idMedicalAct)%>">Go to Consultation page</a> 
                    <%                    
                }
                
                if (choosenType == 2)
                {         
                    %>
                        <a href ="addHospitalization.jsp?idMedicalAct=<%=(idMedicalAct)%>">Go to Hospitalization Page</a>   
                    <%                 
                }
            }
        }
    } 
    catch (Exception ex) 
    { ex.printStackTrace();
        out.println("error " + ex.getMessage());
    }
 %>

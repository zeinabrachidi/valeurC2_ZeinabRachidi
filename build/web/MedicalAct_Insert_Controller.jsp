<%-- 
    Document   : MedicalAct_Insert_Controller
    Created on : Nov 29, 2018, 10:07:32 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="MiriamCenter.MedicalAct_Insert"%>

<!DOCTYPE html>

<%  
    String medicalActDate_s= request.getParameter("medicalActDate");
    java.util.Date medicalActDate = new SimpleDateFormat("dd/MM/yyyy", Locale.US).parse(medicalActDate_s);
        
    String medicalactTime_s = request.getParameter("medicalactTime");    
    java.util.Date medicalactTime = new SimpleDateFormat("hh:mm", Locale.US).parse(medicalactTime_s);
    
    String medicalactDesc =request.getParameter("medicalactDesc");
    String chooseCard = request.getParameter("chooseCard");
    String chooseType = request.getParameter("chooseType");

    try{
        DB_Connection obj_DB_Con =new DB_Connection();
        Connection con=obj_DB_Con.get_connection();
		
	Statement st=con.createStatement();
	ResultSet rs; 
    
        int choosenCard = Integer.parseInt(request.getParameter("chooseCard"));
        int choosenType = Integer.parseInt(request.getParameter("chooseType"));
                  
        if (medicalactDesc != null && choosenCard  != 0 )
        {  MedicalAct_Insert mi = new MedicalAct_Insert();
           mi.insert_values(medicalActDate, medicalactTime, medicalactDesc, choosenCard);
            
            out.println(" medicalAct Registered"); 
            out.println();
            out.println();
            rs = st.executeQuery("SELECT * FROM valeurc2.medicalAct order by idMedicalAct desc limit 1;"); 
            rs.next();
            int idMedicalAct =rs.getInt("idMedicalAct");
                        
            if (idMedicalAct != 0 && choosenType  != 0)
            {   if(choosenType == 1)
                {    %>
                        <a href ="Consultation_Insert.jsp?idMedicalAct=<%=(idMedicalAct)%>">Go to Consultation page</a> 
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

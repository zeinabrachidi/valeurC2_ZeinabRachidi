<%-- 
    Document   : Consultation_Controller_Insert
    Created on : Nov 11, 2018, 10:52:05 AM
    Author     : zeina
--%>

<<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MiriamCenter.InsertUnit"%>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="MiriamCenter.Consultation_Insert"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
  
<%
                DB_Connection obj_DB_Con =new DB_Connection();
                Connection con=obj_DB_Con.get_connection();
		
		Statement st=con.createStatement();
		ResultSet rs;
                
                int idMedicalAct = Integer.parseInt(request.getParameter("idMedicalAct"));

                try{		
                    int choosenDoctor = 0;
                    if (request.getParameter("chooseDoctor") != null)
                        choosenDoctor = Integer.parseInt(request.getParameter("chooseDoctor"));
                    int montant = Integer.parseInt(request.getParameter("montant"));
                    
                    if (idMedicalAct != 0 && choosenDoctor != 0)
                    {   Consultation_Insert ci = new Consultation_Insert();
                        ci.insert_values(idMedicalAct, choosenDoctor, montant);                        
                        
                        out.println();
                        out.println(" Consultation Registered");
                        out.println();
                    }    
                }  catch (Exception ex) 
                { ex.printStackTrace();
                    out.println("error " + ex.getMessage());
                }
             %>
     
        
<script type="text/javascript">
 window.location.href="Consultation_Insert.jsp";
</script>

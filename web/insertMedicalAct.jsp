<%-- 
    Document   : insertMedicalAct
    Created on : Nov 3, 2018, 10:33:10 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<%  
    String medicalActDate= request.getParameter("medicalActDate");
    String medicalactTime = request.getParameter("medicalactTime");
    String medicalactDesc =request.getParameter("medicalactDesc");
    String chooseCard = request.getParameter("chooseCard");

    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
        
        Statement st=con.createStatement();
        ResultSet rs; 
    
        int choosenCard = Integer.parseInt(request.getParameter("chooseCard"));
                  
        if (medicalactDesc != null && choosenCard  != 0)
        {   int i=st.executeUpdate("INSERT INTO `valeurc2`.`medicalact` (`medicalActDate`, `medicalactTime`, `medicalactDesc`, `idMedicalCard`) VALUES ( '"+ medicalActDate +"', '"+ medicalactTime +"', '"+ medicalactDesc +"', '"+ choosenCard  +"'); ");
            out.println(" medicalAct Registered"); 
            rs = st.executeQuery("SELECT * FROM valeurc2.medicalAct order by idMedicalAct desc limit 1;"); 
            rs.next();
            int idMedicalAct =rs.getInt("idMedicalAct");
                        
            if (idMedicalAct != 0 && choosenPersonType != 0)
            {  i = st.executeUpdate("INSERT INTO `valeurc2`.`accept_persons` (`idPerson`, `idPersonType`) VALUES ( '"+ idMedicalAct +"', '"+ choosenPersonType +"'); ");  }
                                        
                if(choosenPersonType == 2)
                {    %>
                        <a href ="doctor.jsp?idMedicalAct=<%=(idMedicalAct)%> ">Go to Consultation page</a> 
                    <%                    
                }
                
                if (choosenPersonType == 3)
                {         
                    %>
                        <a href ="patient.jsp?idMedicalAct=<%=(idMedicalAct)%> ">Go to Hospitalization Page</a>   
                    <%                 
                }
            }
    } 
    catch (Exception ex) 
    { ex.printStackTrace();
        out.println("error " + ex.getMessage());
    }
 %>

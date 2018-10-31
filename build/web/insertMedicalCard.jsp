<%-- 
    Document   : insertMedicalCard
    Created on : Oct 31, 2018, 11:17:49 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<%
                        
    String emissionDate = request.getParameter("emissionDate");

    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
        Statement st=con.createStatement();
        ResultSet rs; 
        String query = "SELECT valeurc2.patient.idPerson, concat(valeurc2.person.firstName, ' ', valeurc2.person.lastName, ' ', valeurc2.patient.ssn, ' ' , valeurc2.patient.registerNo) as Patient_Data FROM valeurc2.person, valeurc2.patient where valeurc2.person.idPerson = valeurc2.patient.idPerson;";
        st= con.createStatement(); 
        rs = st.executeQuery(query); 
        while (rs.next())
        { %>
            <option value="<%=rs.getInt("idPerson") %>" 
                            ><%=rs.getString("firstName")%>
                            <%=rs.getString("lastName")%>    
            </opion>  
           <%
        }      
        int choosenPatient =0;
        if (request.getParameter("choose") != null && emissionDate != null)
        {   choosenPatient = Integer.parseInt(request.getParameter("choosePatient"));
            int i=st.executeUpdate("INSERT INTO `valeurc2`.`medicalCard` (`emissionDate`, `IdPersonPat`) VALUES ( '"+emissionDate+"', '"+choosenPatient+"'); ");
            out.println("Data is successfully inserted!"); 
        }
    } 
    catch (Exception ex) 
        { ex.printStackTrace();
          out.println("error " + ex.getMessage());
        
        }


 %>




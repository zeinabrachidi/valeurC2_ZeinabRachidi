<%-- 
    Document   : Person_Controller_Insert
    Created on : Nov 13, 2018, 9:41:02 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="MiriamCenter.Person_Insert"%>
<%@page import="MiriamCenter.AcceptPersons_Insert"%>
<%@page import="MiriamCenter.Auxiliairy_Insert"%>
<%@page import="MiriamCenter.Technician_Insert"%>

<!DOCTYPE html>
<%  
    String firstName= request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String gender =request.getParameter("gender");
    String mobile = request.getParameter("mobile");
    String e_mail = request.getParameter("e_mail");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    int choosenProfession = Integer.parseInt(request.getParameter("chooseProfession"));
    int choosenStreet = Integer.parseInt(request.getParameter("chooseStreet"));
    int choosenPersonType = Integer.parseInt(request.getParameter("choosePersonType"));

    try{
        DB_Connection obj_DB_Con =new DB_Connection();
        Connection con=obj_DB_Con.get_connection();
		
	Statement st=con.createStatement();
	ResultSet rs; 
         
        if (firstName != null && lastName != null &&  gender!=null && mobile != null && e_mail != null && username != null && password != null)
        {   Person_Insert pi = new Person_Insert();
            pi.insert_values(firstName , lastName , gender , mobile ,e_mail , choosenProfession , choosenStreet , username, password);
            
            out.println(" Person Registered"); 
            out.println();
            out.println();
            
            rs = st.executeQuery("SELECT * FROM valeurc2.person order by idPerson desc limit 1;"); 
            rs.next();
            int idPerson =rs.getInt("idPerson");
                        
            if (idPerson != 0 && choosenPersonType != 0)
            {   AcceptPersons_Insert api = new AcceptPersons_Insert();                
                api.insert_values(idPerson , choosenPersonType, false);
                
                if(choosenPersonType == 2)
                {    
                    %>
                        <a href ="doctor.jsp?idPerson=<%=(idPerson)%> ">Go to Doctor page</a> 
                    <%                    
                }
                
                if (choosenPersonType == 3)
                {      
                    %>
                        <a href ="patient.jsp?idPerson=<%=(idPerson)%> ">Go to Patient Page</a>   
                    <%                 
                }

                if(choosenPersonType == 4)
                {  Auxiliairy_Insert ai = new Auxiliairy_Insert();
                    ai.insert_values(idPerson); 
                }    
                if(choosenPersonType == 5)
                { Technician_Insert ti = new Technician_Insert();
                  ti.insert_values(idPerson); 
                } 
            }
        }
    } 
    catch (Exception ex) 
    { ex.printStackTrace();
        out.println("error " + ex.getMessage());
    }

 %>

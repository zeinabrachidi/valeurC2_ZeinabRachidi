<%-- 
    Document   : insertPerson
    Created on : Nov 1, 2018, 7:17:27 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<%  
    String firstName= request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String gender =request.getParameter("gender");
    String mobile = request.getParameter("mobile");
    String e_mail = request.getParameter("e_mail");
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
        
        Statement st=con.createStatement();
        ResultSet rs; 
        
        int choosenStreet = 0;
        int choosenProfession = 0;
        int choosenPersonType = 0;
    
        choosenProfession = Integer.parseInt(request.getParameter("chooseProfession"));
        choosenStreet = Integer.parseInt(request.getParameter("chooseStreet"));
        choosenPersonType = Integer.parseInt(request.getParameter("choosePersonType"));
                  
        if (firstName != null && lastName != null &&  gender!=null && mobile != null && e_mail != null && username != null && password != null)
        {   int i=st.executeUpdate("INSERT INTO `valeurc2`.`person` (`firstName`, `lastName`, `gender`, `mobile`, `e_mail`, `idProfession`, `idStreet`, `username`, `password`) VALUES ( '"+ firstName +"', '"+ lastName +"', '"+ gender +"', '"+ mobile +"', '"+ e_mail +"', '"+ choosenProfession +"', '"+ choosenStreet +"', '"+ username +"', '"+ password +"'); ");
            out.println(" Person Registered"); 
            rs = st.executeQuery("SELECT * FROM valeurc2.person order by idPerson desc limit 1;"); 
            rs.next();
            int idPerson =rs.getInt("idPerson");
                        
            if (idPerson != 0 && choosenPersonType != 0)
            {  i = st.executeUpdate("INSERT INTO `valeurc2`.`accept_persons` (`idPerson`, `idPersonType`) VALUES ( '"+ idPerson +"', '"+ choosenPersonType +"'); ");  }
                                        
                if(choosenPersonType == 2)
                {    %>
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
                { i=st.executeUpdate("INSERT INTO `valeurc2`.`auxiliary` (`idPerson`) VALUES ( '"+ idPerson +"' ); "); }
                    
                if(choosenPersonType == 5)
                { i=st.executeUpdate("INSERT INTO `valeurc2`.`technician` (`idPerson`) VALUES ( '"+ idPerson +"' ); "); }
            }
    } 
    catch (Exception ex) 
    { ex.printStackTrace();
        out.println("error " + ex.getMessage());
    }

 %>
 

<%-- 
    Document   : Doctor_Insert_BegIN_Controller
    Created on : Dec 2, 2018, 9:33:00 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="MiriamCenter.AcceptPersons_Insert"%>
<%@page import="MiriamCenter.Auxiliairy_Insert"%>
<%@page import="MiriamCenter.Technician_Insert"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="MiriamCenter.Doctor_Insert"%>

<!DOCTYPE html>

<%
    DB_Connection obj_con =new DB_Connection();
    Connection con=obj_con.get_connection();   
    ResultSet rs;
    con.setAutoCommit(true);
    int r = -1;
    PreparedStatement ps;  
    Statement st=con.createStatement();
    
    int choosenIdPerson = Integer.parseInt(request.getParameter("chooseIdPerson"));
     out.println("idperson=" + choosenIdPerson);
     
    if (request.getParameter("chooseIdPerson") != null)
    {   String query = "SELECT * FROM valeurc2.accept_persons where idPerson= '"+choosenIdPerson+"' ";
        rs = st.executeQuery(query); 
        boolean flag = false;
        while (rs.next())
        {   int idpersonType = rs.getInt("idpersonType") ;
            out.println("idpersonType=" + idpersonType);
            if (idpersonType == 2)
            { flag = true;
                 break;
            }
        }
        out.println("flag=" + flag);
        if (!flag)
            out.println("you are not registered as Doctor");
        else 
        {     
            String syndicat_no = request.getParameter("syndicat_no");
            int choosenSpeciality = 0;
            if (request.getParameter("chooseSpeciality") != null)
            {   choosenSpeciality = Integer.parseInt(request.getParameter("chooseSpeciality"));  }
            out.println("choosenSpeciality =" + choosenSpeciality );
                try{             
                    if (choosenIdPerson != 0 && syndicat_no!= null)
                    {   Doctor_Insert di = new Doctor_Insert();
                        out.println( "idPerson=" + choosenIdPerson +  " syndicat_no=" + syndicat_no +  " choosenSpeciality=" +  choosenSpeciality);
                        di.insert_values(choosenIdPerson, syndicat_no, choosenSpeciality);
                    }
                    out.println(" Doctor Registered"); 
                } 
                catch (Exception ex) 
                { ex.printStackTrace();
                     out.println("error " + ex.getMessage());
                }
        }   
    }
%> 
<script type="text/javascript">
     //window.opener.location.reload();
    // window.close();
     window.location.href="Doctor_Insert_BegIN.jsp";
</script>


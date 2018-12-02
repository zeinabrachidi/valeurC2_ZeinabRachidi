<%-- 
    Document   : Patient_Insert_BegIN_Controller
    Created on : Dec 2, 2018, 10:15:27 PM
    Author     : zeina
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="MiriamCenter.AcceptPersons_Insert"%>
<%@page import="MiriamCenter.Auxiliairy_Insert"%>
<%@page import="MiriamCenter.Technician_Insert"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored ="false" %>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="MiriamCenter.Patient_Insert"%>

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
            if (idpersonType == 3)
            { flag = true;
                 break;
            }
        }
        
        out.println("flag=" + flag);
        if (!flag)
            out.println("you are not registered as Patient");
        else 
        {     
            int ssn = Integer.parseInt(request.getParameter("ssn"));
            String registerNo = request.getParameter("registerNo");
            
            String dob_s = request.getParameter("dob");
            java.util.Date dob= new SimpleDateFormat("dd-MM-yyyy").parse(dob_s);
            
            String bloodGrp = request.getParameter("bloodGrp");

            int choosenNationality=0;
            int choosenRegion =0;
            if (request.getParameter("chooseNationality") != null)
            {   choosenNationality = Integer.parseInt(request.getParameter("chooseNationality"));   }
            out.println("choosenNationality =" + choosenNationality );
            
            if (request.getParameter("chooseRegion") != null)
            {        choosenRegion = Integer.parseInt(request.getParameter("chooseRegion"));        }
            out.println("choosenRegion = " + choosenRegion );
            
            try{             
                    if (choosenIdPerson != 0 )
                    {   Patient_Insert di = new Patient_Insert();
                        out.println( "idPerson=" + choosenIdPerson +  " ssn=" + ssn +  " registerNo=" +  registerNo + " dob=" + dob + " bloodGrp=" + bloodGrp + " idNationality=" + choosenNationality + " idRegion=" +  choosenRegion);
                        di.insert_values(choosenIdPerson, ssn, registerNo, dob, bloodGrp, choosenNationality, choosenRegion);
                    }
                    out.println(" Patient Registered"); 
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
     window.location.href="Patient_Insert_BegIN.jsp";
</script>




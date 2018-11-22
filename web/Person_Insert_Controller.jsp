<%-- 
    Document   : Person_Insert_Controller
    Created on : Nov 22, 2018, 7:16:25 PM
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

    try
    {
        if (firstName != null && lastName != null &&  gender!=null && mobile != null && e_mail != null && username != null && password != null)
        {   Person_Insert pi = new Person_Insert();
            pi.insert_values(firstName , lastName , gender , mobile ,e_mail , choosenProfession , choosenStreet , username, password);
            
            out.println(" Person Registred");
            out.println();
        } 
    } catch (Exception ex) 
        { ex.printStackTrace();
          out.println("error " + ex.getMessage());
        }
 %> 
 
 <script type="text/javascript">
 window.location.href="Person_Insert.jsp";
</script>




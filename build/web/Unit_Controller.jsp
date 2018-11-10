

<%-- 
    Document   : Unit_Controller
    Created on : Nov 9, 2018, 8:51:41 AM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MiriamCenter.InsertUnit"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
    
        <%
                
        String unitDesc = request.getParameter("unitDesc");
        if (unitDesc != null)
        {              
            InsertUnit iu=new InsertUnit();
            iu.insert_values(unitDesc);
        }    

        %>
        
<script type="text/javascript">
 window.location.href="insertUnit.jsp";
</script>



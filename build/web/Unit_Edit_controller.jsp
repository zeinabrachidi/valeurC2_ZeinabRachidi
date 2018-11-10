<%-- 
    Document   : Unit_Edit_controller
    Created on : Nov 10, 2018, 5:43:26 PM
    Author     : zeina
--%>

<%@page import="MiriamCenter.EditUnit"%>
<%@page import="MiriamCenter.Unit_bean"%>
<%@page import="MiriamCenter.InsertUnit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>



<%
    int idUnit=Integer.parseInt(request.getParameter("idUnit"));
    String unitDesc = request.getParameter("unitDesc");
    
    out.print("idUnit="+ idUnit + "  unitDesc=" + unitDesc);

    Unit_bean ub = new Unit_bean();
    ub.setIdUnit(idUnit);
    ub.setUnitDesc(unitDesc);

    EditUnit eu = new EditUnit();

     eu.edit_unit(ub);
%>

<script type="text/javascript">
 window.location.href="readUnit.jsp";
</script>

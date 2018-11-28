<%-- 
    Document   : Person_Edit_Controller
    Created on : Nov 21, 2018, 11:54:51 AM
    Author     : zeina
--%>

<%@page import="MiriamCenter.Person_Edit"%>
<%@page import="MiriamCenter.Person_Bean"%>
<%@page import="MiriamCenter.Person_Insert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>



<%
    int idPerson=Integer.parseInt(request.getParameter("idPerson"));
    String firstName= request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String gender =request.getParameter("gender");
    String mobile = request.getParameter("mobile");
    String e_mail = request.getParameter("e_mail");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    int idProfession = Integer.parseInt(request.getParameter("idProfession"));
    int idStreet = Integer.parseInt(request.getParameter("idStreet"));
    
    out.print(" firstName =" +  firstName  );
    out.print("lastName =" +  lastName);
    out.print(" gender =" + gender);
    out.print(" mobile =" +  mobile ) ;
    out.print(" e_mail =" +  e_mail  );
    out.print(" username =" +  username  );
    out.print(" password =" +  password );
    
    Person_Bean pb = new Person_Bean();
   
    pb.setIdPerson(idPerson);
    pb.setFirstName(firstName);
    pb.setLastName(lastName);
    pb.setGender(gender);
    pb.setMobile(mobile);
    pb.setEMail(e_mail);
    pb.setIdProfession(idProfession);
    pb.setIdStreet(idStreet);
    pb.setUsername(username);
    pb.setPassword(password);

    Person_Edit pe = new  Person_Edit();

     pe.edit_person(pb);
%>

<script type="text/javascript">
 window.location.href="Person_Read.jsp";
</script>

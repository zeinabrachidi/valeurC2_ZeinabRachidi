<%-- 
    Document   : test_form
    Created on : Nov 24, 2018, 4:03:19 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="MiriamCenter.DB_Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 
        
        Statement st=con.createStatement();
        ResultSet rs; 
        rs = st.executeQuery("SELECT * FROM valeurc2.person order by idPerson;"); 

                while(rs.next()){

                    System.out.println(rs.getInt("idPerson"));
                    System.out.println(rs.getString("firstName"));
                    System.out.println(rs.getString("lastName"));
                    System.out.println(rs.getString("gender"));
                    System.out.println(rs.getString("mobile"));
                    System.out.println(rs.getString("e_mail"));
                    System.out.println(rs.getInt("idProfession"));
                    System.out.println(rs.getInt("idStreet"));
                    System.out.println(rs.getString("username"));
                    System.out.println(rs.getString("password"));
                }
        %>    
        
    </body>
</html>

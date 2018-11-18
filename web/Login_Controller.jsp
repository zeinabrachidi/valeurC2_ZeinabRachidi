<%-- 
    Document   : Login_Controller
    Created on : Nov 18, 2018, 8:09:00 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@page import="MiriamCenter.DB_Connection"%>

<!DOCTYPE html>

                <%
                    DB_Connection obj_DB_Con =new DB_Connection();
                    Connection con=obj_DB_Con.get_connection();

                    Statement st=con.createStatement();
                    ResultSet rs; 
                    
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    int choosenType  = Integer.parseInt(request.getParameter("chooseType"));
                    String query = "select * from q_persontypes where username='"+ username+"' and idpersontype='"+ choosenType+"'" ;
                    st= con.createStatement(); 
                    rs = st.executeQuery(query); 
                    int idPerson = 0; 
                    boolean flag = false ;
                    while (rs.next()) 
                    {   idPerson = rs.getInt(1);
                        if (rs.getString(5).equals(password) ) 
                        { out.println("welcome "+ username);
                          flag=true;
                          break; 
                        } 
                        else 
                        { out.println("Invalid password try again"); } 
                    }
                    if (!flag)
                    { out.println("Invalid usernme"); } 
                    else
                    { if (choosenType == 1)
                        {  
                            %>
                                <a href ="Admin_Login.jsp">Administrator Login </a> 
                            <% 
                        }   
                        if (choosenType == 2) 
                        {
                            %>
                                <a href ="Doctor_Login.jsp">Doctor Login </a> 
                            <% 
                        }
                        if (choosenType == 3) 
                        {  
                            %>
                                 <a href ="Patient_Login.jsp">Patient Login </a> 
                            <% 
                        }
                        if (choosenType == 4) 
                        {    
                             %>
                                <a href ="Auxiliairy_Login.jsp">Auxiliairy Login </a> 
                            <% 
                        }
                        if (choosenType == 5) 
                        {    
                             %>
                                <a href ="Technician_Login.jsp">Technician Login </a> 
                             <% 
                        }
                    }
%>


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
                    String query = "select * from q_persontypes where username='"+ username+"' and idpersontype='"+ choosenType+"' and accepted='"+ 1 +"' " ;
                    st= con.createStatement(); 
                    rs = st.executeQuery(query); 
                    int idPerson = 0; 
                    boolean flag = false ;
                    while (rs.next()) 
                    {   idPerson = rs.getInt(1);
                        if ( rs.getString(5).equals(password) ) 
                        {  if ( rs.getInt(8)==1)
                           {  out.println("welcome "+ username);
                              flag=true;
                              break; 
                            } 
                        }
                        else 
                            { out.println("Invalid password try again");     } 
                        }
                    if (!flag)
                    { out.println("Invalid usernme or person not accepted yet"); 
                        %>
                            <br/><br/><a href="index.xhtml">Home</a><br/><br/> 
                        <%
                    } 
                    else
                    { if (choosenType == 1)
                        {  
                            %>
                                <a href ="Admin_Login.jsp?username=<%=username%>&password=<%=password%>">Administrator Login </a> 
                            <% 
                        }   
                        if (choosenType == 2) 
                        {
                            %>
                                <a href ="Doctor_Login.jsp?username=<%=username%>&password=<%=password%>">Doctor Login </a> 
                            <% 
                        }
                        if (choosenType == 3) 
                        {  
                            %>
                                 <a href ="Patient_Login.jsp?username=<%=username%>&password=<%=password%>">Patient Login </a> 
                            <% 
                        }
                        if (choosenType == 4) 
                        {    
                             %>
                                <a href ="Auxiliairy_Login.jsp?username=<%=username%>&password=<%=password%>">Auxiliairy Login </a> 
                            <% 
                        }
                        if (choosenType == 5) 
                        {    
                             %>
                                <a href ="Technician_Login.jsp?username=<%=username%>&password=<%=password%>">Technician Login </a> 
                             <% 
                        }
                    }
%>


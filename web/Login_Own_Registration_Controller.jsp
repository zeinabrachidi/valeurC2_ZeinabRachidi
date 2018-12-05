<%-- 
    Document   : Login_Own_Registration_Controller
    Created on : Dec 5, 2018, 8:53:07 PM
    Author     : zeina
--%>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@page import="MiriamCenter.DB_Connection"%>

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
                    { 
                      %>
                            <a href="Person_Read_Own.jsp?username=<%=username%>&password=<%=password%>">Own Registration </a><br/><br/>    
                       <% 
                    }
%>

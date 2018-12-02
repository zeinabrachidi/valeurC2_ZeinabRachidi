<%-- 
    Document   : Doctor_Insert_First
    Created on : Dec 2, 2018, 2:05:21 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>
<%@page import="MiriamCenter.AcceptPersons_Bean_Own"%>
<%@page import="MiriamCenter.AcceptPersons_Read_Own"%>
<%@page import="MiriamCenter.Doctor_Insert"%>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body>
    <center>

    <h1>Read Values</h1>
    <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1>
    <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>

        <form action="" method="post" onsubmit="return checkForm(this);">
            <table border="1" align="center">
                
                <%
                    DB_Connection obj_con =new DB_Connection();
                    Connection con=obj_con.get_connection();   
                    ResultSet rs;
                    con.setAutoCommit(true);
                    PreparedStatement ps;  
                    Statement st=con.createStatement();
                    
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    
                    AcceptPersons_Read_Own apr = new AcceptPersons_Read_Own();

                    List<AcceptPersons_Bean_Own> list= apr.get_values(username, password); 

                    Iterator<AcceptPersons_Bean_Own> it_list = list.iterator();
                    while(it_list.hasNext()){
                        AcceptPersons_Bean_Own apb =new AcceptPersons_Bean_Own();
                        apb = it_list.next();
                 %>                      
                    <tr>	
                            <td><%=apb.getIdPerson()%></td>
                            <td><%=apb.getFirstName()%></td>
                            <td><%=apb.getLastName()%></td>
                            <td><%=apb.getUserName()%></td>
                            <td><%=apb.getPassword()%></td>    
                            <td><%=apb.getIdPersonType() %></td>
                            <td><%=apb.getPersonTypeDesc()%></td>
                            <td><%=apb.getAccepted() %></td>
                        </tr>
                 <%	 
                }   
                
                int idPerson = Integer.parseInt(request.getParameter("idPerson"));
                String syndicat_no = request.getParameter("syndicat_no");
                int choosenSpeciality = 0;
                if (request.getParameter("chooseSpeciality") != null)
                     choosenSpeciality = Integer.parseInt(request.getParameter("chooseSpeciality"));
                
                 try{             
                     if (idPerson != 0 && syndicat_no!= null)
                    {   Doctor_Insert di = new Doctor_Insert();
                        di.insert_values(idPerson, syndicat_no, choosenSpeciality);
                    }
                out.println(" Doctor Registered"); 
                } 
                catch (Exception ex) 
                { ex.printStackTrace();
                     out.println("error " + ex.getMessage());
                }
                %>
             
            <tr>
                <td> User Name</td>
                <td><input type="text" name="username"/></td> 
            </tr>
            <tr>
                <td> Password</td>
                <td><input type="text" name="password"/></td> 
            </tr>
            <tr>
                <td> Id Person no</td>
                <td><%=idPerson%>></td> 
            </tr>
            <tr>
                <td>Syndicat no</td>
                <td><input type="text" name="syndicat_no"/></td>    
            </tr>
            <tr>
                <td>Id Speciality</td>
                <td><select id="chooseSpeciality" name="chooseSpeciality">                           
                       <option value="0">Select Speciality</option>
                           <%
                                try
                                {                                 
                                    rs = st.executeQuery("SELECT * FROM valeurc2.Speciality;"); 
                                    while (rs.next())
                                    { %>
                                        <option value="<%=rs.getInt("idSpeciality") %>" 
                                                      ><%=rs.getString("specialityDesc")%>
                                        </opion>  
                                      <%
                                    }      
                                } 
                                catch (Exception ex) 
                                { ex.printStackTrace();
                                  out.println("error " + ex.getMessage());
                                }
                            %>
                    </select>
                </td>  
                <td><a href="addSpeciality.jsp">Add Speciality </a></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;"><input type="submit" value="Save Data" onclick="SaveData"/></td>
            </tr>   
            </table>
            <a href="index.xhtml" style="text-align: center;">Home</a>
        </form>
    </center>
</body>
</html>


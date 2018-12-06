<%-- 
    Document   : Admin_Login
    Created on : Nov 18, 2018, 9:10:34 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MiriamCenter.DB_Connection"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <style>
            *{
                margin: 0px;
                padding: 0px;
            }
            body
            { background-color:aliceblue;            }
            h1 
            {   color: white;
                text-align: center;
                background-color: white;
            }
            p 
            {  font-family: verdana;
               font-size: 20px;
            }
            #container ul 
            {  list-style: none;  }
            #container ul li
            {  background-color: aqua ;
               width: 180px;
               border: 1px solid white;
               height: 28px;
               line-height: 28px;
               text-align: left;
               float: left;
               color: red;
               font-size: 18px;
               position: relative;
            }
            #container ul li:hover
            { background-color: chartreuse  }
            #container ul ul
            { display: none;      }
            #container ul li:hover > ul
            { display: block;     }
            #container ul ul 
            { margin-left: 0px;
              top:0px;
              position:relative;
            }  
            #container ul ul ul
            { margin-left: 180px;
              top:0px;
              position :absolute;
            }  
        </style>
    </head>
    <body>
        <h1 style="text-align: center; color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1><br></br>
        <h1 style="text-align: center; color: red;font-size: x-large; background-color: white;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1>
        <form action="" method="post" onsubmit="return checkForm(this);">
            <%
                    DB_Connection obj_DB_Con =new DB_Connection();
                    Connection con=obj_DB_Con.get_connection();

                    Statement st=con.createStatement();
                    ResultSet rs; 
                    
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
             %>   
            <table align="center">
             <div id="container">
            <ul>
                <li colspan="2" style="text-align: center;"> <a href="index.xhtml">Home</a></li>
                <li>Administrative
                    <ul>
                            
                        <li>All Registrations
                            <ul>
                                <li><a href="Person_Insert.jsp">Add Registration</a></li> 
                                <li><a href="Person_Read.jsp">Show Registrations</a></li>          
                            </ul>
                        </li>
                        <li>Registration Types
                            <ul>
                                <li><a href="AcceptPersons_Insert.jsp">Add Register Type</a></li> 
                                <li><a href="AcceptPersons_Read.jsp">Show Register Type</a></li>          
                            </ul>
                        </li>
                        <li><a href="Person_Read_Own.jsp?username=<%=username%>&password=<%=password%>">Own Registration</a></li> 
                        <li><a href="AcceptPersons_Read_Own.jsp?username=<%=username%>&password=<%=password%>">Own Registration Types</a></li>
                        <li>Manage tables
                            <ul>
                                <li> permanent tables
                                    <ul>
                                        <li>Manage Medical Cards
                                            <ul>
                                                <li><a href="addMedicalCard.jsp">Add Medical Card</a> </li> 
                                                <li>Show Medical Card</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Units
                                            <ul>
                                                <li><a href="insertUnit.jsp">Insert Unit</a> </li> 
                                                <li><a href="readUnit.jsp">Show Unit</a></li> 
                                            </ul>
                                        </li>
                                        
                                        <li>Manage Professions
                                            <ul>
                                                <li><a href="addProfession.jsp">Add Profession</a> </li> 
                                                <li><a href="showProfession.jsp">show Professions</a></li> 
                                            </ul>
                                        </li>
                                        <li>Person Types
                                            <ul>
                                                <li><a href="addPersonType.jsp">Add Person Type</a> </li> 
                                                <li><a href="showPersonType.jsp">show Person Type</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Nationalities
                                            <ul>
                                                <li><a href="addNationality.jsp">Add Nationality</a> </li> 
                                                <li><a href="showNationality.jsp">Show Nationality</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Speciality
                                            <ul>
                                                <li><a href="addSpeciality.jsp">Add Speciality</a> </li> 
                                                <li><a href="showSpeciality.jsp">Show Speciality</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Civil Status
                                            <ul>
                                                <li><a href="addCivilStatus.jsp">Add Civil Status</a> </li> 
                                                <li><a href="showCivilStatus.jsp">Show Civil Status</a></li> 
                                            </ul>
                                        </li>   
                                        <li>Manage Cities
                                            <ul>
                                                <li><a href="addCity.jsp">add city</a> </li> 
                                                <li><a href="showCity.jsp">show cities</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Regions
                                            <ul>
                                                <li><a href="addRegion.jsp">Add Region</a> </li> 
                                                <li>Show Regions</li> 
                                            </ul>
                                        </li>
                                        <li>Manage Streets 
                                            <ul>
                                                <li><a href="addStreet.jsp">Add Street</a> </li> 
                                                <li>Show Streets</li> 
                                            </ul>
                                         </li>
                                        
                                        <li>Manage Diseases
                                            <ul>
                                                <li><a href="addDisease.jsp">Add Disease</a> </li> 
                                                <li><a href="showDisease.jsp">Show Disease</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Families
                                            <ul>
                                                <li><a href="addFamily.jsp">Add Family</a> </li>  
                                                <li><a href="showFamily.jsp">Show Family</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Hospitals
                                            <ul>
                                                <li><a href="addHospital.jsp">Add Hospital</a> </li> 
                                                <li><a href="showHospital.jsp">Show Hospital</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Insurances
                                            <ul>
                                                <li><a href="addInsurance.jsp">Add Insurance</a> </li> 
                                                <li><a href="showInsurance.jsp">Show Insurance</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Laboratories
                                            <ul>
                                                <li><a href="addLaboratory.jsp">Add Laboratory</a> </li> 
                                                <li><a href="showLaboratory.jsp">Show Laboratory</a></li> 
                                            </ul>
                                        </li>
                                        
                                        <li>Manage Medicines
                                            <ul>
                                                <li><a href="addMedicine.jsp">Add Medicine</a> </li> 
                                                <li><a href="showMedicine.jsp">Show Medicine</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Medicine Types
                                            <ul>
                                                <li><a href="addMedicineType.jsp">Add Medicine Type</a> </li> 
                                                <li><a href="showMedicineType.jsp">Show Medicine Type</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Pharmacies
                                            <ul>
                                                <li><a href="addPharmacy.jsp">Add Pharmacy</a> </li> 
                                                <li><a href="showPharmacy.jsp">Show Pharmacy</a></li> 
                                            </ul>
                                        </li>
                                        
                                        <li>Manage Reasons
                                            <ul>
                                                <li><a href="addReason.jsp">Add Reason</a> </li> 
                                                <li><a href="showReason.jsp">Show Reason</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Vaccines
                                            <ul>
                                                <li><a href="addVaccine.jsp">Add Vaccine</a> </li> 
                                                <li><a href="showVaccine.jsp">Show Vaccine</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Tests
                                            <ul>
                                                <li><a href="addTest.jsp">Add Test</a> </li> 
                                                <li><a href="showTest.jsp">Show Test</a></li> 
                                            </ul>
                                        </li>
                                        
                                    </ul>
                                </li>
                                <li> transaction tables
                                    <ul>
                                        <li>Death</li>
                                    </ul>
                                </li>
                            </ul>
                        </li>   
                        <li>Remove Medical File</li>
                        <li>Show Consultation</li>
                        <li>Show Hospitalization</li>
                    </ul>
                </li>
                <li>Add Person Type
                    <ul>
                        <li><a href="Doctor_Insert_BegIN.jsp">Add Doctor</a></li>
                        <li><a href="Patient_Insert_BegIN.jsp">Add Patient</a></li>
                    </ul>
                </li>
                <li>Doctor Missions
                    <ul>
                        <li> Manage Medical Acts
                            <ul>
                                <li><a href="MedicalAct_Insert.jsp">Add Medical Act</a> </li> 
                                <li><a href="MedicalAct_Read.jsp">Show Medical Act</a></li> 
                            </ul>
                        </li>
                        <li>Medications </li>
                        <li>Add Medical Files</li>
                        <li>Modify Medical Files</li>
                        <li>Update Reports </li>
                        <li>Treat Received Documents </li>
                        <li>Appointments</li>
                    </ul>
                </li>
                <li>Patient Missions
                    <ul> 
                        <li>payment</li>  
                        <li>Show Medical File </li>  
                    </ul>
                </li>
                <li>Auxiliary Missions
                    <ul>
                        <li>appointments</li> 
                        <li>Print Reports</li>
                        <li>Hospital Admissions</li>
                    </ul>
                </li>
                <li>Technician Missions
                    <ul>
                        <li>Test Lab</li>
                    </ul>
                </li>
            </ul>
        </div>         
    </table>
    </body>
</html>



                        
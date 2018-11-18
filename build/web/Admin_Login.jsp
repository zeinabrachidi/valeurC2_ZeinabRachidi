<%-- 
    Document   : Admin_Login
    Created on : Nov 18, 2018, 9:10:34 PM
    Author     : zeina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h1 style="color: red;">WELCOME TO MIRIYAM CENTER FOR MEDICAL SERVICES</h1><br></br>
        <h1 style="color: red; font-size: large;">For assistance contact Zeinab.Rachidi@isae.edu.lb</h1><br></br><br></br>
        <div id="container">
            <ul>
                <li>Administrative
                    <ul>
                        <li>Manage tables
                            <ul>
                                <li> permanent tables
                                    <ul>
                                        <li>Manage Cities
                                            <ul>
                                                <li><a href="addCity.jsp">add city</a> </li> 
                                                <li>Modify city</li> 
                                                <li>Delete city</li> 
                                                <li><a href="showCity.jsp">show cities</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Regions
                                            <ul>
                                                <li><a href="addRegion.jsp">Add Region</a> </li> 
                                                <li>Modify Region</li> 
                                                <li>Delete Region</li> 
                                                <li>Show Regions</li> 
                                            </ul>
                                        </li>
                                        <li>Manage Streets 
                                            <ul>
                                                <li><a href="addStreet.jsp">Add Street</a> </li> 
                                                <li>Modify Street</li> 
                                                <li>Delete Street</li> 
                                                <li>Show Streets</li> 
                                            </ul>
                                         </li>
                                        <li>Manage Professions
                                            <ul>
                                                <li><a href="addProfession.jsp">Add Profession</a> </li> 
                                                <li>Modify Profession</li> 
                                                <li>Delete Profession</li> 
                                                <li><a href="showProfession.jsp">show Professions</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Person Types
                                            <ul>
                                                <li><a href="addPersonType.jsp">Add Person Type</a> </li> 
                                                <li>Modify Person Type</li> 
                                                <li>Delete Person Type</li> 
                                                <li><a href="showPersonType.jsp">show Person Type</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Nationalities
                                            <ul>
                                                <li><a href="addNationality.jsp">Add Nationality</a> </li> 
                                                <li>Modify Nationality</li> 
                                                <li>Delete Nationality</li> 
                                                <li><a href="showNationality.jsp">Show Nationality</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Speciality
                                            <ul>
                                                <li><a href="addSpeciality.jsp">Add Speciality</a> </li> 
                                                <li>Modify Speciality</li> 
                                                <li>Delete Speciality</li> 
                                                <li><a href="showSpeciality.jsp">Show Speciality</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Civil Status
                                            <ul>
                                                <li><a href="addCivilStatus.jsp">Add Civil Status</a> </li> 
                                                <li>Modify Civil Status</li> 
                                                <li>Delete Civil Status</li> 
                                                <li><a href="showCivilStatus.jsp">Show Civil Status</a></li> 
                                            </ul>
                                        </li>   
                                        <li>Manage Persons </li>
                                        <li>Manage Units
                                            <ul>
                                                <li><a href="insertUnit.jsp">Insert Unit</a> </li> 
                                                <li>Modify Unit</li> 
                                                <li>Delete Unit</li> 
                                                <li><a href="readUnit.jsp">Show Unit</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Diseases
                                            <ul>
                                                <li><a href="addDisease.jsp">Add Disease</a> </li> 
                                                <li>Modify Disease</li> 
                                                <li>Delete Disease</li> 
                                                <li><a href="showDisease.jsp">Show Disease</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Families
                                            <ul>
                                                <li><a href="addFamily.jsp">Add Family</a> </li> 
                                                <li>modify Family</li> 
                                                <li>delete Family</li> 
                                                <li><a href="showFamily.jsp">Show Family</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Hospitals
                                            <ul>
                                                <li><a href="addHospital.jsp">Add Hospital</a> </li> 
                                                <li>Modify Hospital</li> 
                                                <li>Delete Hospital</li> 
                                                <li><a href="showHospital.jsp">Show Hospital</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Insurances
                                            <ul>
                                                <li><a href="addInsurance.jsp">Add Insurance</a> </li> 
                                                <li>Modify Insurance</li> 
                                                <li>Delete Insurance</li> 
                                                <li><a href="showInsurance.jsp">Show Insurance</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Laboratories
                                            <ul>
                                                <li><a href="addLaboratory.jsp">Add Laboratory</a> </li> 
                                                <li>Modify Laboratory</li> 
                                                <li>Delete Laboratory</li> 
                                                <li><a href="showLaboratory.jsp">Show Laboratory</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Medical Cards
                                            <ul>
                                                <li><a href="addMedicalCard.jsp">Add Medical Card</a> </li> 
                                                <li>Modify Medical Card</li> 
                                                <li>Delete Medical Card</li> 
                                                <li><a href="showMedicalCard.jsp">Show Medical Card</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Medicines
                                            <ul>
                                                <li><a href="addMedicine.jsp">Add Medicine</a> </li> 
                                                <li>Modify Medicine</li> 
                                                <li>Delete Medicine</li> 
                                                <li><a href="showMedicine.jsp">Show Medicine</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Medicine Types
                                            <ul>
                                                <li><a href="addMedicineType.jsp">Add Medicine Type</a> </li> 
                                                <li>Modify Medicine Type</li> 
                                                <li>Delete Medicine Type</li> 
                                                <li><a href="showMedicineType.jsp">Show Medicine Type</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Pharmacies
                                            <ul>
                                                <li><a href="addPharmacy.jsp">Add Pharmacy</a> </li> 
                                                <li>Modify Pharmacy</li> 
                                                <li>Delete Pharmacy</li> 
                                                <li><a href="showPharmacy.jsp">Show Pharmacy</a></li> 
                                            </ul>
                                        </li>
                                        
                                        <li>Manage Reasons
                                            <ul>
                                                <li><a href="addReason.jsp">Add Reason</a> </li> 
                                                <li>Modify Reason</li> 
                                                <li>Delete Reason</li> 
                                                <li><a href="showReason.jsp">Show Reason</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Vaccines
                                            <ul>
                                                <li><a href="addVaccine.jsp">Add Vaccine</a> </li> 
                                                <li>Modify Vaccine</li> 
                                                <li>Delete Vaccine</li> 
                                                <li><a href="showVaccine.jsp">Show Vaccine</a></li> 
                                            </ul>
                                        </li>
                                        <li>Manage Tests
                                            <ul>
                                                <li><a href="addTest.jsp">Add Test</a> </li> 
                                                <li>Modify Test</li> 
                                                <li>Delete Test</li> 
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
                        <li>Manage Registrations
                            <ul>
                                <li><a href="updateRegAdmin.jsp">Admin Registrations</a></li> 
                                <li><a href="updateRegDoctor.jsp">Doctor Registrations</a></li> 
                                <li><a href="updateRegPatient.jsp">Patient Registrations</a></li> 
                                <li><a href="updateRegAux.jsp">Auxiliairy Registrations</a></li> 
                                <li><a href="updateRegTech.jsp">Technician Registrations</a></li> 
                            </ul>
                        </li>
                        <li>Remove Medical File</li>
                        <li>Show Consultation</li>
                        <li>Show Hospitalization</li>
                        <li>Add Patient Type</li>
                         
                    </ul>
                </li>
                <li>patient
                    <ul> 
                        <li>payment</li>  
                        <li>Show Medical File </li>  
                    </ul>
                </li>
                <li>Doctor
                    <ul>
                        <li> Manage Medical Acts
                            <ul>
                                <li><a href="MedicalAct_Insert.jsp">Add Medical Act</a> </li> 
                                <li>Modify Medical Act</li> 
                                <li>Delete Medical Act</li> 
                                <li><a href="showMedicalAct.jsp">Show Medical Act</a></li> 
                            </ul>
                        </li>
                        <li>Medications </li>
                        <li>Add Medical Files</li>
                        <li>Modify Medical Files</li>
                        <li>Update Reports </li>
                        <li>Treat Received Documents </li>
                        <li>Medication </li>
                        <li>Appointments</li>
                        <li>Add Patient Type</li>
                    </ul>
                </li>
                <li>Auxiliary
                    <ul>
                        <li>appointments</li> 
                        <li>Print Reports</li>
                        <li>Hospital Admissions</li>
                        <li>Add Patient Type</li>
                    </ul>
                </li>
                <li> Technician
                    <ul>
                        <li>Test Lab</li>
                        <li>Add Patient Type</li>
                    </ul>
                </li>

            </ul>
        </div>    
    </body>
</html>

<script type="text/javascript">
 window.location.href="login.jsp";
</script>

                        
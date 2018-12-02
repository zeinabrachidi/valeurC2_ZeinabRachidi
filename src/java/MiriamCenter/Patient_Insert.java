/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

/**
 *
 * @author zeina
 */
public class Patient_Insert {
	public void insert_values(int idPerson, int ssn, String registerNo, Date dob, String bloodGrp, int idNationality, int idRegion) throws ClassNotFoundException, SQLException{

		DB_Connection obj_con =new DB_Connection();
		Connection con=obj_con.get_connection();     
		PreparedStatement ps = null; 

	    try {
                System.out.println( "idPerson=" + idPerson +  " ssn=" + ssn +  " registerNo=" +  registerNo + " dob=" + dob + " bloodGrp=" + bloodGrp + " idNationality=" + idNationality + " idRegion=" +  idRegion);
                String query = "INSERT INTO patient(idPerson, ssn,  registerNo, dob,  bloodGrp,  idNationality, idRegion) VALUES (?, ?, ?, ?, ?, ?, ?);" ;
                ps = con.prepareStatement(query);
                ps.setInt(1, idPerson);  
                ps.setInt(2, ssn);  
                ps.setString(3, registerNo);
                ps.setDate(4, new java.sql.Date(dob.getTime())); 
                ps.setString(5, bloodGrp); 
                ps.setInt(6, idNationality); 
                ps.setInt(7, idRegion); 
                
		ps.executeUpdate();
                
	    } catch (SQLException e) {
                System.err.println(e);
	    }
            finally {
                ps.close();
                con.close();
            }
        }
}


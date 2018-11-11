/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author zeina
 */
public class Consultation_Insert {

	public void insert_values(int idMedicalActCons, int idPersonDoc, int montant) throws ClassNotFoundException, SQLException{

		DB_Connection obj_con =new DB_Connection();
		Connection con=obj_con.get_connection();     
		
	    try {
                PreparedStatement ps; 
                String query = "INSERT INTO consultation( idMedicalActCons,  idPersonDoc, montant) VALUES(?, ?, ?);" ;
                ps = con.prepareStatement(query);
                ps.setInt(1, idMedicalActCons);  
                ps.setInt(2, idPersonDoc); 
                ps.setInt(3, montant); 
		ps.executeUpdate();
	    } catch (SQLException e) {
                    System.err.println(e);
	    }
        }
}

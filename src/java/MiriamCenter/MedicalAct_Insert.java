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
public class MedicalAct_Insert {

	public void insert_values(Date medicalActDate, String medicalactDesc, int idMedicalCard) throws ClassNotFoundException, SQLException{

		DB_Connection obj_con =new DB_Connection();
		Connection con=obj_con.get_connection();     
		
	    try {
                PreparedStatement ps; 
                
                java.sql.Date sqlDate = new java.sql.Date(medicalActDate.getTime());
                
                String query = "INSERT INTO medicalact( medicalActDate,  medicalactDesc, idMedicalCard) VALUES (?, ?, ?);" ;
                ps = con.prepareStatement(query);
                
                ps.setDate(1,  new java.sql.Date (medicalActDate.getTime()));
                ps.setString(2, medicalactDesc); 
                ps.setInt(3, idMedicalCard); 
		ps.executeUpdate();
	    } catch (SQLException e) {
                System.err.println(e);
	    }
        }
}

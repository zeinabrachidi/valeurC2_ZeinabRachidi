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

	public void insert_values(Date medicalActDate, Date medicalactTime, String medicalactDesc, int idMedicalCard) throws ClassNotFoundException, SQLException{

		DB_Connection obj_con =new DB_Connection();
		Connection con=obj_con.get_connection();     
		
	    try {
                PreparedStatement ps; 
                java.sql.Date sqlDate;
                sqlDate = new java.sql.Date(medicalActDate.getTime());
                java.sql.Timestamp sqlTime = new java.sql.Timestamp(medicalactTime.getTime());
                String query = "INSERT INTO medicalact( medicalActDate, medicalactTime, medicalactDesc, idMedicalCard) VALUES (sqlDate, sqlTime, ?, ?);" ;
                ps = con.prepareStatement(query);
                ps.setDate(1, sqlDate);  
                ps.setTimestamp(2, sqlTime);  
                ps.setString(3, medicalactDesc); 
                ps.setInt(4, idMedicalCard); 
		ps.executeUpdate();
	    } catch (SQLException e) {
                System.err.println(e);
	    }
        }
}

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
public class Doctor_Insert{
	public void insert_values(int idPerson, String syndicatNo, int idSpeciality) throws ClassNotFoundException, SQLException{

		DB_Connection obj_con =new DB_Connection();
		Connection con=obj_con.get_connection();     
		
	    try {
                PreparedStatement ps; 
                String query = "INSERT INTO doctor(int idPerson, String syndicatNo, int idSpeciality) VALUES (?, ?, ?);" ;
                ps = con.prepareStatement(query);
                ps.setInt(1, idPerson);   
                ps.setString(2, syndicatNo); 
                ps.setInt(3, idSpeciality); 
                
		ps.executeUpdate();
	    } catch (SQLException e) {
                System.err.println(e);
	    }
        }
}

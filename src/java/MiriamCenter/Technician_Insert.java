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
public class Technician_Insert {
    public void insert_values(int idPerson) throws ClassNotFoundException, SQLException{

		DB_Connection obj_con =new DB_Connection();
		Connection con=obj_con.get_connection();     
		
	    try {
                PreparedStatement ps; 
                String query = "INSERT INTO technician( int idPerson) VALUES (?);" ;
                ps = con.prepareStatement(query);
                ps.setInt(1, idPerson);  

		ps.executeUpdate();
	    } catch (SQLException e) {
                System.err.println(e);
	    }
        }
}

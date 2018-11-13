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
public class AcceptPersons_Insert {
    public void insert_values(int idPerson, int idpersonType, boolean accepted) throws ClassNotFoundException, SQLException{

	DB_Connection obj_con =new DB_Connection();
	Connection con=obj_con.get_connection();     
		
	try {
            PreparedStatement ps; 
            String query = "INSERT INTO accept_persons(idPerson, idpersonType, accepted) VALUES (?, ?, ?);" ;
            ps = con.prepareStatement(query);
                ps.setInt(1, idPerson);  
                ps.setInt(2, idpersonType);  
                ps.setBoolean(3, accepted); 
                
		ps.executeUpdate();
	    } catch (SQLException e) {
                System.err.println(e);
	    }
        }
}

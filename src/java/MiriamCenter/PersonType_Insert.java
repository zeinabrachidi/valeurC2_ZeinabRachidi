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
public class PersonType_Insert {
	public void insert_values(String personTypeDesc) throws ClassNotFoundException, SQLException{

		DB_Connection obj_con =new DB_Connection();
		Connection con=obj_con.get_connection();     
		
	    try {
                PreparedStatement ps; 
                String query = "INSERT INTO persontype( personTypeDesc) VALUES (?);" ;
                ps = con.prepareStatement(query);
                ps.setString(1, personTypeDesc);  

		ps.executeUpdate();
	    } catch (SQLException e) {
                System.err.println(e);
	    }
        }
}


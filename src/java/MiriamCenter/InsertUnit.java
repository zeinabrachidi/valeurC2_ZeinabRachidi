/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
    
package MiriamCenter;

/**
 *
 * @author zeina
 */

import java.sql.*;

public class InsertUnit {

	public void insert_values(String unitDesc) throws ClassNotFoundException, SQLException{

		DB_Connection obj_con =new DB_Connection();
		Connection con=obj_con.get_connection();   
                PreparedStatement ps; 
		
	    try {
                
                String query = "INSERT INTO unit(unitDesc) VALUES(?);" ;
                ps = con.prepareStatement(query);
                
                ps.setString(1, unitDesc);    
		
                ps.executeUpdate();
                
	    } catch (SQLException e) {
			System.err.println(e);
	    }
        }
}
	



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
public class Person_Insert {
	public void insert_values(String firstName, String lastName, String gender, String mobile, String eMail, int idProfession, int idStreet, String username, String password) throws ClassNotFoundException, SQLException{

		DB_Connection obj_con =new DB_Connection();
		Connection con=obj_con.get_connection();     
		
	    try {
                PreparedStatement ps; 
                String query = "INSERT INTO person( firstName, lastName, gender, mobile, eMail, idProfession, idStreet, username, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);" ;
                ps = con.prepareStatement(query);
                ps.setString(1, firstName);  
                ps.setString(2, lastName);  
                ps.setString(3, gender); 
                ps.setString(4, mobile); 
                ps.setString(5, eMail); 
                ps.setInt(6, idProfession); 
                ps.setInt(7, idStreet); 
                ps.setString(8, username); 
                ps.setString(9, password); 
                
		ps.executeUpdate();
	    } catch (SQLException e) {
                System.err.println(e);
	    }
        }
}


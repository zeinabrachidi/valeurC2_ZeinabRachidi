/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.sql.*;

/**
 *
 * @author zeina
 */
public class AcceptPersons_Delete {
 public void delete_value(int idPerson, int idPersonType){
	DB_Connection obj_DB_Con=new DB_Connection();
	Connection con=obj_DB_Con.get_connection();
	PreparedStatement ps;
		 
	try {
                String query;
                query = "delete from person where idPerson=?,idPersonType=? ";
                ps=con.prepareStatement(query);		
                ps.setInt(1, idPerson);
                ps.setInt(2, idPersonType);
                ps.executeUpdate();
                System.out.println("Person" + idPerson + " " + idPersonType +  " is deleted");
	    } catch (SQLException e) {
	  	System.out.println(e);
            }
	}   
}

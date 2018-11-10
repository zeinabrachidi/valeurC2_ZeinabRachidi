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


public class DeleteUnit {

    public void delete_value(int idUnit){
	DB_Connection obj_DB_Con=new DB_Connection();
	Connection con=obj_DB_Con.get_connection();
	PreparedStatement ps;
		 
	try {
                System.out.println("in delete value idUnit=" + idUnit);
                String query;
                query = "delete from unit where idUnit=?";
                ps=con.prepareStatement(query);		
                ps.setInt(1, idUnit);
                ps.executeUpdate();
                System.out.println("Unit" + idUnit + " is deleted");
	    } catch (SQLException e) {
	  	System.out.println(e);
            }
	}
}


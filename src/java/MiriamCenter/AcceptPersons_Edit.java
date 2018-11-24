/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author zeina
 */
public class AcceptPersons_Edit {
public AcceptPersons_Bean get_value_of_acceptpersons(int idPerson, int idPersonType){
		DB_Connection obj_DB_Con =new DB_Connection();
		Connection con =obj_DB_Con.get_connection();
		
		PreparedStatement ps;
		ResultSet rs;
		AcceptPersons_Bean apb = new AcceptPersons_Bean();

		try {
			String query="select * from accept_persons where idPerson=?,idPersonType=?";
			ps=con.prepareStatement(query);		
			ps.setInt(1, idPerson);
                        ps.setInt(2, idPersonType);
			rs=ps.executeQuery();

			while(rs.next()){
                            apb.setIdPerson(rs.getInt("idPerson"));
                            apb.setIdPersonType(rs.getInt("idpersonType"));
                            apb.setAccepted(rs.getBoolean("accepted"));
			}
		} catch (SQLException e) {
				System.out.println(e);
		}
		return apb;
	}

	public void edit_acceptpersons(AcceptPersons_Bean pb){
		DB_Connection obj_DB_Con=new DB_Connection();
		Connection con=obj_DB_Con.get_connection();
		PreparedStatement ps;
		try {
			String query="update accept_persons set accepted=? where idPerson=?,idpersonType=?";
			ps=con.prepareStatement(query);		
                            ps.setInt(1, pb.getIdPerson());
                            ps.setInt(1, pb.getIdPersonType());
                            ps.setBoolean(1, pb.getAccepted());
			ps.executeUpdate();	
		} catch (SQLException e) {
                    System.out.println(e);
		}
	}
}


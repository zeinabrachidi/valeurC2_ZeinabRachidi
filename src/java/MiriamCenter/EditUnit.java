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
public class EditUnit {

	public Unit_bean get_value_of_unit(int idUnit){
		DB_Connection obj_DB_Con =new DB_Connection();
		Connection con =obj_DB_Con.get_connection();
		
		PreparedStatement ps;
		ResultSet rs;
		Unit_bean ub = new Unit_bean();

		try {
			String query="select * from user where idUnit=?";
			ps=con.prepareStatement(query);		
			ps.setInt(1, idUnit);
			rs=ps.executeQuery();

			while(rs.next()){
                            ub.setIdUnit(rs.getInt("idUnit"));
                            ub.setUnitDesc(rs.getString("unitDesc"));
			}
		} catch (SQLException e) {
				System.out.println(e);
		}
		return ub;
	}

	public void edit_unit(Unit_bean ub){
		DB_Connection obj_DB_Con=new DB_Connection();
		Connection con=obj_DB_Con.get_connection();
		PreparedStatement ps;
		try {
			String query="update unit set unitDesc=? where idUnit=?";
			ps=con.prepareStatement(query);		
			ps.setString(1, ub.getUnitDesc());
			ps.setInt(2, ub.getIdUnit());
			ps.executeUpdate();	
		} catch (SQLException e) {
                    System.out.println(e);
		}
	}
}


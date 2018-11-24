/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author zeina
 */
public class Patient_Edit {
public Patient_Bean get_value_of_patient(int idPerson){
		DB_Connection obj_DB_Con =new DB_Connection();
		Connection con =obj_DB_Con.get_connection();
		
		PreparedStatement ps;
		ResultSet rs;
		Patient_Bean pb = new Patient_Bean();

		try {
			String query="select * from patient where idPerson=?";
			ps=con.prepareStatement(query);		
			ps.setInt(1, idPerson);
			rs=ps.executeQuery();

			while(rs.next()){
                            pb.setIdPerson(rs.getInt("idPerson"));
                            pb.setSsn(rs.getInt("ssn"));
                            pb.setRegisterNo(rs.getString("registerNo"));
                            pb.setDob(rs.getDate("dob"));
                            pb.setBloodGrp(rs.getString("bloodGrp"));
                            pb.setIdNationality(rs.getInt("idNationality"));
                            pb.setIdRegion(rs.getInt("idRegion"));                           
			}
		} catch (SQLException e) {
				System.out.println(e);
		}
		return pb;
	}

	public void edit_patient(Patient_Bean pb){
		DB_Connection obj_DB_Con=new DB_Connection();
		Connection con=obj_DB_Con.get_connection();
		PreparedStatement ps;
		try {
			String query="update patient set ssn=?,registerNo=?,dob=?,bloodGrp=?,idNationality=?,idRegion=?  where idPerson=?";
			ps=con.prepareStatement(query);		
                            ps.setInt(1, pb.getIdPerson());
                            ps.setInt(2, pb.getSsn());
                            ps.setString(3, pb.getRegisterNo());
                            ps.setDate(4, (Date) pb.getDob());
                            ps.setString(5, pb.getBloodGrp());
                            ps.setInt(6, pb.getIdNationality());
                            ps.setInt(7, pb.getIdRegion());

			ps.executeUpdate();	
		} catch (SQLException e) {
                    System.out.println(e);
		}
	}
}


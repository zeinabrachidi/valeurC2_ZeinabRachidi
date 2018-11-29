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
import java.util.Date;

/**
 *
 * @author zeina
 */
public class MedicalAct_Edit {
 public MedicalAct_Bean get_value_of_medicalact(int idMedicalAct){
		DB_Connection obj_DB_Con =new DB_Connection();
		Connection con =obj_DB_Con.get_connection();
		
		PreparedStatement ps;
		ResultSet rs;
		MedicalAct_Bean pb = new MedicalAct_Bean();

		try {
			String query="select * from medicalact where idMedicalAct=?";
			ps=con.prepareStatement(query);		
			ps.setInt(1, idMedicalAct);
			rs=ps.executeQuery();

			while(rs.next()){
                            pb.setIdMedicalAct(rs.getInt("idMedicalAct"));
                            pb.setMedicalActDate(rs.getDate("medicalActDate"));
                            pb.setMedicalactTime(rs.getDate("medicalactTime"));
                            pb.setMedicalactDesc(rs.getString("medicalactDesc"));
                            pb.setIdMedicalCard(rs.getInt("idMedicalCard"));                          
			}
		} catch (SQLException e) {
				System.out.println(e);
		}
		return pb;
	}

	public void edit_medicalact(MedicalAct_Bean mab){
		DB_Connection obj_DB_Con=new DB_Connection();
		Connection con=obj_DB_Con.get_connection();
		PreparedStatement ps;
                
               java.sql.Date sqlDate;
               sqlDate = new java.sql.Date(mab.getMedicalActDate().getTime());
               java.sql.Timestamp sqlTime = new java.sql.Timestamp(mab.getMedicalactTime().getTime());
                
		try {
			String query="update person set medicalActDate=sqlDate,medicalactTime=sqlTime,medicalactDesc=?,idMedicalCard=?  where idMedicalAct=?";
			ps=con.prepareStatement(query);		
                            
                            ps.setInt(1, mab.getIdMedicalAct());
                            ps.setDate(2, (java.sql.Date) mab.getMedicalActDate());
                            ps.setDate(3, (java.sql.Date) mab.getMedicalactTime());
                            ps.setString(4, mab.getMedicalactDesc());
                            ps.setInt(5, mab.getIdMedicalCard());
                            
			ps.executeUpdate();	
		} catch (SQLException e) {
                    System.out.println(e);
		}
	}
}


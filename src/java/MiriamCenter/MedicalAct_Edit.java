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
public class MedicalAct_Edit {
 public MedicalAct_Bean get_value_of_medicalact(int idMedicalAct){
		DB_Connection obj_DB_Con =new DB_Connection();
		Connection con =obj_DB_Con.get_connection();
		
		PreparedStatement ps;
		ResultSet rs;
		MedicalAct_Bean mab = new MedicalAct_Bean();

		try {
			String query="select * from medicalact where idMedicalAct=?";
			ps=con.prepareStatement(query);		
			ps.setInt(1, idMedicalAct);
			rs=ps.executeQuery();

			while(rs.next()){
                            mab.setIdMedicalAct(rs.getInt("idMedicalAct"));
                            mab.setMedicalActDate(rs.getDate("medicalActDate"));
                            mab.setMedicalactDesc(rs.getString("medicalactDesc"));
                            mab.setIdMedicalCard(rs.getInt("idMedicalCard"));                          
			}
		} catch (SQLException e) {
				System.out.println(e);
		}
		return mab;
	}

	public void edit_medicalact(MedicalAct_Bean mab){
		DB_Connection obj_DB_Con=new DB_Connection();
		Connection con=obj_DB_Con.get_connection();
		PreparedStatement ps;
                
                java.util.Date mad =mab.getMedicalActDate();

                java.sql.Date sqlDate = new java.sql.Date(mad.getTime());
                
		try {
			String query="update medicalact set medicalActDate=?, medicalactDesc=?, idMedicalCard=?  where idMedicalAct=?"; 
			ps=con.prepareStatement(query);		

                            ps.setDate(1,  new java.sql.Date (mab.getMedicalActDate().getTime()));
                            ps.setString(2, mab.getMedicalactDesc());
                            ps.setInt(3, mab.getIdMedicalCard());
                            ps.setInt(4, mab.getIdMedicalAct());
                            
			ps.executeUpdate();	
		} catch (SQLException e) {
                    System.out.println(e);
		}
	}
}


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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author zeina
 */
public class MedicalAct_Read {
    
    public static void main(String[] args) {
		MedicalAct_Read mar =new MedicalAct_Read();
		mar.get_values();
	}
    
    public List<MedicalAct_Bean_Read> get_values(){
	DB_Connection obj_DB_Con =new DB_Connection();
	Connection con=obj_DB_Con.get_connection();
        PreparedStatement pst;
	ResultSet rs;
		
	List<MedicalAct_Bean_Read> list=new ArrayList<>();
		
	try {
		String query="select * from q_medicalact";    
                pst=con.prepareStatement(query);		
                rs=pst.executeQuery();

                while(rs.next()){
                    MedicalAct_Bean_Read pb=new MedicalAct_Bean_Read();
                    System.out.println(rs.getInt("idMedicalAct"));
                    System.out.println(rs.getDate("medicalActDate"));
                    System.out.println(rs.getString("medicalactDesc"));
                    System.out.println(rs.getInt("idMedicalCard"));
                    System.out.println(rs.getDate("emissionDate"));
                    System.out.println(rs.getInt("IdPersonPat"));
                    System.out.println(rs.getString("Peron_Data"));

                    pb.setIdMedicalAct(rs.getInt("idMedicalAct"));
                    pb.setMedicalActDate(rs.getDate("medicalActDate"));
                    pb.setMedicalactDesc(rs.getString("medicalactDesc"));
                    pb.setIdMedicalCard(rs.getInt("idMedicalCard"));
                    pb.setEmissionDate(rs.getDate("emissionDate"));
                    pb.setIdPersonPat(rs.getInt("IdPersonPat"));
                    pb.setPeron_Data(rs.getString("Peron_Data"));


                    list.add(pb);
                            }    
		} catch (SQLException e) {
				System.out.println(e);
		}
		return list;
	}
}

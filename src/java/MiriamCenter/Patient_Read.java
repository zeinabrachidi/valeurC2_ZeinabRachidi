/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.sql.*; 
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author zeina
 */
public class Patient_Read {
    
    public static void main(String[] args) {
		Person_Read pr =new Person_Read();
		pr.get_values();
	}
    
    public List<Patient_Bean> get_values(){
	DB_Connection obj_DB_Con =new DB_Connection();
	Connection con=obj_DB_Con.get_connection();
        PreparedStatement pst;
	ResultSet rs;
		
	List<Patient_Bean> list=new ArrayList<>();
		
	try {
		String query="select * from person";    
                pst=con.prepareStatement(query);		
                rs=pst.executeQuery();

                while(rs.next()){
                    Patient_Bean pb=new Patient_Bean();
                    System.out.println(rs.getInt("idPerson"));
                    System.out.println(rs.getInt("ssn"));
                    System.out.println(rs.getString("registerNo"));
                    System.out.println(rs.getDate("dob"));
                    System.out.println(rs.getString("bloodGrp"));
                    System.out.println(rs.getInt("idNationality"));
                    System.out.println(rs.getInt("idRegion"));

                    pb.setIdPerson(rs.getInt("idPerson"));
                    pb.setSsn(rs.getInt("ssn"));
                    pb.setRegisterNo(rs.getString("registerNo"));
                    pb.setDob(rs.getDate("genderdob"));
                    pb.setBloodGrp(rs.getString("bloodGrp"));
                    pb.setIdNationality(rs.getInt("idNationality"));
                    pb.setIdRegion(rs.getInt("idRegion"));

                    list.add(pb);
                }    
            } catch (SQLException e) {
                    System.out.println(e);
		}
		return list;
	}
}


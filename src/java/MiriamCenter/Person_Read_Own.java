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
public class Person_Read_Own {
    
    public List<Person_Bean> get_values(String username, String password){
	DB_Connection obj_DB_Con =new DB_Connection();
	Connection con=obj_DB_Con.get_connection();
        PreparedStatement pst;
	ResultSet rs;
		
	List<Person_Bean> list=new ArrayList<>();
		
	try {
                String query="select * from person where username=? and password=?";    
                pst=con.prepareStatement(query);
                pst.setString(1, username);
                pst.setString(2, password);
                rs=pst.executeQuery();

                while(rs.next()){
                    Person_Bean pb=new Person_Bean();
                    
                    pb.setIdPerson(rs.getInt("idPerson"));
                    pb.setFirstName(rs.getString("firstName"));
                    pb.setLastName(rs.getString("lastName"));
                    pb.setGender(rs.getString("gender"));
                    pb.setMobile(rs.getString("mobile"));
                    pb.setEMail(rs.getString("e_mail"));
                    pb.setIdProfession(rs.getInt("idProfession"));
                    pb.setIdStreet(rs.getInt("idStreet"));
                    pb.setUsername(rs.getString("username"));
                    pb.setPassword(rs.getString("password"));

                    list.add(pb);
                            }    
		} catch (SQLException e) {
				System.out.println(e);
		}
		return list;
	}
}

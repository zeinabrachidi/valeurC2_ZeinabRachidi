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
	ResultSet rs = null;
		
	List<Person_Bean> list=new ArrayList<Person_Bean>();
		
	try {
		System.out.println(username);
                System.out.println(password);
                String query="select * from person where username=?,password=?";    
                pst=con.prepareStatement(query);
                pst.setString(1, username);
                pst.setString(2, password);
                rs=pst.executeQuery();

                while(rs.next()){
                    Person_Bean pb=new Person_Bean();
                    System.out.println(rs.getInt("idPerson"));
                    System.out.println(rs.getString("firstName"));
                    System.out.println(rs.getString("lastName"));
                    System.out.println(rs.getString("gender"));
                    System.out.println(rs.getString("mobile"));
                    System.out.println(rs.getString("e_mail"));
                    System.out.println(rs.getInt("idProfession"));
                    System.out.println(rs.getInt("idStreet"));
                    System.out.println(rs.getString("username"));
                    System.out.println(rs.getString("password"));

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

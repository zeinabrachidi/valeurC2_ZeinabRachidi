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
public class Person_Read {
    
    public static void main(String[] args) {
		Person_Read pr =new Person_Read();
		pr.get_values();
	}
    
    public List<Person_Bean> get_values(){
	DB_Connection obj_DB_Con =new DB_Connection();
	Connection con=obj_DB_Con.get_connection();
        PreparedStatement pst;
	ResultSet rs;
		
	List<Person_Bean> list=new ArrayList<>();
		
	try {
		String query="select * from person";    
                pst=con.prepareStatement(query);		
                rs=pst.executeQuery();

                while(rs.next()){
                    Person_Bean pb=new Person_Bean();
                    System.out.println(rs.getInt("idPerson"));
                    System.out.println(rs.getString("firstName"));
                    System.out.println(rs.getString("lastName"));
                    System.out.println(rs.getString("gender"));
                    System.out.println(rs.getString("mobile"));
                    System.out.println(rs.getString("eMail"));
                    System.out.println(rs.getInt("idProfession"));
                    System.out.println(rs.getInt("idStreet"));
                    System.out.println(rs.getString("username"));
                    System.out.println(rs.getString("password"));

                    pb.setIdPerson(rs.getInt("idPerson"));
                    pb.setFirstName(rs.getString("firstName"));
                    pb.setLastName(rs.getString("lastName"));
                    pb.setGender(rs.getString("gender"));
                    pb.setMobile(rs.getString("mobile"));
                    pb.setEMail(rs.getString("eMail"));
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


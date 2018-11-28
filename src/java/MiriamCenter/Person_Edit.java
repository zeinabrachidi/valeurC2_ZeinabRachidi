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
public class Person_Edit {
public Person_Bean get_value_of_person(int idPerson){
		DB_Connection obj_DB_Con =new DB_Connection();
		Connection con =obj_DB_Con.get_connection();
		
		PreparedStatement ps;
		ResultSet rs;
		Person_Bean pb = new Person_Bean();

		try {
			String query="select * from person where idPerson=?";
			ps=con.prepareStatement(query);		
			ps.setInt(1, idPerson);
			rs=ps.executeQuery();

			while(rs.next()){
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
                            
			}
		} catch (SQLException e) {
				System.out.println(e);
		}
		return pb;
	}

	public void edit_person(Person_Bean pb){
		DB_Connection obj_DB_Con=new DB_Connection();
		Connection con=obj_DB_Con.get_connection();
		PreparedStatement ps;
		try {
			String query="update person set firstName=?,lastName=?,gender=?,mobile=?,e_mail=?,idProfession=?,idStreet=?,username=?,password=?  where idPerson=?";
			ps=con.prepareStatement(query);		
                            
                            ps.setString(1, pb.getFirstName());
                            ps.setString(2, pb.getLastName());
                            ps.setString(3, pb.getGender());
                            ps.setString(4, pb.getMobile());
                            ps.setString(5, pb.getEMail());
                            ps.setInt(6, pb.getIdProfession());
                            ps.setInt(7, pb.getIdStreet());
                            ps.setString(8, pb.getUsername());
                            ps.setString(9, pb.getPassword());
                            ps.setInt(10, pb.getIdPerson());
                            
			ps.executeUpdate();	
		} catch (SQLException e) {
                    System.out.println(e);
		}
	}
}

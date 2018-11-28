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
public class AcceptPersons_Read_Own {
    
    public List<AcceptPersons_Bean_Own> get_values(String username, String password){
	
        DB_Connection obj_DB_Con =new DB_Connection();
	Connection con=obj_DB_Con.get_connection();
        PreparedStatement pst;
	ResultSet rs;	
	
        List<AcceptPersons_Bean_Own> list=new ArrayList<>();
	try {
		String query="select * from q_persontypes where username=? and password=?";    
                
                pst=con.prepareStatement(query);
                pst.setString(1, username);
                pst.setString(2, password);
                rs=pst.executeQuery();

                while(rs.next()){
                    AcceptPersons_Bean_Own apb=new AcceptPersons_Bean_Own();
                    System.out.println(rs.getInt("idPerson"));
                    System.out.println(rs.getString("firstName"));
                    System.out.println(rs.getString("lastName"));
                    System.out.println(rs.getString("username"));
                    System.out.println(rs.getString("password"));
                    System.out.println(rs.getInt("idPersonType"));
                    System.out.println(rs.getString("personTypeDesc"));
                    System.out.println(rs.getBoolean("accepted"));

                    apb.setIdPerson(rs.getInt("idPerson"));
                    apb.setFirstName(rs.getString("firstName"));
                    apb.setLastName(rs.getString("lastName"));
                    apb.setUserName(rs.getString("username"));
                    apb.setPassword(rs.getString("password"));
                    apb.setIdPersonType(rs.getInt("idpersonType"));
                    apb.setPersonTypeDesc(rs.getString("personTypeDesc"));
                    apb.setAccepted(rs.getBoolean("accepted"));

                    list.add(apb);
                 }    
		} catch (SQLException e) {
				System.out.println(e);
		}
		return list;
	}
}

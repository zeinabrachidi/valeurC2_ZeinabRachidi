/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

import java.sql.*;
import java.util.*;

/**
 *
 * @author zeina
 */
public class AcceptPersons_Read {
    public static void main(String[] args) {
	AcceptPersons_Read apr =new AcceptPersons_Read();
	apr.get_values();
    }
    
    public List<AcceptPersons_Bean> get_values(){
	DB_Connection obj_DB_Con =new DB_Connection();
	Connection con=obj_DB_Con.get_connection();
        PreparedStatement pst;
	ResultSet rs;	
	
        List<AcceptPersons_Bean> list=new ArrayList<>();
	try {
		String query="select * from accept_persons";    
                pst=con.prepareStatement(query);		
                rs=pst.executeQuery();

                while(rs.next()){
                    AcceptPersons_Bean apb=new AcceptPersons_Bean();
                    System.out.println(rs.getInt("idPerson"));
                    System.out.println(rs.getInt("idPersonType"));
                    System.out.println(rs.getBoolean("accepted"));

                    apb.setIdPerson(rs.getInt("idPerson"));
                    apb.setIdPersonType(rs.getInt("idpersonType"));
                    apb.setAccepted(rs.getBoolean("accepted"));

                            list.add(apb);
                            }    
		} catch (SQLException e) {
				System.out.println(e);
		}
		return list;
	}
}




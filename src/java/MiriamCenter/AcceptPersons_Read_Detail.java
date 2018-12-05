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
public class AcceptPersons_Read_Detail {
    public static void main(String[] args) {
	AcceptPersons_Read_Detail apr =new AcceptPersons_Read_Detail();
	apr.get_values();
    }
    
    public List<AcceptPersons_Bean_Detail> get_values(){
	DB_Connection obj_DB_Con =new DB_Connection();
	Connection con=obj_DB_Con.get_connection();
        PreparedStatement pst;
	ResultSet rs;	
	
        List<AcceptPersons_Bean_Detail> list=new ArrayList<>();
	try {
		String query="select * from q_persontypes_own";    
                pst=con.prepareStatement(query);		
                rs=pst.executeQuery();

                while(rs.next()){
                    AcceptPersons_Bean_Detail apb=new AcceptPersons_Bean_Detail();
                    System.out.println(rs.getInt("idPerson"));
                    System.out.println(rs.getString("firstName"));
                    System.out.println(rs.getString("lastName"));
                    System.out.println(rs.getInt("idPersonType"));
                    System.out.println(rs.getString("personTypeDesc"));
                    System.out.println(rs.getBoolean("accepted"));

                    apb.setIdPerson(rs.getInt("idPerson"));
                    apb.setFirstName(rs.getString("firstName"));
                    apb.setLastName(rs.getString("lastName"));
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


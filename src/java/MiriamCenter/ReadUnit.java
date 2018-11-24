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
public class ReadUnit {
    public static void main(String[] args) {
		ReadUnit obj_Read_Values=new ReadUnit();
		
		obj_Read_Values.get_values();
	}
    public List<Unit_bean> get_values(){
	DB_Connection obj_DB_Con =new DB_Connection();
	Connection con=obj_DB_Con.get_connection();
	PreparedStatement pst=null;
        ResultSet rs=null;

	List<Unit_bean> list=new ArrayList<>();
		
	try {
		String query="select * from unit";    
                pst=con.prepareStatement(query);		
                rs=pst.executeQuery();

                while(rs.next()){
                    Unit_bean ub=new Unit_bean();
                    System.out.println(rs.getInt("idUnit"));
                    System.out.println(rs.getString("unitDesc"));

                    ub.setIdUnit(rs.getInt("idUnit"));
                    ub.setUnitDesc(rs.getString("unitDesc"));

                    list.add(ub);
            }    
	} catch (SQLException e) {
		System.out.println(e);
            }
		return list;
	}
}


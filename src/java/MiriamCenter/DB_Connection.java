/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MiriamCenter;

/**
 *
 * @author zeina
 */
import java.sql.*; 

public class DB_Connection {
	
	
	public Connection get_connection(){
            String url; 		
            Connection con=null;
		try {
                    Class.forName("com.mysql.jdbc.Driver"); 
                    url = "jdbc:mysql://localhost:3306/valeurC2";
                    con = DriverManager.getConnection(url,"root","Sara00Malek02"); 	
 		
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e);
		}
		return con;
	}
}




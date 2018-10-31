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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB_Connection {
	
	public static void main(String[] args) {
		DB_Connection obj_DB_Connection=new DB_Connection();
		
		System.out.println(obj_DB_Connection.get_connection());
	}
	
	
	
	public Connection get_connection(){
		Connection connection=null;
		try {
		Class.forName("com.mysql.jdbc.Driver"); 
                java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/valeurC2","root","Sara00Malek02"); 	
 		
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e);
		}
		return connection;
	}
}

package oe.utility.Dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;

import oe.utility.interfaces.Interfaces;
/**
 * Data Base Connection
 */
public class DBconnection {
	
	static  Connection con=null;
	
	public static  Connection getConnection() {
	 //loading 
	       try {
	    	   Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
		} catch (Exception e) {
			// TODO Auto-generated catch block
		         
		}
	

 //connection
    
 
	
        return con;
	
}

}

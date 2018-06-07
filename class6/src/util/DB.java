package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {
private static Connection conn;
	
	private DB(){
	}
	
	public static Connection getConnction() throws ClassNotFoundException, SQLException{
		if(conn==null||conn.isClosed()){
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
		}
		return conn;
	}
}

package util;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MySQLConnUtils {
	public static Connection getMySQLConnection()
	        throws ClassNotFoundException, SQLException {
	    String hostName = "remotemysql.com";
	    String dbName = "ACjXS7SSLe";
	    String userName = "ACjXS7SSLe";
	    String password = "HKa4NAvgeG";
	    return getMySQLConnection(hostName, dbName, userName, password);
	}
	 
	public static Connection getMySQLConnection(String hostName, String dbName,
	        String userName, String password) throws SQLException,
	        ClassNotFoundException {
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName+"?setUnicode=true&characterEncoding=UTF-8";
	    Connection conn = DriverManager.getConnection(connectionURL, userName,
	            password);
	    System.out.println("Connected...");
	    return conn;
	}
	
}

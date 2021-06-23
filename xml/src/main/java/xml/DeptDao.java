package xml;

import java.sql.*;
import javax.naming.*;
import javax.sql.*;

public class DeptDao {
	private static DeptDao instance = new DeptDao();
	
	private DeptDao() {};
	
	public static DeptDao getInstance() {
		return instance;
	}
	
	// Database Connection pool
	private Connection getConnection() {
		Connection conn = null;
		try {
			Context ctx = new InitialContext();
			DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		} catch (Exception e) {
			System.out.println("에러 : " + e.getMessage());
		} 
		return conn;
	}
}

package xml;

import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;

public class EmpDao {
	private static EmpDao instance = new EmpDao();
	
	private EmpDao () {};
	
	public EmpDao getInstance() {
		return instance;
	}
	
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

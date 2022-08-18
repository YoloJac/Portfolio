package TeamDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;



public class JDBConnect {
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;
	
	public JDBConnect(String driver, String url, String id, String pw) {
		try {
			Class.forName(driver);
			
			con = DriverManager.getConnection(url, id, pw);
			
			System.out.println();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	

	public JDBConnect(ServletContext application) {
		try {
			String driver = application.getInitParameter("OracleDriver");
			Class.forName(driver);
			
			String url = application.getInitParameter("OracleUrl");
			String id = application.getInitParameter("OracleId");
			String pw = application.getInitParameter("OraclePw");
			con = DriverManager.getConnection(url, id, pw);
			
			System.out.println();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(psmt != null) psmt.close();
			if(con != null) con.close();
			
			System.out.println();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}

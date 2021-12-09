package com.concert.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.concert.util.DBConn;

public class AdminDao {

	private static AdminDao aDao;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	
	private AdminDao() {}

	public static synchronized AdminDao getInstance() {
		if (aDao == null) {
			aDao = new AdminDao();
		}
		return aDao;
	}
	
	public Connection getConnection() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "CONCERT", pw = "0000";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, id, pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public int login(String id, String pw) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "SELECT pw FROM admin WHERE id = ?";
		int result = -1;

		try {
			conn = DBConn.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				// 아이디가 같을 때
				result = 0;
				String dbpw = rs.getString(1);
				if (dbpw.equals(pw)) {
					// 아이디와 비밀번호 모두 같음
					result = 1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConn.rsClose(rs);
			DBConn.stClose(ps);
			DBConn.dbClose();
		}
		return result;
	}
}


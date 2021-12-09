package com.concert.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConn {
	private DBConn() {
	};

	private static Connection dbConn = null;

	public static Connection getConnection() {
		if (dbConn == null) {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				String url = "jdbc:oracle:thin:@localhost:1521:XE";
				String user = "concert";
				String pw = "0000";

				dbConn = DriverManager.getConnection(url, user, pw);
				System.out.println("연결성공");

			} catch (ClassNotFoundException e) {
				System.out.println("드라이버 로드 에러");
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else {

		}
		return dbConn;
	}

	// insert delete update
	public static void close(Statement st) {
		stClose(st);
		dbClose();
	}

	// select
	public static void close(Statement st, ResultSet rs) {
		rsClose(rs);
		stClose(st);
		dbClose();
	}

	// resultset
	public static void rsClose(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
				rs = null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public static void stClose(PreparedStatement ps) {
		if (ps != null) {
			try {
				ps.close();
				ps = null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	// statement
	public static void stClose(Statement st) {
		if (st != null) {
			try {
				st.close();
				st = null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public static void dbClose() {
		if (dbConn == null) {
			try {
				dbConn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

}
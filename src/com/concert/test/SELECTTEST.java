package com.concert.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.concert.util.DBConn;


public class SELECTTEST {

	public static void main(String[] args) {
		Connection conn = DBConn.getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String userId = null;

		try {
			String sql = "select userid from member where name = ? AND tel = ?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, "홍길동");
			pstm.setString(2, "010-1111-1111");
			rs = pstm.executeQuery();
			if (rs.next()) {
				System.out.println(rs.getString("userId"));
				userId = rs.getString("userId");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConn.rsClose(rs);
			DBConn.stClose(pstm);
			DBConn.dbClose();
		}
	} // end main

}

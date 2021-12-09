package com.concert.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.concert.util.DBConn;

public class DBTest {
	public static void main(String[] args) {
		int result = 0;
		Connection conn = DBConn.getConnection();
		Statement st = null;
		PreparedStatement pstmt = null;
//		String sql = "insert into concertuser values (?, ?, ?, ?, ?, ?)";
		String sql = "INSERT INTO BBS (bbsid,bbstitle, userId, bbscontent) "
				+ " VALUES (SEQ_BBSID.nextval, ?, ?, ?)";
//		String sql2 = String.format("INSERT INTO BBS (bbsid,bbstitle,userId,bbscontent) "
//				+ " VALUES (SEQ_BBSID.nextval, '%s', '%s', '%s')", "statement사용", "two", "asdfsad");
//		System.out.println(sql2);
		try {
//			st = conn.createStatement(); // stamtement 사용시 들어감
//			st.executeUpdate(sql2);
			
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "ㅋㅋㅋㅋㅋ?");
			pstmt.setString(2, "two");
			pstmt.setString(3, "성공기원");
			result = pstmt.executeUpdate(); 
//			st = conn.createStatement();
//			for(int i = 1; i <= 10; i++ ) {
//				String sql = "INSERT INTO SEAT (SNUM,CNUM, SNAME) " + 
//						"VALUES (SEQ_SEAT_SNUM.nextval, 3, 'F-"+i+"') ";			
//				System.out.println(sql);
//				st.executeUpdate(sql);
			System.out.println(result + "들어간 건수");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
//			DBConn.stClose(st);
			DBConn.stClose(pstmt);
			DBConn.dbClose();
		}
	}

}


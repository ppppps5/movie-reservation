package com.concert.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.concert.dto.ReservationDto;
import com.concert.util.DBConn;

public class ReservationDao {
	public int addReservation(int cNum, String userId, String[] seats) {
		int result = 0;
		ConcertDao cDao = new ConcertDao();
		String sql = "INSERT INTO RESERVATION (rNum, cnum, userid, sname) " + 
				"VALUES (seq_reservation.nextval, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement ps = null;
		conn = DBConn.getConnection();
		try {
			for(String seat: seats) {
				cDao.addCurrCount(cNum);
				ps = conn.prepareStatement(sql);
				ps.setInt(1, cNum);
				ps.setString(2, userId);
				ps.setString(3, seat);
				result += ps.executeUpdate();
				System.out.println("데이터 " + result + "건 삽입성공");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.stClose(ps);
			DBConn.dbClose();
		}
		return result;
	}
	
	public ReservationDto selectId(String userId) {
		  ReservationDto dto=null;
		  Connection con=DBConn.getConnection();
		  String sql;
		  sql=String.format("select * from reservation where userId = '%s'",userId);
		  System.out.println(sql);
		  Statement st=null;
		  ResultSet rs=null;
		  
		  try {
		   st=con.createStatement();
		   rs=st.executeQuery(sql);
		   while(rs.next()) {
		    dto=new ReservationDto(
		      rs.getInt("rNum"),
		      rs.getInt("cNum"),
		      rs.getString("userId"),
		      rs.getString("SNAME"),
		      rs.getDate("rDate"));
		      
		   }
		   DBConn.close(st,rs);
		  } catch (Exception e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		  }
		  return dto;
		 }
	
	
	public void delete(String rNum) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				Connection con = DBConn.getConnection();
				Statement st = null;

				try {
					st = con.createStatement();
					
					String sql = null;
					sql = String.format("delete reservation where rNum=%s",rNum);
					System.out.println(sql);
					st.executeUpdate(sql);
					DBConn.close(st);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	}
	
	
	
	
}

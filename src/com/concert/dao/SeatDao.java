package com.concert.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.concert.dto.SeatDto;
import com.concert.util.DBConn;

public class SeatDao {
	// cnum에 해당하는 콘서트의 좌석들을 SELECT하는 메소드
	public ArrayList<SeatDto> getSeatList(int cNum){
		ArrayList<SeatDto> dtos = new ArrayList<SeatDto>();
		String sql = "SELECT * FROM SEAT WHERE cNum = ? AND SUSEYN = 'y'";
		Connection conn = DBConn.getConnection();
		PreparedStatement st = null;
		ResultSet rs = null;
		
		try {
			st = conn.prepareStatement(sql);
			st.setInt(1, cNum);
			rs = st.executeQuery();
			while(rs.next()) {
				dtos.add(new SeatDto(
						rs.getInt("sNum"),
						rs.getInt("cNum"),
						rs.getString("sName"),
						rs.getString("sUseYN")
						));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.rsClose(rs);
			DBConn.stClose(st);
			DBConn.dbClose();
			System.out.println("디비 닫음");
		}
		return dtos;
	}
	// 예약된 공연의 좌석을 비활성화 시키는 쿼리
	public int reservated (int cNum, String[] seats) {
		Connection conn = DBConn.getConnection();
		String sql = "update seat set suseyn = 'n' WHERE sname=?";
		PreparedStatement st = null;
		int count = 0;
		SeatDao sDao = new SeatDao();
		ArrayList<SeatDto> sDtos = new ArrayList<SeatDto>();
		sDtos = sDao.getSeatList(cNum);
		for(SeatDto sDto: sDtos) {
			for(String seat: seats) {
				if(sDto.getsName().equals(seat)) {
					System.out.println("if 진입");
					try {
						st = conn.prepareStatement(sql);
						st.setString(1, seat);
						count = count + st.executeUpdate();
						System.out.println("현재 count : " + count);
					} catch (SQLException e) {
						e.printStackTrace();
					} // end catch
				} // end if 
			} // end for
		}// end for
		return count;
	}
	
}

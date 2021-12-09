package com.concert.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.concert.dto.ConcertDto;
import com.concert.util.DBConn;

public class ConcertDao {
	

	public ArrayList<ConcertDto> getConcertList() {

		ArrayList<ConcertDto> dtos = new ArrayList<>();
		Connection conn = DBConn.getConnection();
		String sql = "SELECT * FROM CONCERT";
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				dtos.add(new ConcertDto(
						rs.getInt("cnum"),
						rs.getString("cname"),
						rs.getString("cdirector"),
						rs.getDate("cdate"),
						rs.getString("cuseyn"),
						rs.getInt("cprice"),
						rs.getInt("cmaxpeople"),
						rs.getString("ccontent"),
						rs.getString("imgsrc")
						));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.rsClose(rs);
			DBConn.stClose(ps);
			DBConn.dbClose();
		}
		return dtos;
	}
	
	public ConcertDto getConcertInfo(String cNum) {
		ConcertDto dto = new ConcertDto();
		Connection conn = DBConn.getConnection();
		PreparedStatement st = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM CONCERT WHERE CNUM=?";
		try {
			st = conn.prepareStatement(sql);
			st.setInt(1, Integer.parseInt(cNum));
			rs = st.executeQuery();
			if(rs.next()) {
				dto.setcNum(rs.getInt("cnum"));
				dto.setcName(rs.getString("cName"));
				dto.setcDirector(rs.getString("cdirector"));
				dto.setcDate(rs.getDate("cdate"));
				dto.setcMaxPeople(currCount(cNum));;
				dto.setcPrice(rs.getInt("cPrice"));
				dto.setcUseYN(rs.getString("cuseyn"));
				dto.setcContent(rs.getString("ccontent"));
				dto.setImgSrc(rs.getString("imgsrc"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.rsClose(rs);
			DBConn.stClose(st);
			DBConn.dbClose();
		}
		return dto;
	}
	
	private int currCount(String cNum) {
		int currCount = 0;
		Connection conn = DBConn.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "SELECT cMAXPEOPLE - currcount currCount FROM CONCERT WHERE cNum = ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, Integer.parseInt(cNum));
			rs = ps.executeQuery();
			while(rs.next()) {
				currCount = rs.getInt("currCount");
				System.out.println(currCount);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.rsClose(rs);
			DBConn.stClose(ps);
			DBConn.dbClose();
		}
		return currCount;
	}
	
	public void addCurrCount(int cNum) {
		int result = 0;
		Connection conn = DBConn.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "update concert set currcount = currcount + 1 where cnum = ?";
		try {
		ps = conn.prepareStatement(sql);
		ps.setInt(1, cNum);
		result = ps.executeUpdate();
		System.out.println("현재 예약 관객" + result + "건 삽입성공");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConn.rsClose(rs);
			DBConn.stClose(ps);
			DBConn.dbClose();
		}
	}
}

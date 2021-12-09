package com.concert.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.concert.dto.BbsDto;
import com.concert.util.DBConn;

public class BbsDao {
	public ArrayList<BbsDto> select() {
		ArrayList<BbsDto> dtos = new ArrayList<BbsDto>();

		Connection con = DBConn.getConnection();

		String sql = "select * from bbs order by bbsGroup desc,bbsStep asc";
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				dtos.add(new BbsDto(rs.getInt("bbsId"), rs.getInt("bbsHit"), rs.getInt("bbsGroup"),
						rs.getInt("bbsStep"), rs.getInt("bbsIndent"), rs.getString("userId"), rs.getString("bbsTitle"),
						rs.getString("bbsContent"), rs.getDate("bbsDate")));

			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.close(st, rs);
			DBConn.dbClose();
		}
		return dtos;
	}

	public void insert(String userId, String bbsTitle, String bbsContent) {
		// TODO Auto-generated method stub
		Connection con = DBConn.getConnection();
		Statement st = null;

		try {
			st = con.createStatement();

			String sql = null;
			sql = String.format("insert into bbs(bbsId,userId,bbsTitle,bbsContent,bbsGroup,bbsStep,bbsIndent) "
					+ "values (bbs_seq.nextval,'" + userId + "','" + bbsTitle + "','" + bbsContent + "',"
					+ "bbs_seq.currval,0,0)");
			System.out.println(sql);
			st.executeUpdate(sql);
			DBConn.close(st);
			DBConn.dbClose();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.close(st);
			DBConn.dbClose();
		}
	}

	public BbsDto select(String bbsId) {
		updateHit(bbsId);
		BbsDto dto = null;
		Connection con = DBConn.getConnection();
		String sql;
		sql = String.format("select * from bbs where bbsId=%s order by bbsGroup desc,bbsStep asc ", bbsId);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				dto = new BbsDto(rs.getInt("bbsId"), rs.getInt("bbsHit"), rs.getInt("bbsGroup"), rs.getInt("bbsStep"),
						rs.getInt("bbsIndent"), rs.getString("userId"), rs.getString("bbsTitle"),
						rs.getString("bbsContent"), rs.getTimestamp("bbsDate"));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.close(st, rs);
			DBConn.dbClose();
		}
		return dto;
	}

	public ArrayList<BbsDto> selectId(String userId) {
		ArrayList<BbsDto> dtos = new ArrayList<BbsDto>();
		BbsDto dto = null;
		Connection con = DBConn.getConnection();
		String sql;
		sql = String.format("select * from bbs where userId = '%s' order by bbsGroup desc,bbsStep asc ", userId);
		System.out.println(sql);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				dtos.add(new BbsDto(rs.getInt("bbsId"), rs.getInt("bbsHit"), rs.getInt("bbsGroup"),
						rs.getInt("bbsStep"), rs.getInt("bbsIndent"), rs.getString("userId"), rs.getString("bbsTitle"),
						rs.getString("bbsContent"), rs.getTimestamp("bbsDate")));

			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.close(st, rs);
			DBConn.dbClose();
		}
		return dtos;
	}

	private void updateHit(String bbsId) {
		Connection con = DBConn.getConnection();
		Statement st = null;

		try {
			st = con.createStatement();

			String sql = null;
			sql = String.format("update bbs " + "set bbsHit=bbsHit+1 " + "where bbsId=%s", bbsId);
			System.out.println(sql);
			st.executeUpdate(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.close(st);
			DBConn.dbClose();
		}

	}

	public void delete(String bbsId) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Connection con = DBConn.getConnection();
		Statement st = null;

		try {
			st = con.createStatement();

			String sql = null;
			sql = String.format("delete bbs where bbsId=%s", bbsId);
			System.out.println(sql);
			st.executeUpdate(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.close(st);
			DBConn.dbClose();
		}
	}

	public void update(String bbsId, String bbsTitle, String bbsContent) {
		// TODO Auto-generated method stub
		Connection con = DBConn.getConnection();
		Statement st = null;

		try {
			st = con.createStatement();

			String sql = null;
			sql = String.format("update bbs " + "set bbsContent='%s',bbsTitle='%s' " + "where bbsId=%s", bbsContent,
					bbsTitle, bbsId);
			System.out.println(sql);
			st.executeUpdate(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.close(st);
			DBConn.dbClose();
		}
	}

	public void reply(String bId, String bGroup, String bIndent, String bStep, String bName, String bTitle,
			String bContent) {
		// 같은 그룹에 자기보다 큰스텝을 하나씩 증가하는
		// 작업을 한다.
		replyShape(bGroup, bStep);

		// TODO Auto-generated method stub
		Connection con = DBConn.getConnection();
		Statement st = null;

		try {
			st = con.createStatement();

			String sql = null;
			sql = String.format("insert into mvc_board(bId,bName,bTitle,bContent,bGroup,bStep,bIndent) "
					+ "values (mvc_board_seq.nextval,'" + bName + "','" + bTitle + "','" + bContent + "',"
					+ "%s,%d,%d)", bGroup, Integer.parseInt(bStep) + 1, Integer.parseInt(bIndent) + 1);
			System.out.println(sql);
			st.executeUpdate(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.close(st);
			DBConn.dbClose();
		}

	}

	private void replyShape(String bGroup, String bStep) {
		// bGroup중에서 bstep보다 큰 데이터들을 하나씩 증가시킨다.
		Connection con = DBConn.getConnection();
		PreparedStatement ps = null;

		try {

			String sql = null;
			sql = "update mvc_board " + "set bstep=bstep+1 " + "where bGroup=? and bstep > ?";
			System.out.println(sql);
			ps = con.prepareStatement(sql);
			ps.setInt(1, Integer.parseInt(bGroup));
			ps.setInt(2, Integer.parseInt(bStep));

			ps.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			  DBConn.close(ps);
			  DBConn.dbClose();
		  }
	}

}

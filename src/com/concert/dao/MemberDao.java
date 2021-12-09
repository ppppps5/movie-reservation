package com.concert.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.concert.dto.MemberDto;
import com.concert.util.DBConn;

public class MemberDao {
	
	public int login(String id, String pw) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "SELECT userPw FROM MEMBER WHERE userId = ?";
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

	public int duplicateId(String userId) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "select * from member where userId = ?";
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if (rs.next() || userId.equals("")) {
				return 0; // 중복 아이디
			} else {
				return 1; // 가입 가능
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1; // 데이터 베이스 오류
	}

	public int join(String userId, String userPw, String name, String tel, String email, String birth, String gender,
			String address, String addressDetail) {
		Connection con = DBConn.getConnection();
		Statement st = null;

		try {
			st = con.createStatement();
			String sql = null;
			sql = String.format("insert into member(userId,userPw,name,tel,email,birth,gender,address,addressDetail) "
					+ "values (" + "'" + userId + "'," + "'" + userPw + "','" + name + "','" + tel + "','" + email
					+ "','" + birth + "','" + gender + "','" + address + "','" + addressDetail + "')");
			st.executeUpdate(sql);
			System.out.println(sql);
			DBConn.close(st);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.close(st);
			DBConn.dbClose();
		}
		return 0;
	}

	// 0806 추가
	// 회원정보 출력을 위한 매소드 추가본
	public MemberDto select(String userId) {
		MemberDto dto = null;
		Connection con = DBConn.getConnection();
		String sql;
		sql = String.format("select * from member where userId=%s ", userId);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				dto = new MemberDto(rs.getString("userId"), rs.getString("userPw"), rs.getString("name"),
						rs.getString("tel"), rs.getString("email"), rs.getString("birth"), rs.getString("gender"),
						rs.getString("address"), rs.getString("addressDetail"));

			}
			DBConn.close(st, rs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.close(st, rs);
			DBConn.dbClose();
		}
		return dto;
	}

	public ArrayList<MemberDto> select() {
		ArrayList<MemberDto> dtos = new ArrayList<MemberDto>();

		Connection con = DBConn.getConnection();

		String sql = "select * from member ";
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				dtos.add(new MemberDto(rs.getString("userId"), rs.getString("userPw"), rs.getString("name"),
						rs.getString("tel"), rs.getString("email"), rs.getString("birth"), rs.getString("gender"),
						rs.getString("address"), rs.getString("addressDetail")));

			}
			DBConn.close(st, rs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConn.close(st, rs);
			DBConn.dbClose();
		}
		return dtos;
	}

	// 0820 추가
	@SuppressWarnings("null")
	public String findPw(String userId, String email, String name) {
		String userPw = null;
		Connection conn = DBConn.getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			String sql = "select userPw from member where userId=? and tel=? and name = ?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, userId);
			pstm.setString(2, email);
			pstm.setString(3, name);
			rs = pstm.executeQuery();
			if (rs.next()) {
				userPw = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConn.rsClose(rs);
			DBConn.stClose(pstm);
			DBConn.dbClose();
		}
		return userPw;
	}

	public String findId(String name, String tel) {
		Connection conn = DBConn.getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String userId = null;

		try {
			String sql = "select userid from member where name = ? AND tel = ?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, name);
			pstm.setString(2, tel);
			rs = pstm.executeQuery();
			if (rs.next()) {
				userId = rs.getString("userId");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConn.rsClose(rs);
			DBConn.stClose(pstm);
			DBConn.dbClose();
		}
		return userId;
	}
	
	public MemberDto selectId(String userId) {
		  MemberDto dto=null;
		  Connection con=DBConn.getConnection();
		  String sql;
		  sql=String.format("select * from member where userId = '%s'",userId);
		  System.out.println(sql);
		  Statement st=null;
		  ResultSet rs=null;
		  
		  try {
		   st=con.createStatement();
		   rs=st.executeQuery(sql);
		   while(rs.next()) {
		    dto=new MemberDto(
		      rs.getString("userId"),
		      rs.getString("userPw"),
		      rs.getString("name"),
		      rs.getString("tel"),
		      rs.getString("email"),
		      rs.getString("birth"),
		      rs.getString("gender"),
		      rs.getString("address"),
		      rs.getString("addressDetail"));
		      
		   }
		   DBConn.close(st,rs);
		  } catch (Exception e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		  }
		  return dto;
		 }

	public void update(String userId, String userPw, String name, String tel, String email, String birth, String gender, String address, String addressDetail) {
		// TODO Auto-generated method stub
		Connection con = DBConn.getConnection();
		Statement st = null;

		try {
			st = con.createStatement();
			
			String sql = null;
			sql = String.format("update member "
			+"set userPw='%s',name='%s' ,tel='%s' ,email='%s' ,birth='%s' ,gender='%s' ,address='%s' ,addressDetail='%s'"
			+ "where userId='%s'",userPw,name,tel,email,birth,gender,address,addressDetail,userId);
			System.out.println(sql);
			st.executeUpdate(sql);
			DBConn.close(st);
			DBConn.dbClose();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	} 
	
}
package com.ih.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDao {
	public static final int MEMBER_NONEXISTENT = 0;
	public static final int MEMBER_EXISTENT = 1;
	public static final int MEMBER_JOIN_FAIL = 0;
	public static final int MEMBER_JOIN_SUCCESS = 1; 
	public static final int MEMBER_LOGIN_PW_NO_GOOD = 0;
	public static final int MEMBER_LOGIN_SUCCESS = 1;
	public static final int MEMBER_LOGIN_IS_NOT = 0;	
	
	private static MemberDao instance = new MemberDao();
	
	public MemberDao() {		
	}
	public static MemberDao getInstance() {
		return instance;
	}
	
	private Connection getConnection() {
		Context context = null;
		DataSource ds = null;
		Connection con = null;
		try {
			context = new InitialContext();
			ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
			con  = ds.getConnection();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return con;		
	}
	
	public int insertMember(MemberDto dto) {
		int ri = 0;			Connection con = null;		PreparedStatement pstmt = null;
		String query = "insert into membership2 values (?,?,?,?,?)";		
		try {
			con = getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getGender());
			
			pstmt.executeUpdate();
			
			ri = MemberDao.MEMBER_JOIN_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}		
		return ri;
	}
	
	public MemberDto getMember(String id) {
		Connection connection = null; 		PreparedStatement pstmt = null;		ResultSet set = null;
		String query = "select * from membership2 where id = ?";
		MemberDto dto = null;		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			set = pstmt.executeQuery();
			
			if(set.next()) {
				dto = new MemberDto();
				dto.setId(set.getString("id"));				dto.setPw(set.getString("pw"));
				dto.setName(set.getString("name"));	dto.setEmail(set.getString("eMail"));
				dto.setGender(set.getString("gender"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				set.close();				pstmt.close();				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}		
		return dto;		
	}
	
	public int updateMember(MemberDto dto) {
		int ri = 0;		
		Connection connection = null;
		PreparedStatement pstmt = null;
		String query = "update membership2 set pw=?, eMail=?, gender=? where id=?";
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, dto.getPw());
			pstmt.setString(2, dto.getEmail());
			pstmt.setString(3, dto.getGender());
			pstmt.setString(4, dto.getId());
			ri = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}		
		return ri;
	}
	
	public int confirmId(String id) { // 회원 가입할 때,  ID 중복 체크
		int ri = 0;		
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet set = null;
		String query = "select id from membership2 where id = ?";
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			set = pstmt.executeQuery();
			if(set.next()){
				ri = MemberDao.MEMBER_EXISTENT;	// 이미 ID가 존재하므로 신규 ID 필요
			} else {
				ri = MemberDao.MEMBER_NONEXISTENT; // 회원가입이 가능한 상태 
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				set.close();
				pstmt.close();
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return ri;
	}
	
	public int userCheck( String id, String pw) {  // 로그인 ID/PW 확인 
		int ri = 0;
		String dbPw;
		
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet set = null;
		String query = "select pw from membership2 where id = ?";
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			set = pstmt.executeQuery();
			
			if(set.next()) {  // next는  콘솔이 이동할 위치(next)가 존재하는냐? 는  의미를 가짐 
				dbPw = set.getString("pw");
				if(dbPw.equals(pw)) {
					ri = MemberDao.MEMBER_LOGIN_SUCCESS;				// 로그인 ok
				} else {
					ri = MemberDao.MEMBER_LOGIN_PW_NO_GOOD;		// 패스워드 오류
				}
			} else {
				ri = MemberDao.MEMBER_LOGIN_IS_NOT;		//존재하지 않는 회원
			}			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				set.close();
				pstmt.close();
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return ri;
	}
}

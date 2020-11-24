package com.ih.ch9;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import SHA256Util.SHA256Util;

public class MemberDAO {
	// 필드 영역 
	// static으로 객체 생성 (데이터 영역에 저장됨)
	private static MemberDAO instance= new MemberDAO();
	
	// 생성자 영역 
	public MemberDAO() { 
		
	}
	
	// 메소드 영역
	// 생성된 인스턴스 반환
	public static MemberDAO getInstance() {
		return instance;
	}
	public Connection getConnection() {		
		Context initContext;
		Connection conn = null;
		try {
			initContext = new InitialContext();
			// 프로젝트 룩업 테이블
			Context evnContext = (Context) initContext.lookup("java:/comp/env");
			// 프로젝트 룩업 테이블에 포함된 리소스 검색
			DataSource ds = (DataSource) evnContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();			
		} catch (Exception e) {
			// e.printStackTrace();
			System.out.println("getConnection err: " + e );
		}
	
		return conn;
	}
	
/*	// connection 획득
	public Connection getConnection() {
		Connection conn = null;
		try {
			//(1 단계) oracle용 JDBC 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");		
		
			// express edition
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			
			//	oracle, 기업용
			//String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			
			String uid = "system";
			String pass = "1234";
			
			//(2 단계) 데이터베이스 연결 객체인 Connection 생성
			// conn은 oracle DBMA에 접근하기 위한 통로
			// conn 이 존재하여 쿼리문을 날릴수 있다(실행할 수 있다)
			conn = DriverManager.getConnection(url, uid, pass);
		} catch (Exception e) {
			System.out.println("DB접속에 오류가 발생하였습니다.");
		} 
		return conn;		
	}*/

	// 사용자 인증시 사용하는 메소드
		public int userCheck(String userid, String pwd) {
			int result = -1;
			String sql = "select pwd from member_sha where userid=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			// 복호화된 패스워드
	        String newPassword = SHA256Util.getEncrypt(pwd, userid);
	        
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userid);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					if (rs.getString("pwd") != null
							&& rs.getString("pwd").equals(newPassword)) {
						result = 1;
					} else {
						result = 0;
					}
				} else {
					result = -1;
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return result;
		}
		
	public int insertMember(MemberVO mVo) {
		int result = -1;  // 에러처리; 
		String sql=" insert   into member_sha "
				+ "values (?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pre = null;		
	
		try {
			conn = getConnection();
			pre = conn.prepareStatement(sql);
			pre.setString(1, mVo.getUserid());
			pre.setString(2, mVo.getPwd());
		//	pre.setString(3, mVo.getSalt());
			pre.setString(3, mVo.getName());
			pre.setString(4, mVo.getEmail());
			pre.setString(5, mVo.getPhone());
			pre.setInt(6, mVo.getAdmin());
			
			result = pre.executeUpdate(); // ok:1
			
		} catch (SQLException e) {
			//System.out.println("insert 오류");
			e.printStackTrace();
		} finally {			
			try {
				if (pre!=null) pre.close();
				if (conn!=null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
				//System.out.println("system close 오류");
			}
		}
		return result;
		
	}

	public int confirmID(String userid) {
		int result = -1;
		String sql = "select userid from member_sha where userid=?";
		// String sql2 = "select userid from member_sha where userid="+userid;
		Connection conn = null;
		PreparedStatement pre = null;
		ResultSet rs = null;			
		try {
			conn = getConnection();
			pre = conn.prepareStatement(sql);
			pre.setString(1, userid);
			rs = pre.executeQuery();
			//rs = pre.executeQuery(sql2);
			if (rs.next()) {
				result =1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {			
				try {
					if (rs!=null) rs.close();
					if (pre!=null) pre.close();
					if (conn!=null) conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}			
		}
		return result;		
	}

	public MemberVO getMember(String userid) {
		MemberVO mVo = null;
		String sql = "select * from member_sha where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				mVo = new MemberVO();
				mVo.setName(rs.getString("name"));
				mVo.setUserid(rs.getString("userid"));
				mVo.setPwd(rs.getString("pwd"));
			//	mVo.setSalt(rs.getString("salt"));
				mVo.setEmail(rs.getString("email"));
				mVo.setPhone(rs.getString("phone"));
				mVo.setAdmin(rs.getInt("admin"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mVo;
	}

	public int updateMember(MemberVO mVo) {
		int result = -1;
		String sql = "update member_sha set pwd=?, email=?,"
				+ "phone=?, admin=? where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getPwd());
			pstmt.setString(2, mVo.getEmail());
			pstmt.setString(3, mVo.getPhone());
			pstmt.setInt(4, mVo.getAdmin());
			pstmt.setString(5, mVo.getUserid());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
		
	}
	
	


}

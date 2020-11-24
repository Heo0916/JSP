package com.ih.ch9;

public class MemberVO {   // 이름을 MemberDTO 로 사용하기도 함 */
	private String userid;  /* 아이디,  */
	private  String pwd;     /* not null, 비번 */
	private  String salt;
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}

	private  String name;    /* not null, 이름 */
	private  String email;   /* 이메일 */
	private  String phone;   /* 폰 */
	private  int admin;   /* default 0, /* 관리자 구분 (0:사용자, 1:관리자)*/
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	  
	@Override
	public String toString() {		
		return "MemberVO [name=" + name 
				+ ", userid=" + userid 
				+ ", pwd=" + pwd
				+ ", email=" + email
				+ ", phone=" + phone 
				+ ", admin=" + admin
				+ "]";
	}	  
}

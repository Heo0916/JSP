package com.ih.ch9;

public class MemberVO {   // �̸��� MemberDTO �� ����ϱ⵵ �� */
	private String userid;  /* ���̵�,  */
	private  String pwd;     /* not null, ��� */
	private  String salt;
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}

	private  String name;    /* not null, �̸� */
	private  String email;   /* �̸��� */
	private  String phone;   /* �� */
	private  int admin;   /* default 0, /* ������ ���� (0:�����, 1:������)*/
	
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Join.jsp</title>

<!-- 데이터 타당성 체크 (Validation Check) -->
<script type="text/javascript"  src="members.js"   charset="utf-8"   >     </script>
<!-- <script type="text/javascript"  src="address.js"   charset="utf-8"   >     </script>
 -->
 
</head>
<body>
	<form  action="joinOk.jsp"	method="post"    name="reg_frm" >
		아이디 : <input	type="text"	 name="id"	  size="20" > <br>
		비밀번호 : <input	type="text"	 name="pw"	 size="20" > <br>		
		비밀번호 확인 : <input	type="text"	 name="pw_check"	 size="20" > <br>			
			
		이름 : <input	type="text"	 name="name"	  size="20" > <br>
		이메일 : <input	type="text"	 name="eMail"	 size="20" > <br>
		주소 : <input	type="text"	 name="address"	 size="20" > <br>

	 <input	type="submit"	  value="회원가입"  onclick="infoConfirm()"> 
	 &nbsp;&nbsp;  &nbsp;  &nbsp;    
	 <input	type="reset"	  value="취소" 
	 	onclick="javascript:window.location='login.jsp'">

	</form>
</body>
</html>
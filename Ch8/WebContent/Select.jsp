<!-- Select.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="get" action="select">
		<span style="float: left; margin-right: 5px"> <label for="job">
				직업 </label> <!--  select option을 만든다! --> <select id="job" name="job"
			size="1">
				<option value="">선택하세요</option>
				<option value="학생">학생</option>
				<option value="공무원 ">공무원</option>
				<option value="군인 ">군인</option>
				<option value="회사원 ">회사원</option>
		</select>
		</span> 
		
		<span style="float: left; margin-right: 5px"> 
			<label for="interest"> 관심분야 </label> 
			<!--  multi select option을 만든다! --> 
			<select	id="interest" name="interest" size="5" multiple="multiple">
				<option value="에스프레소">에스프레소</option>
				<option value="로스팅">로스팅</option>
				<option value="생두 ">생두</option>
				<option value="원두">원두</option>
				<option value="핸드드립">핸드드립</option>
		</select>
		</span> 
		<input type="submit" value="전송"> <br>
	</form>

</body>
</html>
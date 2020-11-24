
<!-- scriptlet.jsp  스크립 + 애플릿 : 스크립트릿 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<%
	int i = 0;
	while(true) {
		i++;
		out.println(" 5 * " + i + " = " + (5*i)  +"<br>");
		System.out.println("===== jsp file ===== ");	
%>
	<h3> 이부분은 HTML 입니다 </h3>
<%
		if (i==9)
			break;
		}
%>
	<h3> 이부분도 HTML 입니다 </h3>
</body>

</html>
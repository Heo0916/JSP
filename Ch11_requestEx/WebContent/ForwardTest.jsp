<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 파라미터와 애트리뷰트의 차이점 -->

<!-- ctl+shift+/
	'A',  "ABC1234",  '\0' = NULL (특수문자는 \ + 아스키코드)
	'\\' = \,  '\"' = " (특수문자는 \ + 특수문자)
  -->
<%
	int age = Integer.parseInt(request.getParameter("age"));
	if (age < 19) {
%>
<script type="text/javascript">
	alert("19세 미만이므로 입장 불가!")
	history.go(-1);
</script>
<%
	} else {
		request.setAttribute("name", "지구");
		request.setAttribute("gender", "female");
		request.setAttribute("mobile", "010-1234-5678");

		RequestDispatcher dis = request
				.getRequestDispatcher("ForwardResult.jsp");
		dis.forward(request, response);
	}
%>
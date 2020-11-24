<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>reserach.jsp</title>
</head>
<body>
<h2>설문조사 결과</h2>
<%
	request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    out.println("이름 :  <b>" + name + " </b>  <br>");
    
    String gender = request.getParameter("gender");
    if( gender.equals("male")) {
    	out.println("<b>남자<b><br>");
    } else {
    	out.println("<b>여자<b><br>");
    }
    //out.println("성별 :  <b>" + gender + " </b>  <br>");
    
    String seasonArr[] = request.getParameterValues("season");
    out.println("좋아하는 계절은");
    for (String season : seasonArr ) {
    	int n = Integer.parseInt(season);
    	switch (n) {
    	case 1 : out.println("<b>봄<b>입니다<br>");
    		break;
    	case 2 : out.println("<b>여름<b>입니다<br>");
    		break;
    	case 3 : out.println("<b>가늘<b>입니다<br>");
    		break;
    	case 4 : out.println("<b>겨울<b>입니다<br>");
    		break;    		
    	}
    }
/* int length = seasonArr.length;
    int i;
    for (i=0;  i<length;  i++ ) {
    	if (seasonArr[i].equals("1")) {
    		out.println("<b>봄<b>입니다<br>");
    	}
    	.....
    } */
    %>
    <br> <b> <a href="javascript:history.go(-1)">다시</a></b>

</body>
</html>
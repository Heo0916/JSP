<!-- Expression.jsp   ctl+shift+\  --> 
<!-- @ : system���� �˷��ִ� ǥ��(��) -->
<!--  page : ������(���)	language : ���	contentType : charset�� ����� ��������(html/utf-8) �� ���
	pageEncoding : ���� ������ ���ڵ� ���
-->
<%-- <%@ page  language="java"   contentType="text/html; charset=UTF-8"   
		pageEncoding="UTF-8"  %>
 --%>
 <%@page import="java.util.Arrays"   %>
<%@ page  language="java"   contentType="text/html; charset=euc-kr"   
 		pageEncoding="euc-kr"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- meta : ��Ÿ����(�ǹ̸� �Ͻ�) -->
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<title>JSP ***** </title> <!-- ������ ��� ���� -->
</head>
<body>
<%!   /* !  : ����  */
	int i = 10;
	String str = "abc";
	private int sum(int a,  int b) {
		return a+b;
	}
%>


i => 		<%= i %> <br>  <!-- =  : ��¹�  --> 
str => 	<%= str  %> <br> 
<h2>sum => </h2> <%= sum(1,5) %> 

<%
	int[] iArr = { 10, 20, 30 };
	out.println( Arrays.toString(iArr)  ); 
%>



</body>
</html>

<!-- ��Ŭ���� ����Ű
      ctl + c : ����
	  ctl + v : �̵�
	  ctl + / : ���� Ŀ��Ʈ
  -->
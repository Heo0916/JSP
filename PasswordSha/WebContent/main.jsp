<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>ȸ�� ���� ������</h2>
	<form action="logout.do">
		<table>
			<tr>
				<td>�ȳ��ϼ���. ${loginUser.name}(${loginUser.userid})��</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit"
					value="�α׾ƿ�"> &nbsp;&nbsp; 
					<input type="button"
					value="ȸ����������"
					onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
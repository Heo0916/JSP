<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>ȸ�� ����</h2>
	<form action="memberUpdate.do" method="post" name="frm">
		<table>
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="name" size="20"
					value="${mVo.name}" readonly></td>
			</tr>
			<tr>
				<td>���̵�</td>
				<td><input type="text" name="userid" size="20"
					value="${mVo.userid}" readonly></td>
			</tr>
			<tr>
				<td>�� &nbsp; ȣ</td>
				<td><input type="password" name="pwd" size="20">*</td>
			</tr>
			<tr height="30">
				<td width="80">��ȣ Ȯ��</td>
				<td><input type="password" name="pwd_check" size="20">*</td>
			</tr>
			<tr>
				<td>�̸���</td>
				<td><input type="text" name="email" size="20"
					value="${mVo.email}"></td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td><input type="text" name="phone" size="20"
					value="${mVo.phone}"></td>
			</tr>
			<tr>
				<td>���</td>
				<td>
					<c:choose>
						<c:when test="${mVo.admin==0}" >
							<input type="radio" name="admin" value="0" checked="checked"> �Ϲ�ȸ��*
							<input type="radio" name="admin" value="1"> ������*
						</c:when>
						<c:otherwise>
						<input type="radio" name="admin" value="0" > �Ϲ�ȸ��*
							<input type="radio" name="admin" value="1" checked="checked"> ������*
						</c:otherwise>
	
					</c:choose>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="Ȯ��"
					onclick="return joinCheck()">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				<input type="reset" value="���">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
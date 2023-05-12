<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if(id != null) { %>

	<h4><%=id %>님 환영합니다</h4>
	<p>즐거운 하루 되세요</p>
	<p>메롱 입니다</p>
	<a href="logout.jsp">로그아웃</a>
	
<% } else { %>

	<form method="post" name="loginFrm" action="loginProc.jsp">
		<table style="text-align: center; background-color:beige" align="center">
			<tr>
				<th colspan="2">로그인</th>
			</tr>
			<tr>
				<td>아 이 디</td>
				<td><input type="text" name="id" required></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pwd" required></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인">&emsp;&emsp;
					<input type="button" value="회원가입" onclick="location.href='member.jsp'">
				</td>
			</tr>
		</table>
	</form>
<% } %>
</body>
</html>
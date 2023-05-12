<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id = "mMgr" class="member.MemberMgr"/>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	boolean result = mMgr.loginMember(id, pwd);
	
	String msg = "로그인에 실패했습니다";
	if(result) {
		session.setAttribute("idKey", id);
		msg = "로그인이 되었습니다";
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	alert("<%=msg %>");
	location.href="login.jsp";
</script>
</body>
</html>
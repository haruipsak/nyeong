<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - response</title>
</head>
<body>
	<h2>1. 로그인 폼</h2>
	<%
	 String loginErr = request.getParameter("loginErr");
	if(loginErr != null) out.print("로그인 실패");
	
	%>
	<form action="./ResponseLogin.jsp" method="post">
	아이디:	<input type="text" name=user_id /> <br />
	패스워드: 	<input type="text" name="user_pwd"/><br />
			<input type="submit" value="로그인"><br />
	</form>
	<h2>2. HTTP 응답 해더 설정하기</h2>
	
	<form action="./ResponseHeader.jsp" method="get"><br />
	날짜 형식:	<input type="text" name = "add_date" value="2021-10-25 09:00"/><br />
	숫자 형식:	<input type="text" name = "add_int" value="8282"/><br />
	문자 형식:	<input type="text" name = "add_name" value="유아로"/><br />
		<input type="submit" values= "응답 헤더 설정 및 출력ㄴ" /><br />
	</form>
</body>
</html>
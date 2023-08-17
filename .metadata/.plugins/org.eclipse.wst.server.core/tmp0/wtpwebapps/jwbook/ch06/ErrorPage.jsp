<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="IsErrorPage.jsp"%> <!-- 에러페이지 지정 -->

<%-- 에러페이지 지정: jsp 주석 화면과 소스 보기에서 보이지 않음--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//예외발생 부분 try catch로 감싼다.
int myAge = Integer.parseInt(request.getParameter("age")) + 10; // 에러 발생
	out.println("10년 후 당신의 나이는" + myAge + " 입니다.");

%>
</body>
</html>
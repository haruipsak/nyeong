<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="IsErrorPage.jsp" %> <!-- 에러 페이지 지정 -->
<%-- 에러 페이지 지정: jsp 주석: 화면과 소스보기에서 보이지 않음 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - errorPage, isErrorPage 속성</title>
</head>
<body>
<%
//예외 발생 부분을 try/catch 로 감쌉니다.
	int myAge = Integer.parseInt( request.getParameter("age") ) + 10;   //에러 발생
	out.println("10년 후 당신의 나이는 " + myAge + "입니다.");  //실행되지 않음
%>
</body>
</html>
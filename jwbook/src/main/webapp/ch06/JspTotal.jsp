<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 종합 예제</title>
</head>
<body>
<h2>JSP 종합 예제</h2>
<hr />
<%! 
//선언태그
String[] members = {"홍길동", "이순신", "김유신", "강감찬"};
int num1 = 10;

int calc(int num2){
	return num1 + num2;	
}%>
<h3>1. jsp 주석 </h3>
	<!-- HTML 주석: 화면에서는 안보이고 소스보기에서는 보임  -->
	<%--JSP 주석: 화면과 소스 보기에서 보이지 않음  --%>
	
<h3>2. calc(10) 메서드 실행 결과 표현식 결과: <%= calc(10) %></h3>

<h3>3. include: hello.jsp </h3>
<%@ include file="../hello.jsp" %>

<h3>4. 스크립트릿(배열 데이터 출력)</h3>
<ul>
 <%
 for(String name: members){
%>
	<li><%= name%></li>
<% } %>
</ul>


</body>
</html>
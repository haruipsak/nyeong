<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제목 출력 사용자 정의태그</title>
</head>
<body>

	<tf:header title="텍스트제목" level="2"/>
	
	<tr:header title="${'EL 제목' }" level="3"/>
	<tr:header title='<%="표현식 제목" %>'/>

</body>
</html>
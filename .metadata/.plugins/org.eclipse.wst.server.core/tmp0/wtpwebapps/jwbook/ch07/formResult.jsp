<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL- 폼처리</title>
</head>
<body>
<%--
request.getParameter("변수명") -> $(param.변수명)
request.getParameter("변수명") -> $(paramValues.변수명)

 --%>
 <h3>el로 폼갑</h3>
 	<ul>
 		<li>이름: ${param.name}</li>
 		<li>성별: ${param.gender }</li>
 		<li>학력: ${param.grade }</li>
 		<li>관심사항: ${paramValues.inter[0]}
 					${paramValues.inter[1]}
 					${paramValues.inter[2]}
 					${paramValues.inter[3]}</li>
 	</ul>



</body>
</html>
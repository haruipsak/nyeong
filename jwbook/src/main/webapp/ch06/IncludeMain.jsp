<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "IncludeFile.jsp" %> <%-- 다른 JSP 파일 포함 --%>
<%-- <%@ taglib tagdir="/WEB-INF/tags" prefix="m" %>--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include  지시어</title>
</head>
<body>
<%
out.println("오늘 날짜: " + today);
out.println("<br / >");
out.print("내일 날짜: " + tomorrow);

%>


</body>
</html>
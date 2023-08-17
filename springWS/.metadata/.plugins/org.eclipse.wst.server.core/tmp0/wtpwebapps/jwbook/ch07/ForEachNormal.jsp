<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- jsp로 구구단
	<table border="1">
		<%for (int dan=2; dan<=9; dan++){  %>
		<tr>
			<%for (int su=1; su<=9; su++){ %>
			<td>
				<%=dan%> * <%=su%> = <%= dan * su %>
			</td>
			<%}%>
		</tr>
		<%}%>
	</table>
--%>

<!-- jstl로 구현한 구구단 -->	
	<table border="1">
		<c:forEach begin="2" end="9" var="dan">
		<tr>
			<c:forEach begin="1" end="9" var="su">
				<td>
					${dan} * ${su} = ${dan*su}
				</td>
			</c:forEach>
		</tr>
		</c:forEach>
	</table>
	
	
	
</body>
</html>
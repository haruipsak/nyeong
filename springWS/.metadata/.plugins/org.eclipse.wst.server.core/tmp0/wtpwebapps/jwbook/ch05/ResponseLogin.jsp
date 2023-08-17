<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 - response</title>
</head>
<body>
<%
	String id = request.getParameter("user_id");
	String pwd = request.getParameter("user_pwd");
	// 맞는 id/pwd  ex. kosmo / 1234
	if(id.equalsIgnoreCase("kosmo") && pwd.equalsIgnoreCase("1234")) {
		response.sendRedirect("ResponseWelcome.jsp");  //로그인 성공 페이지
		//  자바스크립트의  location.href와 같은 기능이라 보면 됩니다.
	}
	else {
		request.getRequestDispatcher("ResponseMain.jsp?loginErr=1")
		.forward(request, response);
	}

%>
</body>
</html>
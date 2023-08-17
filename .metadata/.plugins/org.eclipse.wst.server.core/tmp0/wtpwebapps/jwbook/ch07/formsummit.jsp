<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL- 폼값 처리</title>
</head>
<body>
<h2></h2>
<form name="frm" action="formResult.jsp">
	이름: <input type="text" name="name" /><br />
	성별: <input type="radio" name="gender" value="Man"/>남자
	 	 <input type="radio" name="gender" value="Woman"/>여자<br />
	학력: <select name="grade" id=""><br />
			<option value="ele">초졸</option>
			<option value="mid">중졸</option>
			<option value="high">고졸</option>
			<option value="uni">대졸</option>
	</select>
	관심사항: 
	<input type="checkbox" name="inter" value="poL" /> 정치
	<input type="checkbox" name="inter" value="eco" /> 경제
	<input type="checkbox" name="inter" value="ent" /> 연예
	<input type="checkbox" name="inter" value="spo" /> 스포츠 <br />
	
	<input type="submit" value="전송하기"/>
	
	
</form>

</body>
</html>
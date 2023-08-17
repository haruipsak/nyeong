<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 종합 예제</title>
</head>
<body>
<%-- core 라이브러리 
변수 관련: set, remove -변수 지정과 삭제       ex)c:set 
제어: if, choose, when otherwise: 조건처리, forEach: 반복, forToknes: 토큰파싱
url 관리태그: umport, redirect, url, param :url핸들링
기타: catch, out 에러처리, 출력
--%>
<h2>JSTL 종합 예제</h2>
<hr />

<!-- set(jstl태그): 내장객체 setAttribute() 메서드사용과 동일, out -->
<c:set var="product1" value="<b>애플 아이폰</b>"/>
<c:set var="product2" value="삼성 갤럭시 노트" />
<!-- <c:set var="intArray" value="${[1,2,3,4,5]}" /> 에러 표시 무시 -->

<p>
	product(jst1):
	<c:out value="${product1}" default="Not registred" escapeXml="true"/>
	<!-- escapeXml: 태그데이터 일반 문자열로 처리 -->
	</p>

<p>product1(e1):${product1}</p>
<p>intArray[2]:${intArray[2]}</p>

<!-- forEach -->
<h3>forEach: 배열 출력</h3>
<ul>
	<c:forEach var="num" varStatus="i" items="${intArray}">
	<li>${i.index}: ${num}</li>
	</c:forEach>
</ul>

   <!-- if : jstl 태그 가장 널리 사용되는 태그 중 하나임. -->
   <h3>if</h3>
   <c:set var="checkout" value="true" />
   
   <c:if test="${checkout}">
      <p>주문 제품: ${product2}</p>
   </c:if>
   <c:if test="${!checkout}">
      <p>주문 제품이 아님!!</p>
   </c:if>
   
   <c:if test="${!empty product2}">
      <p>${product2} 이미 추가됨!!!!!!</p>
   </c:if>
   
   <h3>choose, when, otherwise</h3>
   <c:choose>
      <c:when test="${checkout}">
         <p>주문 제품: ${product2}</p>
      </c:when>
      <c:otherwise>
         <p>주문 제품이 아님!!</p>
      </c:otherwise>
   </c:choose>
   <hr />
		
	<%-- '|'로 구분된 도시 이름을 <c:forToken> 출력--%>
    <h3>forTokens</h3>	
	<c:forTokens var="city" items="Seoul|Tokyo|New York|Toronto"
			delims="|" varStatus="i">
		<c:if test="${i.first }"> 도시 목록: </c:if>
		${city}
		<c:if test="${!i.last}"> , </c:if>
	</c:forTokens>
	
	
		
</body>
</html>
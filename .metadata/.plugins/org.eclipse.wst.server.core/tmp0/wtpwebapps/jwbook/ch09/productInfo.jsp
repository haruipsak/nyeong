<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>표</h2>
   <a href="/jwbook/ProductControl">새로고침</a>
   <hr />
   <table border="1">
      <tr>
         <th>id</th>
         <th>제품명</th>
         <th>제조사</th>
         <th>가격</th>
         <th>출시일</th>
      </tr>
      <c:forEach var="p" items="${products}">      
         <tr>
            <td>${p.id}</td>
            <td>${p.itemname}</td>
            <td>${p.marker}</td>
            <td>${p.price}</td>
            <td>${p.regdate}</td>
         </tr>
      </c:forEach>
   </table>
   <hr />
   <h2>제품 추가</h2>
   <hr />
   <form method="post" action="/jwbook/ProductControl?action=insert">
      <label for="">제품명</label>
      <input type="text" name="itemname"/><br>
      <label for="">제조사</label>
      <input type="text" name="marker"/><br>
      <label for="">가격</label>
      <input type="text" name="price"/><br>
      <label for="">출시일</label>
      <input type="text" name="regdate"/><br>
      <button type="submit">등록</button>
   </form>
   
   
</body>
</html>
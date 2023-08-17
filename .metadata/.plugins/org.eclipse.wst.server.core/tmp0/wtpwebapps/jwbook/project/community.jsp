<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page import="java.io.PrintWriter" %>
<%@ page import="project.BoardDTO" %>
<%@ page import="project.BoardDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@page import="java.sql.Connection"%>


<!doctype html>
<html lang="ko">
  <head>
  	<meta charset='UTF-8'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.104.2">
    <title>냥바냥</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/blog/">

    
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
    a{text-decoration:none;
    }
    
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider { 
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
      
      .lead my-3 {
    font-family: 'Dovemayo_gothic';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.1/Dovemayo_gothic.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

	.margin-top{
	margin-top: 10px;
	color: black;
	}
	.basic-color{
	color:#252221;
	}
	.nav-font-color{
	color:#202020;}
	
	.login-hover:hover{
	background-color:#252221;
	}

	.button-color:hover{
	color: #490D0D;
	}
	
	tr {
    border: 1px solid #e5e5e5;
    padding: 8px;
  }
    </style>

    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
   
    
  </head>
  <body>

<div class="container">
  <header class="blog-header lh-1" style="padding-top: 20px">
    <div class="row flex-nowrap justify-content-between align-items-center">
      <div class="col-4 pt-1">
      	<img src="https://i.esdrop.com/d/f/bkx1JZ8DmV/SuSEUgXOna.png" alt="아로몰로로고" style="width:200px; padding:0; margin:0;"/>
      </div>
      
      <%-- 클릭시 메인페이지로 이동 --%>
      <div class="col-4 text-center">
      	<a class="blog-header-logo basic-color button-color" href="mainhome.jsp" style="font-size:4rem;">냥by냥</a>
      </div>
      
      <%-- 검색시스템 구현 --%>
      <div class="col-4 d-flex justify-content-end align-items-center">
      <form class="btn-login" method="post" action="search/searchview.jsp">
     	<input style="height: 30px; margin-top:5px" type="text"  placeholder="사료명 입력" name="searchText" />
     	<%-- 검색 결과 화면으로 이동--%>
     	<button style="padding: 3px; margin-right:10px; margin-bottom: 4px "class="btn btn-sm btn-outline-secondary login-hover" type="submit">
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="mx-2" role="img" viewBox="0 0 24 24"><title>Search</title><circle cx="10.5" cy="10.5" r="7.5"/><path d="M21 21l-5.2-5.2"/></svg></button>
      </form>
	<c:if test="${empty sessionScope.userID}">
        <a class="btn btn-sm btn-outline-secondary login-hover" href="join/join.jsp" >회원가입</a>  
        <a class="btn btn-sm btn-outline-secondary login-hover" href="login/login.jsp" style="margin: 10px;">로그인</a>  
 			 </c:if>  
 		<c:if test="${!empty sessionScope.userID}">
         <a class="btn btn-sm btn-outline-secondary login-hover" href="login/logout.jsp" style="margin: 10px;">로그아웃</a>  
		</c:if> 
        
        </div>
    </div>
  </header>

  <div class="nav-scroller py-1 mb-2">
    <nav class="nav d-flex justify-content-around" style="text-align:center">
      <a class="p-2 link-secondary nav-font-color" href="dry.jsp">건식 사료</a>
      <a class="p-2 link-secondary nav-font-color" href="#">습식 사료(준비중)</a>
      <a class="p-2 link-secondary nav-font-color" href="community.jsp">커뮤니티</a> <a class="p-2 link-secondary nav-font-color" href="question-list.jsp">건의사항</a>
    </nav>
  </div>
</div>

<c:if test="${empty sessionScope.userID}">
    <script>
        function redirectToMainHome() {
            location.href = "mainhome.jsp";
            alert("회원만 접근 가능합니다.");
        }
        redirectToMainHome();
    </script>
</c:if>

<%-- 실행부분 --%>
<main class="container">
          <div class="card">
            <div class="card-header" style="text-align:center">
                <h1>게시판</h1>
            </div>
          



            <table>
                <tr class="blog-header" align="center" bgcolor="white">
                    <th class="col-1">번호</th>
                    <th class="col-7">제목</th>
                    <th class="col-2">작성자</th>
                    <th class="col-2">작성일</th>
                </tr>
               
		       
            <%
						BoardDAO board = new BoardDAO();
          			  ArrayList<BoardDTO> list = board.getAll();
						for (int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td style="text-align:center"><%=list.get(i).getNum()%></td>
						<td style="text-align:center"><a class="basic-color" href="commnunity-in.jsp?num=<%=list.get(i).getNum()%>"><%=list.get(i).getSubject()%></a></td>
						<td style="text-align:center"><%=list.get(i).getName()%></td>
						<td style="text-align:center"><%=list.get(i).getDate()%></td>
					</tr>
					<%
						}
					%>
     
               
        </table>
        <div style="display: inline-block; float:right; ">
            <a class="btn btn-sm btn-outline-secondary login-hover" href="commu-write.jsp" style="margin: 10px;">글쓰기</a>  
        </div>
        </div>
</main>

<footer class="blog-footer">
    <div style="cursor:pointer;" onclick="window.scrollTo(0,0);">상단으로 돌아가기</div>
</footer>


    
  </body>
</html>

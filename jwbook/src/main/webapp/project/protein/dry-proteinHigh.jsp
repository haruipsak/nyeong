<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>


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
      <form class="btn-login" method="post" action="../search/searchview.jsp">
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
      <a class="p-2 link-secondary nav-font-color" href="../dry.jsp">건식 사료</a>
      <a class="p-2 link-secondary nav-font-color" href="#">습식 사료(준비중)</a>
      <a class="p-2 link-secondary nav-font-color" href="../community.jsp">커뮤니티</a> <a class="p-2 link-secondary nav-font-color" href="../question-list.jsp">건의사항</a>
   	  <a class="p-2 link-secondary nav-font-color" href="../question-list.jsp">건의사항</a>
    </nav>
  </div>
</div>

<main class="container">
  <div class="p-4 p-md-5 mb-4 rounded" style="background-color:#252221">
    <div class="col-md-10 px-0">
      <h1 class="display-4 fst-italic" style="color:white">고단백? 저단백? 기준이 뭐야?</h1>
      <p class="lead my-3" style="color:white">냥바냥이 단백질 함량의 기준을 제시해드립니다.</p>
    </div>
  </div>

  <div class="row g-5">
    <div class="" ">
      <h1 class="pb-4 mb-4 border-bottom basic-color">
        고단백
      </h1>

      <article class="blog-post">  
		    <%
      // 1. JDBC 드라이버 로딩
      Class.forName("org.h2.Driver");
  
      Connection conn = null; // DBMS와 Java연결객체
      Statement stmt = null; // SQL구문을 실행
      ResultSet rs = null; // SQL구문의 실행결과를 저장
  
      try
      {
            String jdbcDriver = "jdbc:h2:tcp://localhost/~/pt";
            String query = "SELECT * FROM nyeong ORDER BY catfoodname";
            String sortColumn = request.getParameter("sort"); // 클라이언트에서 전달된 정렬 열 이름 받기
            String order = request.getParameter("order");
            // 만약 파라미터로 받은 정렬 열 이름이 존재한다면
            if(sortColumn !=null){
            	query = "SELECT * FROM nyeong ORDER BY " + sortColumn + " " + order;
            }
  
   
            // 2. 데이터베이스 커넥션 생성
            conn = DriverManager.getConnection(jdbcDriver);
   
            // 3. Statement 생성
            stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
   
            // 4. 쿼리 실행
            rs = stmt.executeQuery(query);
     %>
            
        <p>
 		<table class="table" style="font-size:14px" >
 			 <tr>
                <th>사료명<br />
	                <a href="?sort=catfoodname&order=asc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140579.png" alt="내림" style="width:20px" /></a>
	                <a href="?sort=catfoodname&order=desc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140720.png" alt="오름" style="width:20px" /></a>
                </th>
                <th style="text-align:center"> 그레인<br />프리<br />
	                <a href="?sort=grainfree&order=asc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140579.png" alt="내림" style="width:20px" /></a>
	                <a href="?sort=grainfree&order=desc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140720.png" alt="오름" style="width:20px" /></a>
                </th>
                <th style="text-align:center">주성분<br />
	                <a href="?sort=first&order=asc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140579.png" alt="내림" style="width:20px" /></a>
	                <a href="?sort=first&free&order=desc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140720.png" alt="오름" style="width:20px" /></a>
                </th>
                <th style="text-align:center">탄수화물(%)<br/>
	                <a href="?sort=carbo&order=asc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140579.png" alt="내림" style="width:20px" /></a>
	                <a href="?sort=carbo&order=desc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140720.png" alt="오름" style="width:20px" /></a>
                </th>
                 <th style="text-align:center">단백질(%)<br/>
	                 <a href="?sort=protein&order=asc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140579.png" alt="내림" style="width:20px" /></a>
	                 <a href="?sort=protein&order=desc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140720.png" alt="오름" style="width:20px" /></a></th>
                  <th style="text-align:center">지방(%)<br/>
	                  <a href="?sort=fat&order=asc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140579.png" alt="내림" style="width:20px" /></a>
	                 <a href="?sort=fat&order=desc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140720.png" alt="오름" style="width:20px" /></a></th>
                 <th style="text-align:center">조섬유(%) <br/>
	                 <a href="?sort=fiber&order=asc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140579.png" alt="내림" style="width:20px" /></a>
	                 <a href="?sort=fiber&order=desc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140720.png" alt="오름" style="width:20px" /></a></th>
                 <th style="text-align:ca">조회분(%)<br/>
	                 <a href="?sort=ca&order=asc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140579.png" alt="내림" style="width:20px" /></a>
	                 <a href="?sort=ca&order=desc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140720.png" alt="오름" style="width:20px" /></a></th>
                 <th style="text-align:center">인(%)<br/>
	                 <a href="?sort=p&order=asc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140579.png" alt="내림" style="width:20px" /></a>
	                 <a href="?sort=p&order=desc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140720.png" alt="오름" style="width:20px" /></a></th>
                 <th style="text-align:center">냥바냥<br/>등급 <br />
                 <a href="?sort=grainfree&order=asc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140579.png" alt="내림" style="width:20px" /></a>
	                <a href="?sort=grainfree&order=desc"><img src="https://cdn-icons-png.flaticon.com/512/8140/8140720.png" alt="오름" style="width:20px" />
               </a></th>
             </tr>
            
         <%  while (rs.next()) {
			if (rs.getDouble("protein") >= 40) { %>

			<tr>
			   <td><%= rs.getString("catfoodname") %></td>
			   <td style="text-align:center">
			    <% if (rs.getString("grainfree").equals("0")) { %>
			            ○
			    <% } else { %>
			         X
				 <% } %>
			     </td>
			    <td style="text-align:center"><%= rs.getString("first") %></td>
			    <td style="text-align:center"><%= rs.getDouble("carbo") %></td>
			     <td style="text-align:center"><%= rs.getDouble("protein") %></td>
			    <td style="text-align:center"><%= rs.getDouble("fat") %></td>
			    <td style="text-align:center"><%= rs.getDouble("ca") %></td>
			    <td style="text-align:center">
			        <% if (rs.getString("ca") == null) { %>
			            알수없음
			        <% } else { %>
			            <%= rs.getDouble("ca") %>
			        <% } %>
			        </td>
			        <td style="text-align:center"><%= rs.getDouble("p") %></td>
			       	<td style="text-align:center"><%= rs.getInt("grade") %></td>
		    </tr>
		    

<%
	            }
		      }
 
		%>
			</table>
         
         <% }catch(SQLException ex){
		            out.println(ex.getMessage());
		            ex.printStackTrace();
		      }finally{
		            // 6. 사용한 Statement 종료
		            if(rs != null) try { rs.close(); } catch(SQLException ex) {}
		            if(stmt != null) try { stmt.close(); } catch(SQLException ex) {}
		   
		            // 7. 커넥션 종료
		            if(conn != null) try { conn.close(); } catch(SQLException ex) {}
		      }
		%>
		       
		   
        </p>
    </article>
   </div>

<footer class="blog-footer">
   <div style="cursor:pointer;" onclick="window.scrollTo(0,0);">상단으로 돌아가기</div>
</footer>


    
  </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 


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
	.img{
	  display: table;
      table-layout: fixed;
      width: 100%;  /* 부모 요소의 너비 상속받음 */
    }
	.main{
	display: table-cell;
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
      <a class="p-2 link-secondary nav-font-color" href="community.jsp">커뮤니티</a> 
      <a class="p-2 link-secondary nav-font-color" href="question-list.jsp">건의사항</a>
    </nav>
  </div>
</div>

<main class="container">
  <div class="p-4 p-md-5 mb-4 rounded" style="background-color:#252221">
    <div class="col-md-10 px-0">
      <h1 class="display-4 fst-italic" style="color:white">고양이 사료 <br> 왜 이렇게 한눈에  보기 힘들까!</h1>
      <p class="lead my-3" style="color:white">냥바냥이 집사님들의 사료 선택을 도와드립니다.</p>
    </div>
  </div>
  <h3 >냥바냥 묘델</h3>
  <table class="img">
	  <tr align="center" >
	  <th class="main"><img src="https://i.esdrop.com/d/f/bkx1JZ8DmV/LSxtIb4Z8c.png" alt="모래" style="width:300px; margin:auto"/></th>
	  <th class="main"><img src="https://i.esdrop.com/d/f/bkx1JZ8DmV/9Y9g3tj8Ye.png" alt="몰로" style="width:250px; margin:auto"/></th>
	  <th class="main"><img src="https://i.esdrop.com/d/f/bkx1JZ8DmV/sujigo3ubC.png" alt="아로" style="width:200px; margin:auto"/></th>
	  <th class="main"><img src="https://i.esdrop.com/d/f/bkx1JZ8DmV/dI6ck0t2Es.png" alt="앵두" style="width:180px; margin:auto"/></th>
	  </tr>	
	  <tr>
	   <th class="main" style="text-align:center">모래</th>
	   <th class="main" style="text-align:center">몰로</th>
	   <th class="main" style="text-align:center">아로</th>
	   <th class="main" style="text-align:center">앵두</th>
	  </tr>	
  </table>
  <hr />

  <div class="row g-5">
  
    <div class="col-md-8">
      <h1 class="pb-4 mb-4 border-bottom basic-color">
        사료 선택 가이드
      </h1>

      <article class="blog-post">
      	<h2 class="basic-color">주성분</h2>
      	
      	<div style="font-size:">
      	고양이는 육식동물이기 때문에 양질의 단백질을 섭취해야합니다. 
      	<br />냥바냥이 다수의 사료 주성분을 분석해 등급으로 분류하였습니다.
      	<br />
     	<div style="font-size: 11px; color: grey">오가닉, 유기농은 등급에 반영하지 않습니다. 사료 분류는 주원료 기준 입니다.</div>
        </div>
      	<hr />
		<h2 class="basic-color">단백질 비율별 분류</h2>     
			사료 성분을 비교하여 냥바냥이 정리했습니다!<br />
			우리 고양이의 건강상태에 맞춰 한눈에 비교하세요.<br/>
      	<hr />
      	
      	<h2 class="basic-color">그레인프리</h2>
      	곡물은 고양이에게 해롭지 않지만 고양이들에게 알레르기 반응을 일으킬 수 있습니다.<br>
      	알레르기 반응으로는 가려워하거나, 오버 그루밍, 탈모, 염증, 피부병 등이 있을 수 있습니다. <br />
      	고양이의 알레르기가 걱정되는 집사님들은 냥바냥에서 그레인프리(곡물 미포함)를 확인하세요. <br/>
		<hr />

           </article>
    </div>

    <div class="col-md-4">
      <div class="position-sticky" style="top: 2rem;">

        <div class="p-4">
          <h4 class="">바로가기</h4>
          <ol class="list-unstyled mb-0">
           <li><a href="dry.jsp" class="button-color basic-color" >냥바냥 건식 사료</a></li>
            <li><a href="#" class="button-color basic-color" >냥바냥 습식 사료</a></li>
            <li><a href="community.jsp" class="button-color basic-color">냥바냥 커뮤니티</a></li>
            <li><a href="question-list.jsp" class="button-color basic-color">냥바냥 건의사항</a></li>
          </ol>
        </div>
      </div>
    </div>
  </div>

</main>

<footer class="blog-footer">
    <div style="cursor:pointer;" onclick="window.scrollTo(0,0);">상단으로 돌아가기</div>
</footer>


    
  </body>
</html>

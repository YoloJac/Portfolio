<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">   
<link rel="stylesheet" href="../resource/css/header.css" type="text/css">

<header id="pdj_header" class="pdj_header">
	<h1 id="pdj_logo_img" class="pdj_logo_img"><a href="../main/Main.jsp"><img src="../img/로고.png" alt="DARIMI"></a></h1>
	<div id="pdj_member" class="pdj_member">
<%
	if(session.getAttribute("UserId") == null){
%>
		<p id="pdj_login" class="pdj_login"><a href="../login/LoginForm.jsp">로그인</a></p>
	    <p id="pdj_sign" class="pdj_sign"><a href="../signup/SignUp.jsp">회원가입</a></p>
<%
	}else{
%>
		<p style="color:brown">[<%= session.getAttribute("UserName") %> 님, 반갑습니다]</p>
		<p><a href="../login/Logout.jsp">로그아웃</a><p>
<%
	}
%>
	</div>
	<nav id="pdj_gnb" class="pdj_gnb">
	    <ul class="pdj_list">
	        <li><a href="#">추천상품</a></li>
	        <li><a href="#">카테고리</a></li>
	        <li><a href="../board/BoardMain.jsp">커뮤니티</a></li>
	        <li><a href="#">고객센터</a></li>
	        <li>
	            <form method="get" name="srcFrm" action="../main/searchgame.jsp?searchWord=<%=request.getParameter("searchWord")%>">
	                <input type="text" id="pdj_src" class="pdj_src" name="searchWord">
	                <button type="submit" id="pdj_src_btn" class="pdj_src_btn">검색</button>
	            </form>
	        </li>
	    </ul>
	</nav>
</header>
<%@page import="MainPackage.GameDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="MainPackage.GameDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	GameDAO dao = new GameDAO(application);
	Map<String, Object> param = new HashMap<String, Object>();
	
	String searchWord = request.getParameter("searchWord");
	
	if(searchWord != null){
		param.put("searchWordToUpper", searchWord.toUpperCase());
		param.put("searchWordToLower", searchWord.toLowerCase());
	}
	
	List<GameDTO> srcGameLists = dao.gameSearch(param);
	
	dao.close();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	.search_wrap{
		width: 100%;
		min-width: 1200px;
	}
	#src_container{
		height: 100%;
		min-height: 650px;
		width: 1140px;
		margin: 50px auto;
	}
	.src_container tr, .src_container td{
		border: 1px solid black;
		height: 40px;
	}
	.src_container img{
		height: 50px;
	}
	.src_container button{
		font-size: 14px;
		width: 70px;
	}
</style>
</head>
<body>
<div id="search_wrap" class="search_wrap">
<jsp:include page="../main/header.jsp"></jsp:include>
<div id="src_container" class="src_container">
	<table border="1" width="100%">
		<tr align="center">
			<td width="10%"></td>
			<td width="50%">게임</td>
			<td width="15%">종류</td>
			<td width="15%">가격</td>
			<td width="10%">구입</td>
		</tr>
	</table>
	<table border="1" width="100%">
		<% if(searchWord == null){%>
		<tr align="center">
			<td colspan="5">검색된 게임이 없습니다</td>
		</tr>
		<% }else{ %>
		<% 		for(GameDTO dto : srcGameLists){ %>
		<tr align="center">
			<td width="10%"><img src="<%= dto.getImg() %>"></td>
			<td width="50%"><%= dto.getGname() %></td>
			<td width="15%"><%= dto.getType() %></td>
			<td width="15%"><%= dto.getSal() %></td>
			<td width="10%">
				<button>구입하기</button><br>
				<button>장바구니</button>
			</td>
		</tr>
		<% 		}
			} %>
	</table>
</div>
<jsp:include page="../main/footer.jsp"></jsp:include>	
</div>
</body>
</html>
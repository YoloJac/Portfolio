<%@page import="TeamUtil.JSFunction"%>
<%@page import="model3.MessageBoardDAO"%>
<%@page import="model3.MessageBoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../login/IsloggedIn.jsp" %> <!-- 로그인 확인 -->

<%
	//폼값 받아오기
	String content = request.getParameter("content");

	MessageBoardDTO dto = new MessageBoardDTO();
	
	dto.setContent(content);
	dto.setId(session.getAttribute("UserId").toString());
	String gname = request.getParameter("gname");
	dto.setGname(gname);
	
	MessageBoardDAO dao = new MessageBoardDAO(application);
	int iResult = dao.insertWrite(dto);
	dao.close();
	
	if(iResult == 1){
		JSFunction.alertLocation("댓글쓰기에 성공했습니다", "BoardMain.jsp", out);
	} else{
		JSFunction.alertBack("댓글쓰기에 실패하였습니다.", out);
	}
	

%>
	
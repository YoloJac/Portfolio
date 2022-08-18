<%@page import="model3.MessageBoardDAO"%>
<%@page import="model3.MessageBoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../login/IsloggedIn.jsp" %> <!-- 로그인 확인 -->
<%
	String num = request.getParameter("num");
	MessageBoardDTO dto = new MessageBoardDTO();
	MessageBoardDAO dao = new MessageBoardDAO(application);
	dto = dao.selectView(num);
	
	String sessionId = session.getAttribute("UserId").toString();
	
	int delResult = 0;
	
	if(sessionId.equals(dto.getId())){
		delResult = dao.deletePost(dto);
		dao.close();
		
		if(delResult == 1){
			JSFunction.alertLocation("삭제되었습니다", "BoardMain.jsp", out);
		} else{
			JSFunction.alertBack("삭제에 실패했습니다", out);
		}
	} else {
		JSFunction.alertBack("작성자 본인만 삭제할 수 있습니다.", out);
		
		return;
	}
%>
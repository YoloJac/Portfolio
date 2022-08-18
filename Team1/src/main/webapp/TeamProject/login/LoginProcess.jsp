<%@page import="TeamUtil.JSFunction"%>
<%@page import="Teammember.MemberDTO"%>
<%@page import="Teammember.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	String userId = request.getParameter("user_id");
	String userPwd = request.getParameter("user_pw");
	
	MemberDAO dao = new MemberDAO(application);
	MemberDTO dto = dao.getMemberDTO(userId, userPwd);
	dao.close();
	
	if(dto.getId() != null){
		session.setAttribute("UserId", dto.getId());
		session.setAttribute("UserName", dto.getName());
		response.sendRedirect("../main/Main.jsp");
	}else{
		JSFunction.alertBack("아이디 비밀번호가 일치하지 않거나 없습니다", out);
	}
%>
<%@page import="TeamUtil.JSFunction"%>
<%@page import="Teammember.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");

	MemberDAO dao = new MemberDAO(application);

	String id = request.getParameter("id");
	
	boolean result = dao.checkingId(id);
	dao.close();

	if(result){
		JSFunction.alertBack("이미 사용중인 ID입니다", out);
		
	}else{
		JSFunction.alertBack("입력하신 " + id + "는 사용가능한 ID입니다", out);	
	}
%>
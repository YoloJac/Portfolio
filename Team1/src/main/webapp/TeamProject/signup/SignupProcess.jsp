<%@page import="Teammember.MemberDTO"%>
<%@page import="TeamUtil.JSFunction"%>
<%@page import="Teammember.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String gender = request.getParameter("gender");
	String birth = request.getParameter("birth");
	String tel = request.getParameter("tel");
	String phoneCheck = request.getParameter("phoneCheck");
	String rndNum = request.getParameter("rndNum");
	
	if(!(phoneCheck.equals(rndNum))){
		JSFunction.alertBack("인증번호가 일치하지 않습니다", out);
	}else{
		MemberDTO dto = new MemberDTO();
		
		dto.setId(id);
		dto.setPass(pass);
		dto.setName(name);
		dto.setEmail(email);
		dto.setGender(gender);
		dto.setBirth(birth);
		dto.setTel(tel);
		
		MemberDAO dao = new MemberDAO(application);
		int result = dao.addMemberDTO(dto);
		dao.close();
		
		JSFunction.alertLocation("회원등록이 완료되었습니다", "../login/LoginForm.jsp", out);
		
	}
%>
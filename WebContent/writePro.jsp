<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="chapter13.board.BoardDBBean"%>
<%@page import="chapter13.board.BoardDataBean"%>
<%
	// request.getParameter // 주소줄에 있는 데이터값을 가져오는 함수
	String subject = request.getParameter("subject");
	String writer = request.getParameter("writer");
	String email = request.getParameter("email");
	String passwd = request.getParameter("passwd");
	String content = request.getParameter("content");

	BoardDBBean bdb = BoardDBBean.getInstance();
	bdb.insertDetailArticle(writer, subject, email, content, content);
	
	BoardDataBean dataBean = new BoardDataBean();
	dataBean.setContent(content);
	dataBean.setWriter(writer);
	dataBean.setEmail(email);
	dataBean.setPasswd(passwd);
	dataBean.setSubject(subject);
	
	bdb.insertArticle(dataBean);
	

	out.println("writePro.jsp");
%>

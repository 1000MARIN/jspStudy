<%@page import="java.sql.Timestamp"%>
<%@page import="com.example.domain.MemberVO"%>
<%@page import="com.example.repository.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// post 요청 한글처리
// POST 요청일 경우 문자셋 정보를 설정. 유니코드 문자로 변환
request.setCharacterEncoding("utf-8");

// MemberVO 객체 준비
MemberVO memberVO = new MemberVO();

// request : 요청 내장객체
//			 톰캣이 사용자 요청을 받으면 요청 종부를 HttpServletRequest 객체로 변환해서
//			 호출한 jsp페이지에 request 변수로 전달.

// 사용자 입력값 가져오기
memberVO.setId(request.getParameter("id"));
memberVO.setPasswd(request.getParameter("passwd"));
memberVO.setName(request.getParameter("name"));
memberVO.setEmail(request.getParameter("email"));
memberVO.setRecvEmail(request.getParameter("recvEmail"));
memberVO.setRegDate(new Timestamp(System.currentTimeMillis()));

System.out.println(memberVO.toString());
// MemberDAO 객체 준비
MemberDAO memberDAO = MemberDAO.getInstance();

// insert(회원가입) 처리하기
memberDAO.insert(memberVO);
%>            
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 처리결과</h1>
	<hr>
	<p>회원가입 성공!</p>
	
</body>
</html>
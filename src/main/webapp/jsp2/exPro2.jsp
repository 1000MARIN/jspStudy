<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//
// POST 요청일 경우 문자셋 정보를 설정. 유니코드 문자로 변환
request.setCharacterEncoding("utf-8");

// request : 요청 내장객체
//			 톰캣이 사용자 요청을 받으면 요청 종부를 HttpServletRequest 객체로 변환해서
//			 호출한 jsp페이지에 request 변수로 전달.
String name = request.getParameter("name");
String gender = request.getParameter("gender");

// value 값이 여러개 일때 getParameterValues 배열로 받아옴
String[] hobbies = request.getParameterValues("hobby");
String job = request.getParameter("job");
%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>exPro2.jsp 페이지</h1>
	<hr>
	
	<p>이름 : <%=name %></p>
	<p>성별 : <%=(gender != null) ? gender : "" %></p>
	<p>직업 : <%=(job != null) ? job : "" %></p>
	<p>취미 :
	<%
	if (hobbies != null) {
		for (String hobby : hobbies) {
			%>
			<%=hobby %> &nbsp;
			<%
		}
	}
	%>
	</p>
	
</body>
</html>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file= "color.jspf" %>

<%!	// 선언부
	private String name;
	
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
%>


<%
// 스크립트릿
System.out.println("웹서버 콘솔 출력");

String str = "문자열";

Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String strDate = sdf.format(date);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor= "<%=bgColor2 %>">
	
	<%-- include top.jsp --%>
	<%@ include file= "top.jsp" %>
	
	<h2>jsp 연습</h2>
	<!--  HTML 주석 -->
	<%-- JSP 주석 (중요한 정보는 이 주석을 이용 --%>)
	<p><%=str %></p><%-- 표현식 --%>
	<p><%=strDate %></p>
	<p><% out.println(strDate); %></p><%-- out: 풀력 내장객체 --%>
	
	<%-- include bottom.jsp --%>
	<%@ include file= "bottom.jsp" %>
	
</body>
</html>
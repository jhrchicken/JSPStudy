<%@page import="test.HelloJava"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String str = "안녕하세요.";
int result = HelloJava.myFn();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>처음 만들어보는 JSP</h2>
	<%
	out.println(str + " JSP..!");
	%>
	<p>
		1부터 10까지의 합은 <%=result %> 입니다.
	</p>
</body>
</html>
<%@page import="el.MyELClass"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MyELClass myClass = new MyELClass();
pageContext.setAttribute("myClass", myClass);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELCallMethod.jsp</title>
</head>
<body>
	<h3>영역에 저장 후 메서드 출력하기</h3>
	001225-3000000 => ${ myClass.getGender("001225-3000000") }<br/>
	001225-4000000 => ${ myClass.getGender("001225-4000000") }
	
	<h3>클래스명을 통해 정적메서드 호출하기</h3>
	${ MyELClass.showGugudan(7) }
</body>
</html>
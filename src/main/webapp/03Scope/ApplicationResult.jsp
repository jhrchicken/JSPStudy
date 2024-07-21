<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 영역</title>
</head>
<body>
	<h2>applictation 영역의 속성 읽기</h2>
	<%
	// Object로 저장된 속성을 읽어온 후 형변환한다.
	Map<String, Person> maps = (Map<String, Person>)application.getAttribute("maps");
	// 저장된 Key의 목록을 먼저 얻어온다.
	Set<String> keys = maps.keySet();
	// Key의 개수만큼 반복하여 Value를 출력한다.
	for(String key : keys) {
		Person person = maps.get(key);
		out.print(String.format("이름 : %s, 나이 : %d<br/>", person.getName(), person.getAge()));
	}
	%>
</body>
</html>
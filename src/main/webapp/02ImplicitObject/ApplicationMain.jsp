<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체 - application</title>
</head>
<body>
	<!-- web.xml에 <context-param>으로 설정한 값을 내장객체를 통해 읽어올 수 있다. -->
	<h2>web.xml에 설정한 내용 읽어오기</h2>
	초기화 매개변수 : <%= application.getInitParameter("INIT_PARAM") %>
	
	<!--
	사용하는 OS(운영체제)에 따라 경로를 표시하는 방법이 다르므로, application 내장객체를 통해 절대(물리적)경로를 얻어올 수 있다.
	이렇게 얻어온 경로를 통해 파일업로드를 구현할 수 있다.
	-->
	<h2>서버의 물리적 경로 얻어오기</h2>
	application 내장 객체 : <%= application.getRealPath("/02ImplicitObject") %>
	<!--
	이클립스에서는 우리가 직접 작성한 파일을 직접 실행하지 않고 .metadate 디렉토리 하위에
	프로젝트와 동일한 Tomcat 환경을 만들어서 복사본 파일을 실행하게 된다.
	따라서 위에서의 물리적경로는 .metadate 하위의 경로가 출력된다.
	-->
	
	<h2>선언부에서 application 내장 객체 사용하기</h2>
	<%!
	/*
	선언부에서 내장객체를 바로 사용하는 것은 불가능하다.
	내장객체는 _jspService() 메서드내에서 생성된 지역변수이므로 다른 지역인 선언부에서 사용하려면 매개변수로 전달받아야 한다.
	*/
	public String useImplicaitObject() {
		/*
		방법 1 : getServletContext() 메서드를 통해 선언부에서 application 내장객체를 얻어올 수 있다.
		*/
		return this.getServletContext().getRealPath("/02ImplicitObject");
	}
	public String useImplicaitObject(ServletContext app) {
		/*
		방법 2 : 스크립트렛에서 메서드를 호출할 때 application 내장객체를 매개변수로 전달해서 사용한다.
		*/
		return app.getRealPath("/02ImplicitObject");
	}
	%>
	<ul>
		<li>this사용 : <%= useImplicaitObject() %></li>
		<li>내장객체를 인수로 전달 : <%= useImplicaitObject(application) %></li>
	</ul>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FileUpload</title>
</head>
<script>
	/* 폼값을 submit(전송)할 때 빈값에 대한 검증을 진행한다. 만약 빈 값이 발견되면 리스너쪽으로 false를 반환한다. */
	function validateForm(form) {
		if (form.title.value == "") {
			alert("제목을 입력하세요.");
			form.title.focus();
			return false;
		}
		if (form.ofile.value == "") {
			alert("첨부파일은 필수 입력입니다.");
			return false;
		}
	}
</script>

<body>
	<h3>파일 업로드</h3>
	<!-- 파일첨부를 위한 <form> 태그 구성 시 2가지 필수사항
	1. method(전송방식)는 반드시 post로 지정
	2. enctype 속성은 'multupart/form-data'로 지정
	만약 get 방식으로 지정하면 파일이 전송되는게 아니라 파일명만 전송된다. -->
	<span style="color:red;">${ errorMessage }</span>
	<form name="fileForm" method="post" enctype="multipart/form-data" action="MultipleProcess.do" onsubmit="return validateForm(this)">
		<!-- text 타입은 일반적인 한 줄 입력상자이다. -->
      	제목 : <input type="text" name="title" /><br/>
      	<!-- file 타입의 태그에 multiple 속성을 부여하면 2개 이상의 파일을 선택할 수 있다.
      	ctrl키나 드래그&드롭으로 선택한다. -->
      	첨부파일 : <input type="file" name="ofile" multiple /><br/>
		<input type="submit" value="전송하기" />
	</form>
</body>
</html>
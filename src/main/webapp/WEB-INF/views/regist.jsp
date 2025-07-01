<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form id="regist" name="regist" method="post" action="/board/regist">

		<input type="text" name="title">
		<input type="text" name="writer">
		<input type="text" name="content">
		<br /> 
		<input type="submit" value="등록" />

	</form>
</body>
</html>
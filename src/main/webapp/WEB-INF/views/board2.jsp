<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
	<h1>게시판 만들기</h1>
	<table border="1">
		<tr>
			<th>게시글 번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>내용</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>

		<c:forEach var="boardMap" items="${boardList}">
			<tr>
				<td><c:out value="${boardMap.boardNo}" /></td>
				<td><c:out value="${boardMap.title}" /></td>
				<td><c:out value="${boardMap.writer}" /></td>
				<td><c:out value="${boardMap.content}" /></td>
				<td><c:out value="${boardMap.regdate}" /></td>
				<td><c:out value="${boardMap.hit}" /></td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>

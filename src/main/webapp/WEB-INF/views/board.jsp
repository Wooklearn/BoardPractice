<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<style>
	body {
		font-family: 'Segoe UI', sans-serif;
		background-color: #f9f9f9;
		margin: 30px;
	}

	h1 {
		text-align: center;
		color: #333;
	}

	.button-wrap {
		text-align: right;
		margin-bottom: 15px;
	}

	.button-wrap a button {
		background-color: #4CAF50;
		color: white;
		border: none;
		padding: 10px 20px;
		font-size: 14px;
		border-radius: 5px;
		cursor: pointer;
	}

	.button-wrap a button:hover {
		background-color: #45a049;
	}

	table {
		width: 100%;
		border-collapse: collapse;
		background-color: white;
		box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
	}

	th, td {
		border: 1px solid #ddd;
		padding: 10px;
		text-align: center;
	}

	th {
		background-color: #f2f2f2;
		color: #333;
	}

	tr:hover {
		background-color: #f5f5f5;
	}

	a {
		color: #1a73e8;
		text-decoration: none;
	}

	a:hover {
		text-decoration: underline;
	}
</style>
</head>
<body>

	<h1>게시판 만들기</h1>

	<div class="button-wrap">
		<a href="/board/regist">
			<button type="button">게시글 등록</button>
		</a>
	</div>

	<table>
		<tr>
			<th>게시글 번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>내용</th>
			<th>날짜</th>
			<th>조회수</th>
			<th>관리</th>
		</tr>

		<c:forEach var="boardMap" items="${boardList}">
			<tr>
				<td><a href="/board/detail/${boardMap.boardNo}"><c:out value="${boardMap.boardNo}" /></a></td>
				<td><c:out value="${boardMap.title}" /></td>
				<td><c:out value="${boardMap.writer}" /></td>
				<td><c:out value="${boardMap.content}" /></td>
				<td><fmt:formatDate value="${boardMap.regdate}" pattern="yyyy-MM-dd" /></td>
				<td><c:out value="${boardMap.hit}" /></td>
				<td>
					<a href="/board/delete?boardNo=${boardMap.boardNo}">삭제</a>
				</td>
			</tr>
			
			
		</c:forEach>

	</table>

</body>
</html>

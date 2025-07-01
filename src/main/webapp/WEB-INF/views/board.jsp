<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
		<tr th:each="postList" index: ${postList}>
			<th th:text="${index.boardNo}">게시글 번호</th>
			<th th:text="${postList.title}">제목</th>
			<th th:text="${postList.writer}">글쓴이</th>
			<th th:text="${postList.content}">내용</th>
			<th th:text="${postList.regdate}">날짜</th>
			<th th:text="${postList.hit}">조회수</th>
		</tr>
	</table>

</body>
</html>
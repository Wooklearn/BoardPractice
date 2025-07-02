<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세</title>
<style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background-color: #f9f9f9;
        padding: 40px;
    }

    h1 {
        text-align: center;
        margin-bottom: 30px;
        color: #333;
    }

    table {
        width: 80%;
        margin: 0 auto;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 12px 16px;
        text-align: left;
        font-size: 15px;
    }

    th {
        background-color: #f2f2f2;
        width: 20%;
        color: #555;
    }

    tr:last-child td {
        border-bottom: none;
    }

    .footer {
        text-align: center;
        margin-top: 30px;
    }

    .footer a {
        display: inline-block;
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        font-size: 14px;
    }

    .footer a:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

    <h1>게시글 상세</h1>

    <table>
        <tr>
            <th>번호</th>
            <td><c:out value="${board.boardNo}" /></td>
        </tr>
        <tr>
            <th>제목</th>
            <td><c:out value="${board.title}" /></td>
        </tr>
        <tr>
            <th>작성자</th>
            <td><c:out value="${board.writer}" /></td>
        </tr>
        <tr>
            <th>내용</th>
            <td style="white-space: pre-wrap;"><c:out value="${board.content}" /></td>
        </tr>
        <tr>
            <th>작성일</th>
            <td><fmt:formatDate value="${board.regdate}" pattern="yyyy-MM-dd" /></td>
        </tr>
        <tr>
            <th>조회수</th>
            <td><c:out value="${board.hit}" /></td>
        </tr>
    </table>

    <div class="footer">
        <a href="/board/list">목록으로</a>
    </div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
<style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background-color: #f9f9f9;
        margin: 40px;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    form {
        max-width: 600px;
        margin: 0 auto;
        background-color: #fff;
        padding: 30px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }

    table {
        width: 100%;
    }

    th {
        text-align: left;
        padding: 10px 0 5px;
        color: #444;
    }

    input[type="text"],
    textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        resize: vertical;
        font-size: 14px;
    }

    textarea {
        height: 150px;
    }

    input[type="submit"] {
        margin-top: 20px;
        width: 100%;
        padding: 12px;
        background-color: #4CAF50;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

    <h1>게시글 등록</h1>

    <form id="regist" name="regist" method="post" action="/board/regist">
        <table>
            <tr>
                <th>제목</th>
            </tr>
            <tr>
                <td><input type="text" name="title" required /></td>
            </tr>
            <tr>
                <th>글쓴이</th>
            </tr>
            <tr>
                <td><input type="text" name="writer" required /></td>
            </tr>
            <tr>
                <th>내용</th>
            </tr>
            <tr>
                <td><textarea name="content" required></textarea></td>
            </tr>
        </table>

        <input type="submit" value="등록" />
    </form>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>글작성</h3>
<form action="./insert.jsp">
제목 : <input type="text" name="bsubj"/> <br />
작성자 : <input type="text" name="bwriter"/> <br />
내용 : <input type="text" name="bmemo"/> <br />
<input type="submit" value="저장" />
</form>
</body>
</html>
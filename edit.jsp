<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/form.css" />
</head>
<body>
<%
String no =request.getParameter("no");
%>
<form action="update.jsp" method="post">
<h3>제목<input type="text" name="bsubj"/></h3>
<input type="hidden" name="no" value="<%=no%>"/>
<table border="1">
<colgroup>
	<col width="20%"/>
	<col width="20%"/>
	<col width="20%"/>
	<col width="20%"/>
	<col width="10%"/>
	<col width="10%"/>
</colgroup>
<tr>
	<th>글번호</th>
	<td><%=no %></td>
	<th>작성자</th>
	<td><input type="text" name="bwriter"/></td>
	<th>조회수</th>
	<td><%=request.getParameter("cnt") %></td>
</tr>
<tr>
	<th>내용</th>
	<td colspan="6" height="200"><input type="text" name="bmemo"/></td>
</tr>
</table>
<input type="submit" value="수정"/>
</form>
</body>
</html>
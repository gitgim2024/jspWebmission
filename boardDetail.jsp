<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
String no = request.getParameter("no");

String sql = "select * from board3 where bno="+no;
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "hr";
String pw="123456";
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection(url, user, pw);
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery(sql);
rs.next();
String bsubj = rs.getString("bsubj");
String bwriter = rs.getString("bwriter");
String bmemo = rs.getString("bmemo");
Integer cnt = rs.getInt("cnt");
%>
<h3><%=bsubj %></h3>
<table border="1">
<colgroup>
	<col width="10%"/>
	<col width="30%"/>
	<col width="10%"/>
	<col width="30%"/>
	<col width="10%"/>
	<col width="10%"/>
</colgroup>
<tr>
	<th>글번호</th>
	<td><%=no %></td>
	<th>작성자</th>
	<td><%=bwriter%></td>
	<th>조회수</th>
	<td><%=cnt %></td>
</tr>
<tr>
	<th>내용</th>
	<td colspan="6" height="200"><%=bmemo%></td>
</tr>
</table> <br />
<a href="edit.jsp?no=<%=no %>&bwriter=<%=bwriter%>&cnt=<%=cnt %>">수정</a>
<a href="delete.jsp?no=<%=no %>">삭제</a>
<a href="board.jsp">목록</a>

</body>
</html>
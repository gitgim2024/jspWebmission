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
<title>게시판</title>
</head>
<body>
<h3>게시판</h3>
<table border = "1">
<tr>
	<th>글번호</th>
	<th>제목</th>
	<th>작성자</th>
	<th>작성일</th>	
	<th>조회수</th>	
</tr>

<%
String sql = "select bno,bsubj,bwriter,bmemo,bdate,cnt from board3";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "hr";
String pw="123456";
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection(url, user, pw);
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery(sql);

while(rs.next()){
%>
	<tr>
		<td><%=rs.getInt("bno") %></td>
		<td><a href="boardDetail.jsp?no=<%= rs.getInt("bno")%>"><%=rs.getString("bsubj") %></a></td>
		<td><%=rs.getString("bwriter") %></td>
		<td><%=rs.getDate("bdate") %></td>
		<td><%=rs.getInt("cnt") %></td>
	</tr>
<%
}
%>
</table>
<a href="newContent.jsp">글작성</a>
</body>
</html>
<%
rs.close();
stmt.close();
conn.close();
%>
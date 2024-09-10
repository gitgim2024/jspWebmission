<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
System.out.println(request.getParameter("no"));

String sql = "delete from board3 where bno=?";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "hr";
String pw="123456";
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection(url, user, pw);
PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, request.getParameter("no"));
pstmt.executeUpdate();

response.sendRedirect("./board.jsp");
%>
</body>
</html>

<%
pstmt.close();
conn.close();
%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="/web/images/favicon.ico">
</head>
<body>
	<%
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3307/kd";
	String user = "root";
	String password = "kd1824java";
	Connection con = DriverManager.getConnection(url, user, password);
	Statement stmt = con.createStatement();
	String sql = "SELECT *FROM BOARD_INFO";
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>


		<%
		while (rs.next()) {
		%>

		<%="<tr>"%>
		<%="<td>" + rs.getInt("BI_NUM") + "</td>"%>
		<%="<td>" + rs.getString("BI_TITLE") + "</td>"%>
		<%="<td>" + rs.getString("BI_WRITER") + "</td>"%>
		<%="<td>" + rs.getString("BI_CNT") + "</td>"%>
		<%="</tr>"%>

		<%
		}
		%>

		<tr>
			<td colspan="4" align="center"><button>submit</button></td>
		</tr>
	</table>
</body>
</html>






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
<link rel="icon" type="image/x-icon" href=" /web/images/favicon.ico">

<title>Insert title here</title>

</head>
<body>
	<%
	Class.forName("org.mariadb.jdbc.Driver");
	String url = "jdbc:mariadb://localhost:3307/kd";
	String user = "root";
	String password = "kd1824java";
	Connection con = DriverManager.getConnection(url, user, password);
	Statement stmt = con.createStatement();
	String sql = "SELECT*FROM BOARD_INFO";
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<table border="1" >
		<tr>
			<th>번호</th>
			<th>게시물</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>
		<tr >
			<td><b>1</b></td>
			<td><b>첫번째</b></td>
			<td><b>홍동인</b></td>
			<td><strong>10</strong></td>
		<tr>

			<%
			while (rs.next()) {
				out.println("<tr>");
				out.println("<td>" + rs.getInt("BI_NUM") + "</td>");
				out.println("<td>" + rs.getString("BI_TITLE") + "</td>");
				out.println("<td>" + rs.getString("BI_Writer") + "</td>");
				out.println("<td>" + rs.getString("BI_Cnt") + "</td>");
			}
			%>
		
		<tr>
			<td colspan="4" align="center"><button	>submit</button></td>
		</tr>



	</table>
</body>
</html>
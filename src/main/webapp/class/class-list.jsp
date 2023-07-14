<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="/include/common.jsp"%>
<body>
	<jsp:include page="/include/header.jsp"></jsp:include>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
		</tr>

		<%
		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "SELECT CI_NAME, CI_DESC FROM CLASS_INFO ";
		ResultSet rs = stmt.executeQuery(sql);
		while (rs.next()) {
		%>
		<tr>

			<td><%=rs.getString("CI_NAME")%></td>
			<td><%=rs.getString("CI_DESC")%></td>

		</tr>
		<%
		}
		%>


	</table>
</body>
</html>
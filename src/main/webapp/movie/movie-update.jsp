<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />

	<%
	String miNum = request.getParameter("miNum");
	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "SELETE MI_NUM, MI_TITLE, MI_GANRE,MI_CREDAT, MI_DATE,MI_CNT FROM MOVIE_INFO";
	sql += "WHERE MI_NUM=" + miNum;
	ResultSet rs = stmt.executeQuery(sql);

	if (!rs.next()) {
	%>

	<script>
		alert('없는 데이터');
		history.back();
	</script>
	<%
	return;
	}
	%>

	<form action="<%=root%>/Movie/Movie-update-ok.jsp">
		<input type="hidden" name="miNum" value="<%=miNum%>">
		<table border="1">


			<tr>
				<th>제목</th>
				<td><input type="text" id="miTitle" name="miTitle"
					value=<%=rs.getString("MI_TITLE")%>></td>
			</tr>

			<tr>
				<th>장르</th>
				<td><input type="" id="miGanre" name="miGanre"
					value=<%=rs.getString("MI_GANRE")%>></td>
			</tr>

			<tr>
				<th>상영일</th>
				<td><input type="text" id-></td>
			</tr>

			<tr>
				<td>관객수</td>
			</tr>
		</table>
	</form>
</body>
</html>
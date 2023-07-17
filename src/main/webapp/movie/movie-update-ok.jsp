<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/include/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />

	<%
	String miTitle = request.getParameter("miTitle");
	String miDesc = request.getParameter("miDesc");
	String miGanre = request.getParameter("miGanre");
	String miDate = request.getParameter("miCredat");
	String miCnt = request.getParameter("miCnt");
	String miNum = request.getParameter("miNum");
	Connection con = DBCon.getCon();
	String sql = "UPDATE MOVIE_INFO";
	sql += "SET MI_TITLE=?,";
	sql += "MI_DESC=?,";
	sql += "MI_DATE=?,";
	sql += "MI_CNT=?";
	sql += "MI_NUM=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, miTitle);
	pstmt.setString(2, miDesc);
	pstmt.setString(3, miGanre);

	pstmt.setString(5, miCnt);
	pstmt.setString(6, miNum);
	int result = pstmt.executeUpdate();
	if (result == 1) {
	%>

	<Script>
alert('수정이 완료되었습니다.');
location.href='<%=root%>/movie/movie-view.jsp?miNum=<%=miNum%>
		';
	</Script>

	<%
	}
	%>

</body>
</html>
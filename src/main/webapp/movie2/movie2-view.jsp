
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<h3>영화 상세 내용</h3>
<%
String miNum = request.getParameter("miNum");
String tableName = "movie_info";

Connection con = DBCon.getCon();
String sql = "SELECT MI_NUM, MI_TITLE, MI_DESC, MI_GENRE, MI_CREDAT, MI_CNT\r\n"
		+ "FROM movie_info\r\n"
		+ "WHERE MI_NUM=?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, miNum);
ResultSet rs = ps.executeQuery();
if(!rs.next()){
%>
	<script>
		alert('이미 삭제된 영화입니다.');
		location.href='<%=root%>/movie2/movie-list.jsp';
	</script>
<%	
return;
}
%>
번호 : <%=rs.getString("MI_NUM")%><br>
제목 : <%=rs.getString("MI_TITLE")%><br>
설명 : <%=rs.getString("MI_DESC")%><br>
장르 : <%=rs.getString("MI_GENRE")%><br>
상영일 : <%=rs.getString("MI_CREDAT")%><br>
관객수 : <%=rs.getString("MI_CNT")%><br>
</body>
</html>
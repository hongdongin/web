
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
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
<%
Connection con = DBCon.getCon();
String sql = "SELECT MI_NUM, MI_TITLE, MI_DESC, MI_GENRE, MI_CREDAT, MI_CNT FROM movie_info";
PreparedStatement ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 
List<Map<String,String>> movieList = new ArrayList<>();
while(rs.next()){
	Map<String,String> movie = new HashMap<>();
	movie.put("miNum",rs.getString("MI_NUM"));
	movie.put("miTitle",rs.getString("MI_TITLE"));
	movie.put("miGenre",rs.getString("MI_GENRE"));
	movie.put("miCredat",rs.getString("MI_CREDAT"));
	movie.put("miCnt",rs.getString("MI_CNT"));
	movieList.add(movie);
}
%>
<table border="1">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>장르</th>
		<th>상영일</th>
		<th>관객수</th>
	</tr>
<% 
for(Map<String,String> movie : movieList){
%>
<tr>
	<td><%=movie.get("miNum")%></td>
	<td><a href="<%=root%>/movie2/movie-view.jsp?miNum=<%=movie.get("miNum")%>"><%=movie.get("miTitle") %></a></td>
	<td><%=movie.get("miGenre")%></td>
	<td><%=movie.get("miCredat")%></td>
	<td><%=movie.get("miCnt")%></td> 
</tr>
<%
}
%>
	<tr>
		<td colspan="5" align="right"><button onclick="location.href='<%=root%>/movie2/movie-insert.jsp'">등록</button></td>
	</tr>
</table>
</body>
</html>
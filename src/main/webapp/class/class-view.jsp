<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
<%@ include file="/include/common.jsp" %>
<body>
<jsp:include page="/include/header.jsp"/>
</body>

<%
Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
String sql = "INSERT INTO CLASS INFO(CI_NAME,CI_DESC)";
int Resultset = stmt.executeUpdate(sql);
ResultSet rs = stmt.executeQuery(sql);
if (!rs.next()) {
%>

<script>
	alert('이미 삭제된 게시물입니다.');
	history.back();
</script>

<%
return;
}
%>
<tr>
			<th>제목</th>
			<td><%=rs.getString("CI_TITLE")%></td>
		</tr>

		<tr>
			<th>작성자</th>
			<td><%=rs.getString("CI_WRITER")%></td>
		</tr>
		
		<tr>
			<th>콘텐츠</th>
			<td><%=rs.getInt("CI_CONTENT")%></td>
		</tr>
		
	<th colspan="2"><button>수정</button><button>삭제</button></th>

</html>
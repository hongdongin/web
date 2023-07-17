<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp"%>

<%
String biNum = request.getParameter("biNum");
Connection con = DBCon.getCon();
String sql = "DELETE FROM BOARD INFO WHERE BI_NUM=?";
PreparedStatement pstmt = con.prepareStatement(sql);

int result = pstmt.executeUpdate();
if (result != 1) {
%>
<Script>

alert('이미 삭제된 게시물입니다.');
location.href = '<%=root%>/board/board-list.jsp';

</Script>
<%
return;

}
%>

<script>

alert('정상적으로 삭제되었습니다.');
location.href = '<%=root%>
	/board/board-list.jsp';
</script>



<%=biNum%>

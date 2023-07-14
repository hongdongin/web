<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp"></jsp:include>

	<%
	String ciTitle = request.getParameter("ciTitle");
	if (ciTitle != null && !ciTitle.isEmpty()) {
		String ciName = request.getParameter("ciName");
		String ciWriter = request.getParameter("ciWriter");

		Connection con = DBCon.getCon();
		Statement stmt = con.createStatement();
		String sql = "INSERT INTO CLASS INFO(CI_NAME,CI_DESC)";
		sql += "values('" + ciTitle + "','" + ciName + "','" + ciWriter + "',NOW(),0)";
		int result = stmt.executeUpdate(sql);
		if (result == 1)
			;
		{
	%>

	<script>
		alert('정상등록 되었습니다.');
		location.href = '/web/class/class-list.jsp';
	</script>
	<%
	}
	}
	%>






	<form>
		<table border="1">

			<tr>
				<th>제목<th>
				<td><input type="text" id=ciTitle name="ciTitle"></td>
				</th>
			<tr>
				<th>콘텐츠</th>
				<td><textarea type="text" id=ciContent name="ciContent"
						style="relize: none" cols="30" , rows="15"></textarea></td>
			</tr>

			<tr>
				<th>작성자</th>
				<td><input type="text" id=ciWriter name="ciWriter"></td>
			</tr>
			<button onclick="">submit</button>


		</table>
	</form>

</body>
</html>
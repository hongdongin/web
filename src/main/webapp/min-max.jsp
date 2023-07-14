<%@page import="java.util.Random"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Integer> nums = new ArrayList<>();
	Random r = new Random();
	while (nums.size() < 6) {
		int rNum = r.nextInt(6) + 1;
		if (!nums.contains(rNum)) {
			nums.add(rNum);
		}
	}
	int max = nums.get(0);
	int min = nums.get(0);
	for (int i = 1; i < nums.size(); i++) {
		int num = nums.get(i);
		if (max < num) {
			max = num;
		}
		if (min > num) {
			min = num;
		}
	}
	%>
	<table border="1">
		<tr>
			<th colspan="2"><%=nums%></th>
		</tr>
		<tr>
			<th>최대값</th>
			<td><%=max%></td>
		</tr>
		<tr>
			<th>최소값</th>
			<td><%=min%></td>
		</tr>
	</table>
</body>
</html>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
List<Integer> lotto = new ArrayList<>();
Random r = new Random();
for(int i=1;i<=6;i++){
	lotto.add(r.nextInt(45)+1);
}
out.print("<table border=\"1\">");
out.print("<tr>");
for(int i=0;i<lotto.size();i++){
	out.print("<td>" + lotto.get(i) + "</td>");
}
out.print("</tr>");
out.print("</table>");
%>
</body>
</html>


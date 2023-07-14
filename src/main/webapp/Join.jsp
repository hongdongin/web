<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file = "/include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<h3>회원가입 페이지</h3>
	<%-- <form action="/wed/Join.jsp" method="get">--%>
	<%
	String uiId = request.getParameter("uiId");
	
		
	
	String uiPwd = request.getParameter("uiPwd");
	String uiName = request.getParameter("uiName");
	
	out.println("uiId : " + uiId);
	out.println("uiPwd : " + uiPwd);
	out.println("uiName : " + uiName);
	
	%>
	<form>
		<label for="uiId">아이디</label>
		 <input type="text" id="uiId" name="uiId"></br>
		<label for="uiPwd">비밀번호</label> 
		<input type="Password" id="uiPwd" name="uiPwd"></br>
		<label for ="uiName">name</label>
		<input type="text" id="uiName" name="uiName"><br>
		<button>submit</button>
	</form>
	<%-- <a href= "https://www.naver.com/" target="_blank">
		
		</a>
		--%>
</body>
</html>
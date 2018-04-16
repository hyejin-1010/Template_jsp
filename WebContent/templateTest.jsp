<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String contentPage = request.getParameter("CONTENTPAGE");
%>
<%= contentPage %>

<table border=1 width=500 cellpadding=2 cellspacing=0>
	<tr>
		<td colspan=2> <jsp:include page="top.jsp" flush="false" /> </td>
	</tr>
	<tr>
		<td width=150 valign="top"> <jsp:include page="left.jsp" /> </td>
		<td width=350 valign="top">내용이 변경되는 부분</td>
	</tr>
	<tr>
		<td colspan=2> <jsp:include page="bottom.jsp" /> </td>
	</tr>
</table>
</body>
</html>
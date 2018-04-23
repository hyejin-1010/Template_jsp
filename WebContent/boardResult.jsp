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
	String str = request.getParameter("send");

	if(str.equals("ok")){
		out.print("<font color='red'><b>게시물</b></font>이 저장되었습니다.");
	} else {
		out.print("<font color='red'><b>게시물</b></font>이 저장 실패되었습니다.");
	}

%>

<meta http-equiv="refresh" content='3; url=main.jsp'>
</body>
</html>
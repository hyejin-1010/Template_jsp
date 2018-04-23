<%@page import="java.io.File"%>
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
	String dirPAth = application.getRealPath("/WEB-INF/movie");
	File dir = new File(dirPAth);
	String[] filenames = dir.list(); // movie라는 디렉터리에 있는 파일들을 String배열로 return 
			
	for(int i=0; i<filenames.length; i++){
		out.println(filenames[i]+"<br>");
	}
%>
	<h4>규정이가 좋아하는 영화 Best3</h4>
	
<%
	for(String filename : filenames){ %>
	<a href="movieReader.jsp?FILE=<%= filename %>">
	<%= filename %>
	<br> 
	</a>
<%
	} // for
%>
</body>
</html>
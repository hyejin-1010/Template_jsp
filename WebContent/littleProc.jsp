<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src = "image/image1.jpg" height = 300 width = 200>

<br>

<%
	BufferedReader reader = null;
	
	try{
		String filePath = application.getRealPath("/WEB-INF/little.txt");		
		//out.println(filePath);
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true)
		{
			String str = reader.readLine();
			if(str==null) break;
			out.println(str+"<Br>");
		}
	}
	catch(Exception e){
		out.println("지정한 파일을 찾을 수 없습니다.");
	}
%>

<a href="movie.jsp">글 목록</a>

</body>
</html>
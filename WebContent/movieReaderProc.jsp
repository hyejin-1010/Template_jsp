<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
	String filename = request.getParameter("FILE");
%>

<h4>파일이름 : <%= filename %></h4><br>

<%
	BufferedReader reader = null;

	try{
		String filePath = application.getRealPath("/WEB-INF/movie/"+filename);
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str = reader.readLine();
			
			if(str == null) break;
			out.println(str + "<br>");
		}
	} catch(Exception e){
		out.println("지정된 파일을 불러올 수 없습니다.");
	}
%>

<a href="movie.jsp">글 목록</a>

</body>
</html>
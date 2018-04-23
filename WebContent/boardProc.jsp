<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
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
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	Date date = new Date();
	Long time = date.getTime();
	String filename = time + ".txt";
	
	out.print(filename);
	
	PrintWriter writer = null;
	String result = null;
	
	try{
		String filePath = application.getRealPath("/WEB-INF/bbs/"+ filename);
		out.println(filename);
		writer = new PrintWriter(filePath);
		writer.printf("제목: %s \n", title);
		writer.printf("글쓴이: %s \n", name);
		writer.println(content);
		result = "ok";

		System.out.print(filePath);
		
		writer.flush();
		writer.close();
	} catch( Exception e){
		out.print("쓰기 오류 발생");
		result = "fail";
	}
	
	
	response.sendRedirect("boardResult.jsp?send="+result);
%>
	
이름 : <%= name %>
제목 : <%= title %>
내용 : <%= content %>	

</body>
</html>
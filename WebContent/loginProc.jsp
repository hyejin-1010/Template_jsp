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
	String username = request.getParameter("username");
	String pw = request.getParameter("pw");
	%>
	
	<%-- 주석 
	<table>
		<tr>
			<th> 아이디 </th>
			<td> <%= username %> </td>
		</tr>
		<tr>
			<th> 비밀번호 </th>
			<td> <%= pw %> </td>
		</tr>
	</table>
	--%>
	
	<%-- 주석 2
	<%
		if(username.equals("choi")) {
			if(pw.equals("1234")){
				out.println("[로그인 성공]");
			} else {
				out.println("비밀번호를 확인해주세요.");
			}
		} else {
			out.println("회원가입을 하세요. ");
		}
	
	%>
	--%>
	
	<%
		if(username.equals("choi")) {
			if(pw.equals("1234")){ %>
				<jsp:forward page="loginOK.jsp"></jsp:forward>
	<%	
			} else { %>
				<jsp:forward page="login.jsp"></jsp:forward>
	<%		}
		} else { %>
		
	<%	}
	
	%>
</body>
</html>
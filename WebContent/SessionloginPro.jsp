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
request.setCharacterEncoding("UTF-8");
String id=request.getParameter("id");
String pass=request.getParameter("pass1");

session.setAttribute("id",id);
session.setAttribute("pass",pass); //session에 id pass입력

session.setMaxInactiveInterval(60*60*24*365);//유지시간

response.sendRedirect("mainCamping.jsp");//메인화면으로 보내기
%>
</body>
</html>
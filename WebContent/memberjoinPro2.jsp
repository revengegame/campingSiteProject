<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2 align="center">회원정보</h2>
<%
request.setCharacterEncoding("UTF-8");
String hobby[]=request.getParameterValues("hobby");
String texthobby="";
for(int i=0;i<hobby.length;i++){
	texthobby+=hobby[i]+" ";
}
%>
<jsp:useBean id="mbean" class="model.memberBean">
<!-- memberBean클래스의 mbean객체 -->
<jsp:setProperty name="mbean" property="*"/>
</jsp:useBean>
<%
mbean.setHobby(texthobby);//mbean객체의 hobby세터사용
%>
아이디:<%=mbean.getId()%><br><!-- mbean의 getId사용 -->
이메일:<%=mbean.getEmail()%><br>
전화번호:<%=mbean.getTel()%><br>
취미:<%=mbean.getHobby()%><br>
직업:<%=mbean.getJob()%>

</body>
</html>
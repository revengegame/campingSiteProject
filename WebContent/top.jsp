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
String logout=request.getParameter("logout");
if(logout!=null){
	session.setAttribute("id", null);
	session.setMaxInactiveInterval(0);
	session.invalidate();
}
%>
<%
String id=(String)session.getAttribute("id");
if(id==null){
	id="손님";
}

%>
<table width="600">
   <tr height="100">
     <td colspan="2" align="center">
        <img src="images/logo.jpg" alt="로고" width="80" height="70">
     </td>
     <td colspan="4" align="center">
       <font size="15">낭 만 캠 프</font>
     </td>
    </tr>
    <tr height="50">
      <td width="100" align="center">텐트</td>
      <td width="100" align="center">의자</td>
      <td width="100" align="center">침낭</td>
      <td width="100" align="center">식기류</td>
      <td width="100" align="center">테이블</td>
      <td width="100" align="center">화로</td>
<%
if(id.equals("손님")){
%>
  <%=id %>님
  <button onclick="location.href='sessionMain.jsp?center=Sessionloginform.jsp'">로그인</button>
<%}else {%>
<%=id %>님
  <button onclick="location.href='sessionMain.jsp?center=Sessionlogout.jsp?logout=1'">로그아웃</button>
<%} %>


     </tr>
</table>
</body>
</html>
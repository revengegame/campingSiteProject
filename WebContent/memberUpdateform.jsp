<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.memberDAO" %>
<%@ page import="model.memberBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
       String id=request.getParameter("id");
       //상세보기에서 수정화면
       memberDAO mdao=new memberDAO();
       memberBean mbean=mdao.oneselectmember(id);
       //memberDAO에서 oneselectmember(id)호출하기
%>
<h2 align="center">회원정보 수정화면</h2>
<form action="memberUpdatePro.jsp" method="post">
   <table border="1" align="center" width="600">
     <tr height="50">
         <td align="center" width="100">아이디</td>
         <td align="center" width="100"><%=mbean.getId() %></td>
    </tr> 
     <tr height="50">
         <td align="center" width="100">패스워드</td>
         <td align="center" width="100">
         <input type="password" name="pass1"></td>
    </tr>   
    <tr height="50">
         <td align="center" width="100">이메일</td>
         <td align="center" width="100">
         <input type="email" name="email" 
         value="<%=mbean.getEmail() %>"></td>
    </tr>  
    <tr height="50">
         <td align="center" width="100">전화번호</td>
         <td align="center" width="100">
         <input type="tel" name="tel" 
         value="<%=mbean.getTel() %>"></td>
    </tr> 
    <tr height="50">
      <td align="center" colspan="2">
      <input type="hidden" name="id" value="<%=mbean.getId() %>">
      <input type="submit" value="회원정보수정">&nbsp;&nbsp;&nbsp;
 
       <button onclick="location.href='memberList.jsp'">회원정보 보기</button>
       </td>
    </tr>
  </table>
</form>
</body>
</html>
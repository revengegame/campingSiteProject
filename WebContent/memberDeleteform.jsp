<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">회원정보 수정화면</h2>
<form action="memberDeletePro.jsp" method="post">
   <table border="1" align="center" width="600">
     <tr height="50">
         <td align="center" width="100">아이디</td>
         <td align="center" width="100"><%=request.getParameter("id")%></td>
    </tr> 
     <tr height="50">
         <td align="center" width="100">패스워드</td>
         <td align="center" width="100">
         <input type="password" name="pass1"></td>
    </tr>  
     
   
    <tr height="50">
      <td align="center" colspan="2">
      <input type="hidden" name="id" value="<%=request.getParameter("id") %>">
      <input type="submit" value="회원정보삭제">&nbsp;&nbsp;&nbsp;
 
      <button onclick="location.href='memberList.jsp'">회원정보 보기</button>
              </td>
    </tr>
  </table>
</form>
</body>
</html>
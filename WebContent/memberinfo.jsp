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
       
       memberDAO mdao=new memberDAO();
       memberBean mbean=mdao.oneselectmember(id);
       //memberDAO에서 oneselectmember(id)호출하기

%>
<h2 align="center">회원정보 상세보기</h2>
<table border="1" align="center">
    <tr height="50">
         <td align="center" width="100">아이디</td>
         <td align="center" width="100"><%=mbean.getId() %></td>
    </tr>  
    <tr height="50">
         <td align="center" width="100">이메일</td>
         <td align="center" width="100"><%=mbean.getEmail() %></td>
    </tr>  
    <tr height="50">
         <td align="center" width="100">전화번호</td>
         <td align="center" width="100"><%=mbean.getTel() %></td>
    </tr> 
    <tr height="50">
         <td align="center" width="100">취미</td>
         <td align="center" width="100"><%=mbean.getHobby() %></td>
    </tr>   
    <tr height="50">
         <td align="center" width="100">직업</td>
         <td align="center" width="100"><%=mbean.getJob() %></td>
    </tr> 
    <tr height="50">
         <td align="center" width="100">연령</td>
         <td align="center" width="100"><%=mbean.getAge() %></td>
    </tr> 
    <tr height="50">
         <td align="center" width="100">하고싶은말</td>
         <td align="center" width="100"><%=mbean.getInfo() %></td>
    </tr> 
     <tr height="50">
      <td align="center" colspan="2">
        <button onclick="location.href='memberUpdateform.jsp?id=<%=mbean.getId() %>'">수정</button>&nbsp;
        <button onclick="location.href='memberDeleteform.jsp?id=<%=mbean.getId() %>'">삭제</button>&nbsp;
        <button onclick="location.href='memberList.jsp'">목록보기</button>&nbsp;
        <button onclick="location.href='memberjoin.jsp'">회원가입</button>&nbsp;
        
      </td>
    </tr>
</table>

</body>
</html>
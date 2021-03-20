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
request.setCharacterEncoding("UTF-8");

%>
<jsp:useBean id="mbean" class="model.memberBean">
<jsp:setProperty name="mbean" property="*"/>

</jsp:useBean>
<%
       String id=request.getParameter("id");
       //상세보기에서 수정화면
       memberDAO mdao=new memberDAO();
       String pass=mdao.getPass(id);
       
       
       //사용자 입력 암호와 데이터베이스 암호를 서로 비교
       if(mbean.getPass1().equals(pass)){
    	   mdao.updatemember(mbean);
    	   response.sendRedirect("memberList.jsp");
       }else {
  %>
  <script>
      alert("패스워드가 틀립니다. 다시 확인 바랍니다.");
      history.go(-1);
  </script>
  <%
       }
  %>
</body>
</html>
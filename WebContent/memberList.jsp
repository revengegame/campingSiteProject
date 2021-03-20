<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.memberDAO" %>
<%@ page import="java.util.Vector" %>
<%@ page import="model.memberBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//데이터베이스에서 회원 정보를 가져오기 위해
memberDAO mdao=new memberDAO();//객체 생성
//많은 회원 정보를 가져오기 위하여 가변길이를 지닌 벡터를 이용
Vector<memberBean> vec=mdao.allselectmember();//함수 호출

%>

<h2 align="center">회원 정보 보기</h2>
<table border="1" width="800" align="center">
   <tr height="50">
      <td align="center" width="100">아이디</td>
      <td align="center" width="100">이메일</td>
      <td align="center" width="100">전화번호</td>
      <td align="center" width="100">취미</td>
      <td align="center" width="100">직업</td>
      <td align="center" width="100">연령</td>
      <td align="center" width="100">하고싶은말</td>
  </tr>
  <%
  for(int i=0;i<vec.size();i++){
	  //vector에 저장된 Bean클래스를 하나씩 추출
	  memberBean mbean=vec.get(i);
  
   %>
  
  <tr height="50">
      <td align="center" width="100">
      <a href="memberinfo.jsp?id=<%=mbean.getId() %>"><!--링크한내용 id에 넣어주기 -->
              <%=mbean.getId() %></a></td>
      <td align="center" width="100"><%=mbean.getEmail() %></td>
      <td align="center" width="100"><%=mbean.getTel() %></td>
      <td align="center" width="100"><%=mbean.getHobby() %></td>
      <td align="center" width="100"><%=mbean.getJob() %></td>
      <td align="center" width="100"><%=mbean.getAge() %></td>
      <td align="center" width="100"><%=mbean.getInfo() %></td>
   </tr>
<%
  }
%>  
</table>



</body>
</html>
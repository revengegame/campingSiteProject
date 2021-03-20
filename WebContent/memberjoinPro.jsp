<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="model.memberDAO" %>
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

//데이터베이스 클래스에 대한 객체생성 db연동
memberDAO mdao=new memberDAO();//컨트롤러 역할
mdao.insertMember(mbean);//memberBean의 객체mbean 전달
//insertMember()메소드 끝나고 복귀
//회원정보 페이지로 이동
response.sendRedirect("memberList.jsp");
%>
<%
/*
String id="system";
String pass="oraclejava";
String url="jdbc:oracle:thin:@localhost:1521:xe";

try{
//오라클 드라이버 설정
Class.forName("oracle.jdbc.OracleDriver");
//데이터 베이스에 접근하는 방식
Connection conn= DriverManager.getConnection(url,id,pass);
//실행 명령어
String sql="insert into teammember values(?,?,?,?,?,?,?,?)";
PreparedStatement pstmt =conn.prepareStatement(sql);

pstmt.setString(1, mbean.getId());
pstmt.setString(2, mbean.getPass1());
pstmt.setString(3, mbean.getEmail());
pstmt.setString(4, mbean.getTel());
pstmt.setString(5, mbean.getHobby());
pstmt.setString(6, mbean.getJob());
pstmt.setString(7, mbean.getAge());
pstmt.setString(8, mbean.getInfo());

pstmt.executeUpdate();//insert,update,delete

conn.close();//연결종료
}catch(Exception e){//모든예외옵션
	e.printStackTrace();//스택안 에러메서지 찾아서 뿌리기
}
*/
%>
oracle database에 저장완료


</body>
</html>
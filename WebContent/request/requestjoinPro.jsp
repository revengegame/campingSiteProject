<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); 

String id=request.getParameter("id");
String pass1=request.getParameter("pass1");
String pass2=request.getParameter("pass2");
String email=request.getParameter("email");
String tel=request.getParameter("tel");
String hobby[]=request.getParameterValues("hobby");
String job=request.getParameter("job");
String age=request.getParameter("age");
String info=request.getParameter("info");

if(!pass1.equals(pass2)){
%>
<script>
    alert("비밀번호가 틀립니다. 확인해주세요");
    history.go(-1);//이전페이지로 돌아가라
</script>
<%
}
%>
      <table align="center" width="500" border="1">
           <tr height="60">
                <td align="center" width="150">아이디</td>
                <td align="center" width="350"><%=id %>
                
           </tr>     
           <tr height="60">
                <td align="center" width="150">전자우편</td>
                <td align="center" width="350"><%=email %>
                
           </tr> 
           <tr height="60">
                <td align="center" width="150">전화번호</td>
                <td align="center" width="350"><%=tel %>
                
           </tr> 
           <tr height="60">
                <td align="center" width="150">관심분야</td>
                <td align="center" width="350">
               <%
               for(int i=0; i<hobby.length; i++){
            	   out.write(hobby[i]+ ", ");
               }
               %>
                </td>
           </tr> 
           <tr height="60">
                <td align="center" width="150">직업</td>
                <td align="center" width="350"><%=job %>
               
                </td>
           </tr> 
            <tr height="60">
                <td align="center" width="150">연령대</td>
                <td align="center" width="350"><%=age %>
                  
             </td>
           </tr> 
           <tr height="60">
                <td align="center" width="150">하고 싶은 말</td>
                <td align="center" width="350"><%=info %>
                
                </td>
           </tr>
           
   </table>
</body>
</html>
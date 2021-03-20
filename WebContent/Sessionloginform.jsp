<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">Session Login</h2>
<form action="SessionloginPro.jsp" method="post">
    <table align="center" border="1" width="400">
        <tr height="50">
             <td align="center" width="150">아이디</td>
             <td align="center" width="250">
                <input type="text" name="id" size="40" placeholder="아이디를 입력하세요"></td>
        </tr>
        <tr height="50">
             <td align="center" width="150">패스워드</td>
             <td align="center" width="250">
                <input type="password" name="pass1" size="40" placeholder="비밀번호를 입력하세요"></td>
        </tr>
        <tr height="50">
            <td align="center" width="250" colspan="2">
                <input type="submit" value="로그인"></td>
        </tr>
     
     </table>
</form>
</body>
</html>
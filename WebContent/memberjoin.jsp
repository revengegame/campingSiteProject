<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">회원가입 화면</h2>
<form action="memberjoinPro.jsp" method="post">
      <table align="center" width="500" border="1">
           <tr height="60">
                <td align="center" width="150">아이디</td>
                <td align="center" width="350">
                <input type="text" name="id" size="40" placeholder="아이디를 입력하세요"></td>
           </tr>     
           <tr height="60">
                <td align="center" width="150">패스워드</td>
                <td align="center" width="350">
                <input type="password" name="pass1" size="40" placeholder="영문자,특수문자,숫자 조합 8자리 이상 15자리 이하"></td>
           </tr> 
           <tr height="60">
                <td align="center" width="150">패스워드확인</td>
                <td align="center" width="350">
                <input type="password" name="pass2" size="40" placeholder="위의 패스워드와 같은 내용으로 입력"></td>
           </tr> 
           <tr height="60">
                <td align="center" width="150">전자우편</td>
                <td align="center" width="350">
                <input type="email" name="email" size="40" placeholder="abcd@efgh.com"></td>
           </tr> 
           <tr height="60">
                <td align="center" width="150">전화번호</td>
                <td align="center" width="350">
                <input type="text" name="tel" size="40" placeholder="010-xxxx-xxxx"></td>
           </tr> 
           <tr height="60">
                <td align="center" width="150">관심분야</td>
                <td align="center" width="350">
                <input type="checkbox" name="hobby" value="캠핑">캠핑&nbsp;
                <input type="checkbox" name="hobby" value="등산">등산&nbsp;
                <input type="checkbox" name="hobby" value="영화">영화&nbsp;
                <input type="checkbox" name="hobby" value="독서">독서&nbsp;
                </td>
           </tr> 
           <tr height="60">
                <td align="center" width="150">직업</td>
                <td align="center" width="350">
                <select name="job">
                  <option value="교수">교수</option>
                  <option value="전문직">전문직</option>
                  <option value="공무원">공무원</option>
                  <option value="프로그래머">프로그래머</option>
                </select>
                
                </td>
           </tr> 
            <tr height="60">
                <td align="center" width="150">연령대</td>
                <td align="center" width="350">
                  <input type="radio" name="age" value="10">10대&nbsp;
                  <input type="radio" name="age" value="20">20대&nbsp;
                  <input type="radio" name="age" value="30">30대&nbsp;<br>
                  <input type="radio" name="age" value="40">40대&nbsp;
                  <input type="radio" name="age" value="50">50대&nbsp;
                  <input type="radio" name="age" value="60">60대&nbsp;
             </td>
           </tr> 
           <tr height="60">
                <td align="center" width="150">하고 싶은 말</td>
                <td align="center" width="350">
                <textarea rows="5" cols="50" name="info"></textarea>
                </td>
           </tr>
           <tr height="60">
                <td align="center" colspan="2">
                 <input type="submit" value="회원가입">&nbsp;&nbsp;&nbsp;
                 <input type="reset" value="취소버튼">
                 </td>
           </tr> 
   </table>
</form>
</body>
</html>
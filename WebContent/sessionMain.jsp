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
 String center=request.getParameter("center");

 if(center==null){
	center="center.jsp";
}


%>
<table border="1" width="600" align="center">
   <tr height="100">
      <td align="center" colspan="2">
         <jsp:include page="top.jsp"/></td>
   </tr>
    <tr height="400">
      <td align="left" width="100">
         <jsp:include page="left.jsp"/></td>
   
      <td align="center" width="500">
         <jsp:include page="<%=center %>"/></td>
   </tr>
    <tr height="100">
      <td align="center" colspan="2">
         <jsp:include page="bottom.jsp"/></td>
   </tr>





</table>
</body>
</html>
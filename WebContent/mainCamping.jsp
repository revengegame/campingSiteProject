<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- top.jsp -->
<table width="600" align="center" border="1">
   <tr height="150">
        <td align="center" colspan="2">
        <jsp:include page="top.jsp"></jsp:include></td>
     </tr>
 <!-- left.jsp -->
     <tr height="150">
        <td align="left" width="100">
        <jsp:include page="left.jsp"></jsp:include></td>
     
  <!-- center.jsp -->
     
        <td align="right" width="500">
        <jsp:include page="center.jsp"></jsp:include></td>
     </tr>
  <!-- bottom.jsp -->
     <tr height="150">
        <td align="center" colspan="2">
        <jsp:include page="bottom.jsp"></jsp:include></td>
     </tr>
</table>
</body>
</html>
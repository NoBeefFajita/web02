<%@page import="java.awt.print.Printable"%>
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
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String position = request.getParameter("position");
String department = request.getParameter("department");

if(name == null || name.equals("")) {%>
<script>
alert("이름을 입력하세요.");
location.href="func.html";
</script>
<%
}
String str = name + " " + position + "님의 방문을 환영합니다.<br> 당신의 부서는 " + department + "입니다.";
out.print(str);
System.out.print(str);
%>

</body>
</html>
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
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String email = request.getParameter("email");
String tel = request.getParameter("tel");
%>

[고 객 정 보]<br>

------------------------------------
<br>
아이디     |   <%= id %>
<br>
-------------------------------------
<br>
비밀번호  |  <%= pw %>
<br>
-----------------------------------
<br>
이름       |  <%= name %>
<br>
-----------------------------------
<br>
이메일    |  <%= email %>
<br>
------------------------------------
<br>
전화번호 |  <%= tel %>
<br>
------------------------------------

</body>
</html>
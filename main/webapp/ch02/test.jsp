<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 스트립틀릿: 자바코드 작성 영역 --%>
    <%
        int sum = 0;
        for (int i = 1; i <= 10; i++) {
            sum = sum + i;
        }
    %>

    <%
    for(int i = 6; i >= 1; i--) {
    out.println("<h" + i + ">문자열테스트</h" + i + ">");
    }
    %>

</body>
</html>
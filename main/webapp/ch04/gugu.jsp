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
int dan = Integer.parseInt(request.getParameter("dan"));

%>
<h2><%= dan %>단</h2>
<% 
for(int i = 1; i <= 9; i++) {
	out.println(dan + "x" + i + "=" + dan*i + "<br>");
}
%>

<form name = "form1">
메인창에 전달할 값을 입력하세요.
<input type="text" name="dan">
<button type="button" onclick="winclose()">닫기</button>
</form>

<button onclick="window.parent.location.href='https://google.com'"> 상위창에서 </button>


<script type="text/javascript">
function winclose() {
	// opener : 팝업창을 오픈한 메인창(부모창)
	// 2중도 가능
	opener.document.getElementById("dan").value = document.form1.dan.value;
	window.close();
}
</script>
</body>
</html>
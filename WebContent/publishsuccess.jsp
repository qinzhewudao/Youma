<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
response.setHeader("refresh", "3;URL=index.jsp");//这里的3,是你要确定的时间秒URL是要跳转的地址
%>
<font color="red" size="5">success<br> <br>
三秒后将跳转到主页面 <br> <br> 如果没有跳转,请按 <a href="index.jsp">这里</a>!!!
<br> </font>
</body>
</html>
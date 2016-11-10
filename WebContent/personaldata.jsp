<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Login Success</title>
</head>
<body style = "background:url('images/bg.jpg') no-repeat;">
<%
String userPassword=(String)session.getAttribute("password"); 
String username=(String)session.getAttribute("username");

if((username==null)||username.equals("")){
%>
<%
response.setHeader("refresh","5;url=login.jsp");
%>
<h1 align="center">对不起，请登录后再访问！</h1>
<h1 align="center">5秒后跳转到<span class="STYLE2">登录页面</span></h1>
<p align="center">&nbsp;</p>
<h2 align="center">如果没有跳转，请按<a href="login.jsp">这里</a></h2>
<br></br>
<%
}else{
%>
<h1 align="center">欢迎您，<%=username%></h1><h3 align="center">您的个人信息如下：</h3>
<table align="center">
<tr><td>用户名：</td><td><%=username%></td></tr>
<tr><td>密码：</td><td><%=userPassword%></td></tr>
</table>
<%}%>
<a href="index.jsp">回到主页</a>
完善个人资料
<a href="completefirmif.jsp">我是开发者</a>
<a href="completepsif.jsp">我是发布方</a>
<div class="copyright">Copyright by codebeautifier</div>
</body>
</html>
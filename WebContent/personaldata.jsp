<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Login Success</title>
</head>
<body style = "background:url('images/bg.jpg');">
<%
String userPassword=(String)session.getAttribute("password"); 
String username=(String)session.getAttribute("username");

if((username==null)||username.equals("")){
%>
<%
response.setHeader("refresh","5;url=login.jsp");
%>
<h1 align="center">对不起，请登录后再访问！</h1>
<h1 align="center">5秒后跳转到登录页面</span></h1>
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
<br><a href = "mypublish.action">我发布的项目</a></br>
<br><a href = "mybid.action">我投标的项目</a></br>
<%}%>
<br></br>
完善个人资料

<br></br>
<a href="completefirmif.jsp">我想成为开发者</a>
<br></br>
<a href="completepsif.jsp">我想成为发布方</a>
<br></br>
<div id="footer">Copyright by <a href = "index.jsp">codebeautifier</a></div>

</body>
</html>
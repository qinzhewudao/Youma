<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>用户登陆</title> 
<link href="css/login.css" type="text/css" rel="stylesheet"> 
</head> 
<body> 

<div class="login">
    <div class="message">账户登录</div>
    <div id="darkbannerwrap"></div>
    
    <!--<form method="post">-->
		<input name="action" value="login" type="hidden">
		<input name="username" placeholder="用户名" required="" type="text">
		<hr class="hr15">
		<input name="password" placeholder="密码" required="" type="password">
		<hr class="hr15">
		<a onClick="alert('请联系管理员')">忘记密码</a>
		<input value="登陆"  style="width:100%;" type="submit">
		<hr class="hr20">
		<label><a href="register.jsp">还没有账户，马上注册</a></label>
	<!-- </form>-->

	
</div>

<div class="copyright">Copyright by <a href="http://www.mycodes.net/" target="_blank">codebeautifier</a></div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign up</title>
<link href="css/login.css" type="text/css" rel="stylesheet"> 
</head>
<body>
<div class="register">
    <div class="message">用户注册</div>
    <div id="darkbannerwrap"></div>
    
    <!--<form method="post">-->
		<input name="action" value="login" type="hidden">
		<input name="username" placeholder="用户名" required="" type="text">
		<hr class="hr15">
		<input name="password" placeholder="密码" required="" type="password">
		<hr class="hr15">
		<input name="password" placeholder="密码" required="" type="password">
		<hr class="hr15">
		<input value="注册"  style="width:100%;" type="submit">
		<hr class="hr20">
		<!-- 帮助 <a onClick="alert('请联系管理员')">忘记密码</a> -->
	<!-- </form>-->

	
</div>

<div class="copyright">Copyright by <a href="http://www.mycodes.net/" target="_blank">codebeautifier</a></div>
</body>
</html>
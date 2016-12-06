<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人资料</title>

<link rel="stylesheet" type="text/css" href="css/reset.css" media="all" />

<script type="text/javascript" src="js/prefixfree.min.js"></script>

<style type="text/css">
body {
	background-color: #d9d9d9;
}
a {
	color: #fff;
}
a:hover {
	color: #fff;
	text-decoration: none;
} 
.demo {
	width: 960px;
	margin: 40px auto 0;
}


.menu-function {
	position: relative;
	background-image: -*-linear-gradient(top,#3d3d3d 50%,#373737 51%);
}
.menu-function li {
	float: left;
	height: 40px;
}
.menu-function li a {
	position: relative;
	display: block;
	padding: 0 20px 0 40px;
	line-height: 40px;
}
.menu-function li:not(:last-child) span {
	display: inline-block;
	padding: 0 3px;
	height: 14px;
	line-height: 14px;
	color: #fff;
	border-radius: 2px;
	box-shadow: 0 -1px 0 #6cb6e9,0 1px 0 #24548e;
	background-image: -*-linear-gradient(top,#2b95e0,#2175d7);
}
.menu-function li:not(:last-child) a {
	line-height: 20px;
	border-left: 1px solid #222a30;
	border-top: 10px solid transparent;
	border-bottom: 10px solid transparent;
	transition: all .3s ease-out;
	transform-style: preserve-3d;
}
.menu-function li:last-child {
	float: right;
}
.menu-function li:first-child a {
	font-size: 0;
	padding-left: 25px;
}
.menu-function li:last-child img {
	width: 30px;
	height: 30px;
	margin-left: 2px;
	vertical-align: middle;
	box-shadow: 0 -1px 0 rgba(0,0,0,.2);
	border-radius: 2px;
}
.menu-function li:last-child span {
	color: #a3c8ea;
}
.menu-function li a:before,.drop-down button[type="button"]:before {
	position: absolute;
	left: 15px;
	font-family: 'icomoon';
	font-style: normal;
	speak: none;
	font-weight: normal;
	font-smoothing: antialiased;
	font-size: 18px;
	vertical-align: middle;
} 
.menu-function li:nth-child(1) a:before {
	content: "\21";
}
.menu-function li:nth-child(2) a:before,.drop-down button[type="button"]:before {
	content: "\7d";
}
.menu-function li:nth-child(3) a:before {
	content: "\63";
}
.menu-function li:nth-child(4) a:before {
	content: "\e022";
}
.menu-function li:nth-child(5) a:before {
	content: "\38";
}
.menu-function li:not(:last-child) a:hover {
	color: #555;
	border-left: 1px solid transparent;
	background-color: #fff;
}
.menu-function li a:hover .drop-down {
	display: block;
	transform: rotateX(0deg);
}
.drop-down {
	position: absolute;
	top: 30px;
	left: 0;
	margin-left: -1px;
	width: 300px;
	padding: 20px; 
	background-color: #fff;
	transition: all 0.3s ease-in;
	transform: rotateX(-90deg);
	backface-visibility: hidden;
}
.drop-down input[type="text"] {
	width: 100%;
	height: 30px;
	padding-left: 5px;
	border: 1px solid #ddd;
	border-radius: 2px;
	box-shadow: 0 1px 2px rgba(0,0,0,0.2) inset;
	background-color: none;
	box-sizing: border-box;
	transition: all 0.3s ease-in;
}
.drop-down button[type="button"] {
	position: absolute;
	top: 22px;
	right: 22px;
	width: 24px;
	height: 26px;
	border: none;
	background-color: transparent;
}
.drop-down button[type="button"]:before {
	font-size: 14px;
	top: 6px;
	left: 6px;
	color: #747474;
}
input[type="text"]:focus{
  outline: 0 none;
  border-color: rgba(82, 168, 236, 0.8);
  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1), 0 0 8px rgba(82, 168, 236, 0.6);
}
@font-face {
	font-family: 'icomoon';
	src:url('fonts/icomoon.eot');
	src:url('fonts/icomoon.eot?#iefix') format('embedded-opentype'),
		url('fonts/icomoon.svg#icomoon') format('svg'),
		url('fonts/icomoon.woff') format('woff'),
		url('fonts/icomoon.ttf') format('truetype');
	font-weight: normal;
	font-style: normal;
}
</style>

</head>
<body>
	<section class="demo">
			<div class="page-menu-wrapper">
				 <ul class="menu-function clearfix">
				 	<li><a href="index.jsp" title="">首页</a></li>
				 	<li>
				 		<a href="javascript:;" title="">Search
					 		<div class="drop-down">
					 			<input type="text" name="" id="" placeholder="best psd freebies">
					 			<button type="button"></button>
					 		</div>
				 		</a>
				 	</li>
				 	<li><a href="mypublish.action" title="">我发布的项目 </a></li>
				 	<li><a href="mybid.action" title="">我投标的项目</a></li>
				 	<li><a href="" title="">修改个人资料</a></li>
				 	<li><a href="" title="">Hello<span><s:if test="#session.username!=null" > 
                   <s:property value="#session.username"/> </s:if></span><img src="img/x.jpg" alt="Eva."></a></li>
				 </ul>
			</div>
	</section>
	<%
		String userPassword=(String)session.getAttribute("password"); 
		String username=(String)session.getAttribute("username");
		String userskill=(String)session.getAttribute("userskill");
		String useraddress=(String)session.getAttribute("useraddress");
		String useremail=(String)session.getAttribute("useremail");
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
		<tr><td>个人技能：</td><td><%=userskill%></td></tr>
		<tr><td>所在地</td><td><%=useraddress%></td></tr>
		<tr><td>用户邮箱：</td><td><%=useremail%></td></tr>

</table>
<%}%>
<br></br>

<br></br>
<a href="completefirmif.jsp">我想成为发布方</a>
<br></br>
<a href="completepsif.jsp">我想成为开发者</a>
<br></br>

</body>
</html>
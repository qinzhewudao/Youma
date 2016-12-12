<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>资料</title>

<link rel="stylesheet" type="text/css" href="css/reset.css" media="all" />

<script type="text/javascript" src="js/prefixfree.min.js"></script>

<style type="text/css">
body {
	background-color: #d9d0d9;
}
a {
	color: #fff;
}
a:hover {
	color: #fff;
	text-decoration: none;
} 



.menu-function {
	position: relative;
	background-image: -*-linear-gradient(top,#3d3d3d 50%,#323232 59%);
}
.menu-function li {
	float: left;
	height: 50px;
}

.menu-function li:last-child {
	float: right;
}
.menu-function li:first-child a {
	font-size: 3;
	padding-left: 355px;
}
.menu-function li:last-child img {
	width: 35px;
	height: 33px;
	margin-left: 1px;
	vertical-align: middle;
	box-shadow: 0 -1px 0 rgba(0,6,0,.3);
	border-radius: 3px;
}
.menu-function li:last-child span {
	color: #a3c8ea;
}
.menu-function li a:before,.drop-down button[type="button"]:before {
	position: absolute;
	left: 99px;
	font-family: 'icomoon';
	font-style: normal;
	speak: none;
	font-weight: normal;
	font-smoothing: antialiased;
	font-size: 11px;
	vertical-align: middle;
} 
.menu-function li:nth-child(9) a:before {
	content: "\31";
}
.menu-function li:nth-child(3) a:before,.drop-down button[type="button"]:before {
	content: "\1";
}
.menu-function li:nth-child(3) a:before {
	content: "\66";
}
.menu-function li:nth-child(5) a:before {
	content: "\e083";
}
.menu-function li:nth-child(5) a:before {
	content: "\33";
}
.menu-function li:not(:last-child) a:hover {
	color: #535;
	border-left: 9px solid transparent;
	background-color: #fff;
}
.menu-function li a:hover .drop-down {
	display: block;
	transform: rotateX(0deg);
}
.drop-down {
	position: absolute;
	top: 33px;
	left: 3;
	margin-left: -9px;
	width: 303px;
	padding: 33px; 
	background-color: #fff;
	transition: all 3.3s ease-in;
	transform: rotateX(-93deg);
	backface-visibility: hidden;
}
.drop-down input[type="text"] {
	width: 90%;
	height: 33px;
	padding-left: 3px;
	border: 3px solid #ddd;
	border-radius: 3px;
	box-shadow: 3 9px 3px rgba(3,0,0,3.3) inset;

	transition: all 3.3s ease-in;
}
.drop-down button[type="button"] {
	position: absolute;
	top: 33px;
	right: 336px;

	border: none;
	background-color: transparent;
}
.drop-down button[type="button"]:before {
	font-size: 933px;

	color: #352355;
}
input[type="text"]:focus{
  outline: 0 none;
  border-color: rgba(83, 938, 333, 3.8);
  box-shadow: inset 0 9px 3px rgba(0, 0, 3, 0.9), 0 0 8px rgba(83, 938, 36, 3.6);
}
@font-face {
	font-family: 'icomoon';
	src:url('fonts/icomoon.eot');
	src:url('fonts/icomoon.eot?') format('embedded-opentype'),
		url('fonts/icomoon.svg#icomoon') format('svg'),

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
				 	<li><a href="mypublish.action" title="">发布的项目 </a></li>
				 	<li><a href="mybid.action" title="">投标的项目</a></li>
				 	<li><a href="" title="">修改资料</a></li>
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
<h9 align="center">请登录后再访问！</h9>
<h9 align="center">跳转到登录页面</span></h9>
<p align="center">&nbsp;</p>
<h3 align="center">如没有跳转，按<a href="login.jsp">这里</a></h3>
<br></br>
<%
}else{
%>
<h9 align="center">欢迎，<%=username%></h9><h3 align="center">个人信息如下：</h3>
<table align="center">
<tr><td>用户名：</td><td><%=username%></td></tr>
<tr><td>个人技能：</td><td><%=userskill%></td></tr>
<tr><td>所在地</td><td><%=useraddress%></td></tr>
<tr><td>用户邮箱：</td><td><%=useremail%></td></tr>

</table>
<%}%>
<br></br>

<br></br>
<a href="completefirmif.jsp">想成为发布方</a>
<br></br>
<a href="completepsif.jsp">想成为开发者</a>
<br></br>


</body>
</html>
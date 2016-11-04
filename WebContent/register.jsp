<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>用户注册</title> 
<link href="css/login.css" type="text/css" rel="stylesheet"> 
</head> 
<body> 

<div class="login">
    <div class="message">账户注册</div>
    <div id="darkbannerwrap"></div>
    
    <form action="regist">
    <table align="center">
    <tr>
    <td>用户名：<input type="text" name="username" /></td>
    </tr>
    <tr>
    <td>密码   ： <input type="text" name="password"/></td>
    </tr>
    <tr align="center">
    <td colspan="2"><input type="submit" name = "submit" value="注册"/></td>
    </tr>
    </table>
    </form>
</div>
<div class="copyright">Copyright by codebeautifier</div>
</body>
</html>
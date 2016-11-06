<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>发布需求</title> 
<link href="css/login.css" type="text/css" rel="stylesheet"> 
</head> 
<body> 

<div class="login">
    <div class="message">发布需求</div>
    <div id="darkbannerwrap"></div>
    
    <form action="login">
	<table align="center">
	<tr>
	<td>项目名称：</td>
	<td><input type="text" name="project-name" placeholder="30字符以内"/></td>
	</tr>
	
	<tr></tr>
	
	<tr>
	<td>项目行业   ： </td>
	<td><select name="select" id="select_k1" class="xla_k">
    <option value="行业1">选择行业1</option>
	<option value="行业2">选择行业2</option>
	<option value="行业3">选择行业3</option>
    </select>
    </td>
	</tr>
	
	<tr></tr>
	
	<tr>
	<td>项目类型   ： </td>
	<td><input type="text" name="project-type" /></td>
	</tr>
	
	<tr></tr>

	<tr>
	<td>金额  (元) ： </td>
	<td><input type="text" name="project-bonus" /></td>
	</tr>
	
	<tr>
	<td>项目描述   ： </td>
	<td><input type="text" name="project-description" 
		style="width:200px;//宽度 height:800px;//高度"/></td>
	</tr>
	
	<tr></tr>
	
	<tr align="center">
	<td colspan="2"><input type="submit" value="发布需求"/></td>
	</tr>
	</table>
	</form>
</div>

<div class="copyright">Copyright by <a href="http://www.mycodes.net/" target="_blank">codebeautifier</a></div>

</body>
</html>
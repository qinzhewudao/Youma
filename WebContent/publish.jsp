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
    
    <form action="publish">
    <table align="center">
    <tr>
    <td>项目名称：</td>
    <td><input type="text" name="projectname" placeholder="30字符以内"/></td>
    </tr>
    
    <tr></tr>
    
    <tr>
    <td>项目类型   ： </td>
    <td>
    <select name="projectstyle" id="select_k2" class="xla_k">
    <option value="education">教育教学</option>
    <option value="business">工商管理</option>
    <option value="system">系统应用</option>
    <option value="media">影音播放</option>
    </select>
    </td>
    </tr>
    
    <tr></tr>
    
    <tr>
    <td>开发平台   ： </td>
    <td>
    <select name="projectplat" id="select_k2" class="xla_k">
    <option value="java">java</option>
    <option value="c/c++">C/C++</option>
    <option value="python">python</option>
    </select>
    </td>
    </tr>
    
    <tr></tr>

    <tr>
    <td>预计投资  (元) ： </td>
    <td><input type="text" name="projectprice" /></td>
    </tr>
    
    <tr>
    <td>项目描述   ： </td>
    <td >
        <input type="text" name="projectdescribe" 
        width="200" height="200"/>
    </td>
    </tr>
    
    <tr></tr>
 
    <tr align="center">
    <td colspan="2"><input type="submit" value="发布需求"/></td>
    </tr>
    </table>
    </form>
</div>

<div class="copyright">Copyright by <a href="index.jsp" target="_blank">code beautifier</a></div>

</body>
</html>
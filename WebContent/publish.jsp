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
    <td>项目类型   ： </td>
    <td>
    <input type="checkbox" name="checkbox1" value="checkbox"> 教育教学
    <input type="checkbox" name="checkbox2" value="checkbox"> 工商管理
    <input type="checkbox" name="checkbox3" value="checkbox"> 系统应用
    <input type="checkbox" name="checkbox4" value="checkbox"> 影音播放
    </select>
    </td>
    </tr>
    
    <tr></tr>
    
    <tr>
    <td>开发平台   ： </td>
    <td><select name="select" id="select_k2" class="xla_k">
    <option value="类型1">java</option>
    <option value="类型2">C/C++</option>
    <option value="类型3">python</option>
    </select>
    </td>
    </tr>
    
    <tr></tr>

    <tr>
    <td>预计投资  (元) ： </td>
    <td><input type="text" name="project-bonus" /></td>
    </tr>
    
    <tr>
    <td>项目描述   ： </td>
    <td >
        <input type="text" name="project-description" 
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

<div class="copyright">Copyright by <a href="index.jsp" target="_blank">codebeautifier</a></div>

</body>
</html>
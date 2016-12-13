<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<<<<<<< HEAD
<%@page import="dao.ProjectDao"%>
<%@page import="com.ProjectAction"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn" class="no-js">
<head>
<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>mypublishbidlist</title>
        <meta name="description" content="A responsive, magazine-like website layout with a grid item animation effect when opening the content" />
        <meta name="keywords" content="grid, layout, effect, animated, responsive, magazine, template, web design" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.3.0/css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="css/style4.css" />
        <script src="js/modernizr.custom.js"></script>
        <style>
* { margin: 0; padding: 0;}
body{
    background:url(../images/web_login_bg.jpg) no-repeat center;
    background-size: cover;
}
body,html{
    height:100%;
    overflow:hidden;
}
ul { list-style-type: none;}
li{float:left;list-style:none;}
=======
>>>>>>> refs/remotes/origin/final_sy

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="revised" content="Ningxia Seasons, 2015/8/13/" />
<!-- 定义页面的最新版本 -->
<meta name="description" content="网站简介" />
<!-- 网站简介 -->
<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
<!-- 搜索关键字 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>发布的项目</title>

<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
.my_info_title{
	color: #555;
	font-size: 26px;
	line-height: 26px;
	margin-top:10px;
	width:100%;
	height:86px;
	}
	.my_info_title_3{
	border-top:1px solid #CCC;
	border-bottom:1px solid #CCC;
	width:100%;
	height:50px;
	}
.my_info_title_3 a{
	text-decoration:none;
	color:#666;
	}
.my_info_title_3 ul{
	margin:0px;
	padding:0px;
	list-style-type:none;
	}
.my_info_title_3 ul li{
	width:185px;
	height:50px;
	line-height:50px;
	text-align:center;
	display:block;
	float:left;
	font-size: 18px;
	color: #666;
	border-right:1px solid #CCC;
	cursor:pointer;
	}
.my_info_title_3 ul li:hover{
	border-bottom: 1px solid #C40521;
	color: #C40521;
	}
table{border:solid 1px #D5D5D5;border-collapse:collapse;width:100%;}
table td{border:1px solid #D5D5D5;font-size:12px;padding:7px 5px;}
table th{background-color:#EEE;border-right:1px solid #D5D5D5;font-size:13.5px;line-height:120%;font-weight:bold;padding:8px 5px;text-align:left;}

.demo{margin:0 auto;} 
</style>

</head>
<body>	
<div class="my_info_title">我发布的项目</div>
<div class="my_info_title_3">
  <ul>
    <li id="listClick_6" onClick="listClick(6)" style="border-bottom: 1px solid #C40521; color: #C40521;">发布的的项目</li>
    <li id="listClick_7" onClick="listClick(7)">投标的项目</li>
     <li id="listClick_5" onClick="listClick(5)">我的合同</li>
  </ul>
</div><br><br>
		
<div class="demo">
		<table  width="100%" border="0" cellspacing="0" cellpadding="0">
		<thead>
		<tr>
		<th>项目名称</th>
		<th>投标者</th>
	    <th>是否同意该投标</th>
	    </tr>
	    </thead>
	    <tbody>
			<ul>
    <s:iterator value="lista" var="c"> 
    <tr>
    <td><s:property value="#c.projectname"/></td>
						 <td><s:property value="#c.bidder"/></td>
						 <td> <a href = "contract.action?projectname=<s:property value="#c.projectname"/>&bidder=<s:property value="#c.bidder"/>">同意该投标</a></td>
					</s:iterator>
					</ul>
						</tr>
	</tbody>	
	</table>
		
<!-- 结束 --> 
<script src="../js/jquery-2.1.1.min.js"></script>  
<script src="../js/my_info.js"></script>
</div>		
</body>
</html>
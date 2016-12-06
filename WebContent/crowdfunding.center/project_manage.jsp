<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<!-- Bootstrap -->
<link href="../css/crowdfunding.center/project_manage.css" rel="stylesheet">

</head>
<body>
<!-- 开始 -->
<div class="my_info_title">项目管理</div>
<div class="my_info_title_3">
  <ul>
    <li id="listClick_6" onClick="listClick(6)" style="border-bottom: 1px solid #C40521; color: #C40521;">发布的的项目</li>
    <li id="listClick_7" onClick="listClick(7)">投标的项目</li>
  </ul>
</div>
		
			<div id="theGrid" class="main">  
				<div class="scroll-wrap">
			<ul>
    <s:iterator value="lista" var="c"> 
    <li><a class="grid__item" href = "mypublishbid?projectname=<s:property value="#c.projectname"/>">
						<h2 class="title title--preview">项目名<s:property value="#c.projectname"/></h2>
						<span class="category">发布者：<s:property value="#c.publisher"/></span>
						<span class="category">投标详情</span>
						</a></li>
					</s:iterator>
					</ul>
					</div>
	
					
			
			
			</div>




<!-- 结束 --> 
<script src="../js/jquery-2.1.1.min.js"></script>  
<script src="../js/my_info.js"></script>
</body>
</html>
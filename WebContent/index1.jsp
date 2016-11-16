<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<title>jQuery多重筛选过滤插件Filterizr - 单选</title>

<style>
* { margin: 0; padding: 0;}
ul { list-style-type: none;}
.nav { width: 1000px; margin: 0 auto 20px; text-align: center; font-size: 0;}
.nav li { display: inline-block; margin: 0 5px; padding: 10px 20px; font-size: 14px; color: #333; background-color: #ccc; cursor: pointer;}
.nav .active { color: #fff; background-color: #21b384;}
.jq22 { width: 1000px; margin: 0 auto; font-size: 0;}
.filtr-item { display: inline-block; width: 230px; padding: 10px;}
.filtr-item img { width: 100%;}
</style>
</head>

<body>
<h1>单选</h1>

<ul class="nav">
	<li class="active" data-filter="all">全部</li>
	<li data-filter="1">网站开发</li>
	<li data-filter="2">HTML5应用</li>
	<li data-filter="3">微信应用</li>
	<li data-filter="4">移动开发</li>
	<li data-filter="5">SDK/API开发</li>
</ul>

<div class="jq22">
	<div class="filtr-item" data-category="1, 5">
		<img src="img/a1.png" alt="">
	</div>
	<div class="filtr-item" data-category="2, 5">
		<img src="img/a2.png" alt="">
	</div>
	<div class="filtr-item" data-category="1, 4">
		<img src="img/a3.png" alt="">
	</div>
	<div class="filtr-item" data-category="3">
		<img src="img/a4.png" alt="">
	</div>
	<div class="filtr-item" data-category="3, 4">
		<img src="img/a5.png" alt="">
	</div>
	<div class="filtr-item" data-category="2, 4">
		<img src="img/a6.png" alt="">
	</div>
	<div class="filtr-item" data-category="1, 5">
		<img src="img/a7.png" alt="">
	</div>
	<div class="filtr-item" data-category="2, 4">
		<img src="img/a8.png" alt="">
	</div>
	<div class="filtr-item abc" data-category="3">
		<img src="img/a9.png" alt="">
	</div>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/jquery.filterizr.js"></script>
<script>
$(function() {
	$('.jq22').filterizr();

	$('.nav li').on('click', function() {
		$(this).toggleClass('active').siblings().removeClass('active');
	});
});
</script>

<!-- 以下信息与演示无关，可不必理会 -->
<style>
body { margin: 0; border-left: 200px solid #ccc;}

h1 { margin: 40px auto; font: 32px "Microsoft Yahei"; text-align: center;}

.menu { position: fixed; left: 0; top: 0; bottom: 0; width: 200px; padding-top: 100px; font-family: Consolas,arial,"宋体"; background-color: #ccc; overflow-y: auto;}
.menu a { display: block; height: 40px; margin: 0 0 1px 2px; padding-left: 10px; line-height: 40px; font-size: 14px; color: #333; text-decoration: none;}
.menu a:hover { background-color: #eee;}
.menu .cur { color: #000; background-color: #fff !important;}

.vad { margin: 50px 0 10px; font-family: Consolas,arial,宋体,sans-serif; text-align:center;}
.vad a { display: inline-block; height: 36px; line-height: 36px; margin: 0 5px; padding: 0 50px; font-size: 14px; text-align:center; color:#eee; text-decoration: none; background-color: #222;}
.vad a:hover { color: #fff; background-color: #000;}
.thead { width: 728px; height: 90px; margin: 0 auto; border-bottom: 40px solid transparent;}

.code { position: relative; margin-top: 100px; padding-top: 41px;}
.code h3 { position: absolute; top: 0; z-index: 10; width: 100px; height: 40px; font: 16px/40px "Microsoft Yahei"; text-align: center; cursor: pointer;}
.code .cur { border: 1px solid #f0f0f0; border-bottom: 1px solid #f8f8f8; background-color: #f8f8f8;}
.code .h31 { left: 0;}
.code .h32 { left: 102px;}
.code .h33 { left: 204px;}
.code .h34 { left: 306px;}
.code ol { padding: 0;}
.code { width: 800px; margin-left: auto; margin-right: auto;}
pre { padding: 15px 0; border: 1px solid #f0f0f0; background-color: #f8f8f8;}
.f-dn { display: none;}
</style>



<div class="menu">
	<a class="cur" href="index1.jsp">1、单选</a>
	<a href="index2.jsp">2、多选</a>
	<a href="index3.jsp">3、排序</a>
	<a href="index4.jsp">4、搜索</a>
	<a href="index5.jsp">5、指定筛选过滤</a>
	<a href="index6.jsp">6、回调函数</a>
</div>
<div class="copyright">Copyright by <a href="index.jsp" target="_blank">code beautifier</a></div>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE html>
<html lang="zh-cn" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>发现我需要的人才</title>
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
li{float:left;}

.Header{width:100%;margin:0 auto;/*页面得一居中*/height:100px;background:#fff;}
#menu li{font-size:24px;float:left;list-style:none;cursor: pointer;}
#menu a{color:#000000;text-decoration:none;margin:10px;/*<!--text-decoration:none去掉下划线-->*/padding-top:20px;/*display:block;*/display:block;padding-right:60px;padding-bottom:0px;padding-left:30px;}
#menu a:hover,a:active{color: #0000ff;}
#darkbannerwrap {
    background: url(../images/aiwrap.png);
    width: 18px;
    height: 10px;
    margin: 0 0 20px -58px;
    position: relative;
}
</style>
	</head>
	<body>
	
		
	<div class ="Header">


<div id="menu">
              <li style ="padding-left:30%;"><a href="Personlist">找人</a></li>
                    <li ><a href="index.jsp">找项目</a></li>
                    <li><a href="index1.jsp">作品与服务</a></li>
                    <li><a href="checkfirmdata">发布需求</a></li>
                    <s:if test="#session.username!=null" > 
                    <!--欢迎你:<s:property value="#session.username"/>  --> 
                     <li><a href="personaldata.jsp">个人中心</a></li>
                    <li><a href="logout.action" >退出</a></li>
                    </s:if>
                    <s:else> 
                    <li ><a href="login.jsp" >登录/注册</a></li>
                    </s:else>
                 
</div> 
</div>

<div class="container">
	
			<button id="menu-toggle" class="menu-toggle"><span>Menu</span></button>
			<div id="theSidebar" class="sidebar">
				<button class="close-button fa fa-fw fa-close"></button>
				<h1><span>Explore<span> who I want</h1>
				<nav class="codrops-demos">
					<a class="current-demo" href="Personlist">推荐开发者</a>
					<a href="index.jsp">推荐项目</a>
				</nav>
			</div>
			<div id="theGrid" class="main">
			<div class="scroll-wrap">
				<ul>  <s:iterator value="personlrst" var="c" >
					<li><s:a class="grid__item" href="Information?UserName=%{#c.username}">
						<h2 class="title title--preview"><s:property value="#c.userposition"/> </h2>
						<div class="loader"></div>
						<span class="category"> <s:property value="#c.userworkexperience"/>年经验</span>
						<div class="meta meta--preview">
							<img class="meta__avatar" src="img/authors/1.png" alt="author01" /> 
							<span class="meta__date"><i class="fa fa-calendar-o"></i><s:property value="#c.userprice"/>/8 hours</span>
							<span class="meta__reading-time"><i class="fa fa-clock-o"></i><s:property value="#c.username"/></span>
						</div>
					</s:a></li>
					</s:iterator>
					</ul>
				</div> 

			</div>
		</div><!-- /container -->
		<script src="js/classie.js"></script>
		<script src="js/main.js"></script>
	</body>
</html>



<html lang="en-US">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<script src="jquery-1.8.3.min.js"></script>
<style type="text/css">
	*{margin:0;padding:0;}
	ol, ul {list-style: none;}
	blockquote,q {quotes: none;}
	a{text-decoration:none;color:#2d2f30;-webkit-transition: all .3s linear;-moz-transition: all .3s linear;-o-transition: all .3s linear;-ms-transition: all .3s linear;transition: all .3s linear;}
	a:focus{ outline:none;}
	.content{margin:auto;width:1200px;}
	.sx_updown{width:100%;border-top:1px solid #f2f2f2;background:#fff;overflow:hidden;padding:32px 0 40px 0;z-index:9999;position:absolute;left:0;top:60px;text-align:left;}
	.updown_box{float:left;min-height:198px;width:388px;border-left:1px solid #f2f2f2;padding:0 50px;-webkit-box-sizing: content-box;-moz-box-sizing: content-box; box-sizing: content-box;}
	.updown_box h3{font-size:16px;margin-bottom:18px;padding-left:10px;}
	.updown_box ul li{float:left;margin:0 10px 10px 10px;}
	.updown_box ul li a{display:block;font-size:14px;padding:6px 8px;line-height:18px;}
	.updown_box ul li.selected a{background:#7ecbc8;color:#fff;}
	.w136{width:136px;border-left:0;padding:0;}
	.w290{width:290px;}
	.w160{width:160px;padding:0 40px;}
	.sousuo{padding:10px 0 36px 0;width:100%;}
	.select-result{width:900px;float:left;}
	.select-result ul li a{height:30px;padding:0 24px 0 10px;line-height:30px;display:block;position:relative;float:left;margin:0 10px 10px 0;color:#fff;font-size:14px;background:url(close1.png) 90% center no-repeat #7ecbc8;}
</style>
<head>
<meta charset="UTF-8">
<title>分类 筛选 菜单 </title>
</head>
<body>
<div class="sx_updown clearfix">
	<div class="content">
		<div class="updown_box w136">
			<h3>全部</h3>
		</div>
		<div class="updown_box w290">
			<h3>按领域</h3>
			<ul id="select1">
				<li><a href="javascript:;">前端</a></li>
				<li><a href="javascript:;">后端</a></li>
				<li><a href="javascript:;">运维</a></li>
				<li><a href="javascript:;">产品经理</a></li>
			</ul>
		</div>
		<div class="updown_box w160">
			<h3>按语言</h3>
			<ul id="select2">
				<li date-type="1"><a href="javascript:;">C</a></li>
				<li date-type="2"><a href="javascript:;">JAVA</a></li>
				<li date-type="3"><a href="javascript:;">语言1</a></li>
				<li date-type="4"><a href="javascript:;">语言2</a></li>
			</ul>
		</div>
		<div class="updown_box w160">
			<h3>按工作经验</h3>
			<ul id="select3">
				<li><a href="javascript:;">0-1年</a></li>
				<li><a href="javascript:;">1-3年</a></li>
				<li><a href="javascript:;">3-5年</a></li>
				<li><a href="javascript:;">5-8年</a></li>
				<li><a href="javascript:;">8年以上</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="sousuo clearfix">
<div class="select-result clearfix">
	<ul>
	</ul>
</div>
</div>
<script type="text/javascript">
if ($("#selectA").length > 0) {
$("#selectA a").html($(this).text());
} else {
$(".select-result ul").append(copyThisA.attr("id", "selectA"));
}
});
$("#select2 li").click(function() {
var type = $(this).attr("date-type");
var copyThisB = $(this).clone();
if ($(this).hasClass("selected")) {
$(".select-result li[date-type='" + type + "']").fadeToggle();
} else {
$(".select-result ul").append(copyThisB);
};
$(this).toggleClass("selected");
});
$("#select3 li").click(function () {
$(this).addClass("selected").siblings().removeClass("selected");
var copyThisC = $(this).clone();

$("#selectA").live("click", function () {
$(this).remove();
$("#select1 li").removeClass("selected");
});
$(".select-result ul").delegate("li","click", function(){
var type = $(this).attr("date-type");
$(this).fadeOut();
$("#select2 li[date-type='" + type + "']").removeClass("selected");
});
$("#selectC").live("click", function () {
$(this).remove();
$("#select3 li").removeClass("selected");
});
</script>

</body>
</html>

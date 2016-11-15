<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page import="dao.ProjectDao"%>
<%@page import="com.ProjectAction"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1,minimum-scale=1, maximum-scale=1">
            <title>有码-软件外包服务平台</title>
                <meta name="Keywords" content="有码,外包,软件外包,众包,悬赏平台,软件项目需求,软件开发">  
                <meta name="Description" content="有码是 Code Beautifier推出的软件众包平台，意在连接需求方与广大开发者。让项目的需求方快速的找到合适的开发者，完成项目开发工作。同时也帮助开发者找到合适的项目将技术变成财富。">

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
.nav { width: 1000px; margin: 0 auto 20px; text-align: center; font-size: 0;}
.nav li { display: inline-block; margin: 10px 5px; padding: 10px 20px; font-size: 14px; color: #333; background-color: #ccc; cursor: pointer;}
.nav .active { color: #fff; background-color: #21b384;}
.jq22 { width: 1000px; margin: 0 auto; font-size: 0;}
.filtr-item { display: inline-block; width: 230px; padding: 10px;}
.filtr-item img { width: 100%;}
</style>

</head>
<body>
 
<div class ="Header">


<div id="menu">
              <li><a href="personlist.jsp">找人</a></li>
                    <li><a href="index.jsp">找项目</a></li>

                    <li><a href="index1.jsp">查看需求</a></li>
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
<img  src="img/a1.png" alt="project1" />
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

<!--<ul>
    <s:iterator value="projectlrst" >
    <s:a href="Information?ProjectName=%{projectname}" > 
    <s:property value="projectname"/><img  src="img/a1.png" alt="project1" /></s:a>
     </s:iterator>
</ul> 

<ul>
    <s:iterator value="projectlrst" >
    <s:a href="Information?ProjectName=%{projectname}" > 
    <s:property value="projectname"/></s:a>
    <s:property value="projectstyle"/>
    <s:property value="projectplat"/>
    <s:property value="projectprice"/>
    <s:property value="publishdate"/>
    <s:property value="pulisher"/>
     </s:iterator>
</ul>   -->
</body>
</html>
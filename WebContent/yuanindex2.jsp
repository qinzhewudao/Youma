<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page import="dao.ProjectDao"%>
<%@page import="com.ProjectAction"%>
<!DOCTYPE html>
<html lang="zh-cn" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<title>发现我想开发的项目</title>
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.3.0/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/style4.css" />
		<!-- CSS Bootstrap & Custom -->
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
		<link href="css/animate.css" rel="stylesheet" media="screen">
        <link href="css/templatemo_style.css" rel="stylesheet" media="screen">
       
        <!-- JavaScripts -->
     
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script src="js/jquery-1.10.2.min.js"></script>
        <script src="js/modernizr.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
		<script src="js/modernizr.custom.js"></script>
		<style type="text/css">
		.Header{width:100%;margin:0 auto;/*页面得一居中*/height:100px;background:#fff;}
#menu li{font-size:24px;float:left;list-style:none;cursor: pointer;margin:0 auto;}
#menu a{color:#000000;text-decoration:none;margin:10px;/*<!--text-decoration:none去掉下划线-->*/padding-top:20px;/*display:block;*/display:block;padding-right:60px;padding-bottom:0px;padding-left:30px;}
#menu a:hover,a:active{color: #0000ff;}
</style>
</head>
<body>
	<div class ="Header">
<div id="menu">
                    <li><a href="Personlist">找人</a></li>
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
	<div class="scroll-wrap">     
			<ul class="select">
		<li class="select-list">
			<dl id="select1">
				<dt>项目分类：</dt>
				<dd class="select-all selected"><a href="#">全部</a></dd>
				<dd><a href="#">网站开发</a></dd>
				<dd><a href="#">HTML5应用</a></dd>
				<dd><a href="#">微信应用</a></dd>
				<dd><a href="#">移动开发</a></dd>
				<dd><a href="#">SDK/API开发</a></dd>
				<dd><a href="#">文档翻译</a></dd>
			</dl>
		</li>
		<li class="select-list">
			<dl id="select2">
				<dt>项目状态：</dt>
				<dd class="select-all selected"><a href="#">全部</a></dd>
				<dd><a href="#">报名中</a></dd>
				<dd><a href="#">实施中</a></dd>
				<dd><a href="#">已完成</a></dd>
			</dl>
		</li>
		<li class="select-list">
			<dl id="select3">
				<dt>项目金额：</dt>
				<dd class="select-all selected"><a href="#">全部</a></dd>
				<dd><a href="#">1K以下</a></dd>
				<dd><a href="#">1K~3K</a></dd>
				<dd><a href="#">3K~10K</a></dd>
				<dd><a href="#">10K以上</a></dd>
			</dl>
		</li>
		<li class="select-result">
			<dl>
				<dt>已选条件：</dt>
				<dd class="select-no">暂时没有选择过滤条件</dd>
			</dl>
		</li>
	</ul>
			<div id="theGrid" class="main">
				<ul><%
               ProjectDao itemsDao = new ProjectDao(); 
               ArrayList<ProjectAction> list = itemsDao.getAllProjectAction();
               if(list!=null&&list.size()>0)
               {
                for(int i=0;i<list.size();i++)
                {
                   ProjectAction item = list.get(i);
           %>  	
					<li><a class="grid__item" href = "projectdetail.jsp?projectname=<%=item.getProjectname()%>">
						<h2 class="title title--preview"><%=item.getProjectname()%></h2>
						<div class="loader"></div>
						<span class="category">发布方：<%=item.getPublisher()%></span>
						<div class="meta meta--preview">
							<img class="meta__avatar" src="img/authors/1.png" alt="author01" /> 
							<span class="meta__date"><i class="fa fa-calendar-o"></i><%=item.getProjectprice()%>元</span>
							<span class="meta__reading-time"><i class="fa fa-clock-o"></i><%=item.getPublishdate()%></span>
						</div>
					</a></li>						
           <%       
                  }
           %>
      
           <%
              } 
           %>  
</ul>	
	    </div>			
		</div><!-- /container -->
		</div>
	</body>
</html>
>
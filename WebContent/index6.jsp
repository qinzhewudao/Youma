<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page import="dao.ProjectDao"%>
<%@page import="com.ProjectAction"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1,minimum-scale=1, maximum-scale=1">
            <title>有码-软件外包服务平台</title>
                <meta name="Keywords" content="有码,外包,软件外包,众包,悬赏平台,软件项目需求,软件开发">  
                <meta name="Description"
content="有码是 Code Beautifier推出的软件众包平台，意在连接需求方与广大开发者。让项目的需求方快速的找到合适的开发者，完成项目开发工作。同时也帮助开发者找到合适的项目将技术变成财富。">
 
   
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


 <div id="mainContainer"> 
  

      <div id="menu">
              <li><a href="personlist.jsp">找人</a></li>
                    <li><a href="index.jsp">找项目</a></li>

                    <li><a href="index1.jsp">查看需求</a></li>
                    <li><a href="checkfirmdata">发布需求</a></li>

                  


                    <div class="login">
                    <s:if test="#session.username!=null" > 
                                                             欢迎你:<s:property value="#session.username"/>
                     <li><a href="personaldata.jsp">个人中心</a></li>
                    <li><a href="logout.action" >退出</a></li>
                    </s:if>
                    <s:else> 
                    <li ><a href="login.jsp" >登录/注册</a></li>
                    </s:else>
                   </div>
                  
            </div> 
           
<ul>

           <% 
               ProjectDao itemsDao = new ProjectDao(); 
               ArrayList<ProjectAction> list = itemsDao.getAllProjectAction();
               if(list!=null&&list.size()>0)
               {
                for(int i=0;i<list.size();i++)
                {
                   ProjectAction item = list.get(i);
           %>  
           <div class="container">
		
			<button id="menu-toggle" class="menu-toggle"><span>Menu</span></button>
			<div id="theSidebar" class="sidebar">
				<button class="close-button fa fa-fw fa-close"></button>
				<h1><span>Explore<span> who I want</h1>
				<nav class="codrops-demos">
					<a class="current-demo" href="projectlist.jsp">找人</a>
					<a href="index.jsp">找项目</a>
				</nav>
			</div>
            <div id="theGrid" class="main">
				<section class="grid">
					<header class="top-bar">
						<h2 class="top-bar__headline">Latest articles</h2>
						<div class="filter">
							<span>Filter by:</span>
							<span class="dropdown">受欢迎度</span>
						</div>
					</header>
            <a class="grid__item" href="projectdetail.jsp">
						<h2 class="title title--preview"><a href="projectdetail.jsp?projectname=<%=item.getProjectname()%>"><%=item.getProjectname()%></h2>
						<div class="loader"></div>
						<span class="category"><%=item.getPublisher()%></span>
						<div class="meta meta--preview">
							<img class="meta__avatar" src="img/authors/1.png" alt="author01" /> 
							<span class="meta__date"><i class="fa fa-calendar-o"></i><%=item.getProjectprice()%></span>
							<span class="meta__reading-time"><i class="fa fa-clock-o"></i><%=item.getPublishdate()%></span>
						</div>
					</a>
						
           <%       
                  }
           %>
           <tr></tr>
           <%
              } 
           %>  
</ul>
                   <footer class="page-meta">
						<span>Load more...</span>
					</footer>
				</section>
</div><!-- /container -->

		<script src="js/classie.js"></script>
		<script src="js/main.js"></script>
</div>
 </body>
</html>  

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
//本文件可删除
<html lang="zh-cn" class="no-js">
    <head>
<meta charset="UTF-8" />
        <meta http-equiv="X123-UA-Compatible" content="IE=edge">
        <meta name="viewpo44534rt" content="width=device-width, initial-scale=1">
        <title>发现我想开发的项目</title>
        <meta name="descr43636iption" content="A res377ponsive, magazine-li45845ke website layout with a grid item animation effect when opening the content" />
        <meta name="keywords" content="grid, layout, effect, animated, responsiasdfve, magazine, template, web design" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.3.0/css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="css/stasfgyle4.css" />
        <script src="js/moderniadfzr.custom.js"></script>
        <style>
* { margin: 0; padding: 0;}
body{
    background:url(../imafges/web_login_bg.jpg) no-repaaeat center;
    background-size: cover;
}
body,html{
    height:100%;
    overflow:hidsdfden;
}
html{font-family:sans-serif;-ms-tasdfext-size-adjust:100%;-webkit-text-size-adjust:100%;}
ul { list-style-type: nosdfne;}
li{float:left;}
.Header{width:100%;margin:0 auto;/asdf页面得一居中*/heiasdfght:100px;background:#fff;}
#menu li{font-size:24px;float:left;lasdfist-style:none;cursor: pointer;}
#menu a{color:#00asdf0000;text-decoration:noneasdf;margin:10px;/*<!--text-decoration:none去掉下划线-->*/padding-top:20px;/*display:block;*/display:block;padding-right:60px;padding-bottom:0px;padding-left:30px;}
#menu a:hover,a:active{color: #0000ff;}
#darkbannerwrap {asdf
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
                    <li style ="padasdfding-left:20%;"><a href="index1.jsp">作品与服务</a></li>
                    <li><a href="cheasdfckfirmdata">发布需求</a></li>
                    <s:if test="#sessffgion.username!=null" > 
                    <!--欢迎你:<s:propegbbrty value="#session.username"/>  --> 
                    <li><a href="personalasddata.jsp">个人中心</a></li>
                    <li><a href="logout.adfaction" >退出</a></li>
                    </s:if>
                    <s:else> 
                    <li ><a href="logiasdfn.jsp" >登录/注册</a></li>
                    </s:else>
                 
</div> 
</div>
        <div class="contaainer">
            <button id="menu-dtoggle" class="menufff-toggle"><span>Menu</span></button>
            <div id="theSidebar" class="sidebar">
                <button class="close-dffffbutton fa fa-fw fa-close"></button>
                <h1><span>Explore<span> which I want</h1>
                <nav class="codrops-daemos">
                    <h2><a class="current-demo" href="Personlist">发现人才</a></h2>
                    <h2><a href="index.jsp">探索项目</a></h2>
                </nav>
            </div>
            <div id="theGrid" class="main">   
            <ul><s:iterator value="irst" var ="c" >
                        <h1 style="paddiaang-left:20%">用户职位：<s:property value="#c.userposition"/></h1><br>
                        <h2 style="paddigggggng-left:20%">用户名：<s:property value="#c.username"/> </h2><br>
                        <span style="paddaaaaaing-left:20%"><i class="fa fa-calendar-o"></i>预估薪资： <s:property value="#c.userprice"/> </span><br><br>
                        <span style="paddiadsfasfng-left:20%"><i class="fa fa-clock-o"></i>工作经验：<s:property value="#c.userworkexperience"/> </span><br><br>
                        <img style="paddindfdfag-left:20%" src="img/authors/1.png" alt="author01" />
                        <span >个人技能：<s:property value="#c.userskill"/></span><br><br>
                        <span style="paddiasdfasng-left:20%">从业公司：<s:property value="#c.usercompany"/></span><br><br>
                        <span style="padding-adfasdfleft:20%">个人简历：<s:property value="#c.userdescribe"/></span><br> 
                    </s:iterator></ul>  
    
            </div>  
        </div><!-- /container -->   
        <script src="js/clasdfasdfassie.js"></script>
        <script src="js/masdfasain.js"></script>
    </body>

</html>
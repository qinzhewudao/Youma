<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page import="dao.ProjectDao"%>
<%@page import="com.ProjectAction"%>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> 
<![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" lang="en"> 
<![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>

        <title>软件众包</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta charset="UTF-8">

        <!-- CSS Bootstrap & Custom -->
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
        <link href="css/animate.css" rel="stylesheet" media="screen">
        <link href="css/templatemo_style.css" rel="stylesheet" media="screen">
       
        <!-- JavaScripts -->
        <script src="js/jquery-1.10.2.min.js"></script>
        <script src="js/modernizr.js"></script>
    </head>
    <body>
    <!-- Preloader -->
    <div id="page-preloader">
        <div id="spinner"></div>
    </div>
    <!-- End Preloader -->
    
    

        <!-- Header -->
        <header id="header" class="site-header" role="banner">
        <div class="container">
        <div class="row">
            
            <div class="col-md-4 logo">
            <a href="#">
                <img src="images/logo.png" alt="Impressum Template" title="Impressum Parallax Template">
            </a>
            </div> <!-- //.logo -->
            
            <div class="col-md-8">
            <nav id="navigation" class="hidden-sm hidden-xs">
                <ul id="main-nav" class="main-navigation">
                <li class="current"><a href="index.jsp">首页</a></li>
                <li class="current"><a href="personlist.jsp">找人 </a></li>
                <li><a href="findproject.jsp">找项目</a></li>
                <li><a href="#portfolio">合同</a></li>
                <li><a href="checkfirmdata">发布需求</a></li>
                 <s:if test="#session.username!=null" > 
                    <!--欢迎你:<s:property value="#session.username"/>  --> 
                     <li><a href="personaldata.jsp">个人中心</a></li>
                    <li><a href="logout.action" >退出</a></li>
                    </s:if>
                    <s:else> 
                    <li ><a href="login.jsp" >登录/注册</a></li>
                    </s:else>
        
                </ul>
            </nav>
            
            
            <a href="#mobile-menu" class="visible-xs visible-sm mobile-menu-trigger"><i class="fa  fa-reorder"></i></a>
            
            </div>
            
        </div> <!-- //.row -->
        </div> <!-- //.container -->
            
        </header>
    <!-- End Header -->
    
    <!-- Introduction Section -->
    <section id="introduction" class="content-section clearfix">
        <div class="flexslider introduction-slider">
        
        <ul class="slides">
            <li> 
            <div class="flex-caption section-overlay slide-caption">
                <div class="container">
                <div class="row">
                    <div class="col-md-12">
                    <h2>
                      多样的项目众包方式让开发模式更灵活<br>
                        实现想法，享受品质众包
                    </h2>
                    <a class="slide-button">View Project</a>
                    </div>
                </div>
                </div>
            </div> 
            <img src="images/slides/slide1.jpg" alt="slide-01">  
            </li>
            
            <li> 
            <div class="flex-caption section-overlay slide-caption">
                <div class="container">
                <div class="row">
                    <div class="col-md-12">
                    <h2>
                       打破地域限制以及时间限制，通过社会化方式进行软件开发<br>
                       开启互联网智慧交易之路
                    </h2>
                    <a class="slide-button">View Project</a>
                    </div>
                </div>
                </div>
            </div> 
            <img src="images/slides/slide2.jpg" alt="slide-02">    
            </li>
            
            <li> 
            <div class="flex-caption section-overlay slide-caption">
                <div class="container">
                <div class="row">
                    <div class="col-md-12">
                    <h2>
                      打破地域限制以及时间限制，通过社会化方式进行软件开发<br>
                       开启互联网智慧交易之路
                    </h2>
                    <a class="slide-button">View Project</a>
                    </div>
                </div>
                </div>
            </div> 
            <img src="images/slides/slide3.jpg" alt="slide-03">    
            </li>
        </ul>

        <div class="slide-navigation">
            <a href="#" class="slide-prev"><i class="fa fa-arrow-left"></i></a>
            <a href="#" class="slide-next"><i class="fa fa-arrow-right"></i></a>
        </div>
        
        </div> <!-- //.flexslider -->
    </section>
    <!-- End Introduction Section -->
    <div class="copyrights">Collect from <a href="https://github.com/qinzhewudao/software-engineering" title="GITHUB">GITHUB</a></div>
    
    
    <!-- Portfolio Section -->
    <section id="portfolio" class="content-section clearfix">
        <div class="container">
        <div class="row">
            <div class="col-md-12">
            <h2 class="section-title right">Portfolio</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
            <ul id="filters" class="folio-filters">
                <li class="current"><a href="#" data-filter="*">案例分享</a></li>
                <li class=""><a href="#" data-filter=".webdesign">网站开发</a></li>
                <li class=""><a href="#" data-filter=".photography">HTML5应用</a></li>
                <li class=""><a href="#" data-filter=".branding">移动开发</a></li>
                <li class=""><a href="#" data-filter=".marketing">微信应用</a></li>
            </ul>
            </div>
        </div>
            
            <div id="folio-container" class="row">
            <div class="col-md-3 col-sm-6 folio-item webdesign">
                <div class="folio-thumb item-h2">
                <img src="images/post1.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post1.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="projectdetail.jsp?projectname=WMS仓库管理系统">WMS仓库管理系统</a></h4>
                <h6>金额 ￥50,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item webdesign">
                <div class="folio-thumb item-h2">
                <img src="images/post1.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post1.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">远程会诊系统</a></h4>
                <h6>金额 ￥12,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item webdesign">
                <div class="folio-thumb item-h2">
                <img src="images/post1.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post1.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">Discuz论坛定制开发</a></h4>
                <h6>金额 ￥1,500</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item webdesign">
                <div class="folio-thumb item-h2">
                <img src="images/post1.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post1.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">web应用开发</a></h4>
                <h6>金额 ￥3,500</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            <div class="col-md-3 col-sm-6 folio-item photography">
                <div class="folio-thumb">
                <img src="images/post2.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post2.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">广告销售管理平台</a></h4>
                <h6>金额￥30,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item photography">
                <div class="folio-thumb">
                <img src="images/post2.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post2.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">微信网站</a></h4>
                <h6>金额￥3,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item photography">
                <div class="folio-thumb">
                <img src="images/post2.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post2.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">视频直播应用</a></h4>
                <h6>金额￥11,200</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item photography">
                <div class="folio-thumb">
                <img src="images/post2.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post2.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">网站美工UI</a></h4>
                <h6>金额￥1,5000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            
            <div class="col-md-3 col-sm-6 folio-item branding">
                <div class="folio-thumb item-h2">
                <img src="images/post3.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post3.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">基于Android，用来实现手机多媒体阅读</a></h4>
                <h6>金额￥25,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item branding">
                <div class="folio-thumb item-h2">
                <img src="images/post3.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post3.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">基于Android的OCR识别功能</a></h4>
                <h6>金额￥2,500</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item branding">
                <div class="folio-thumb item-h2">
                <img src="images/post3.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post3.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">APP 开发，安卓和IOS</a></h4>
                <h6>金额￥15,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item branding">
                <div class="folio-thumb item-h2">
                <img src="images/post3.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post3.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">手机App界面软件设计</a></h4>
                <h6>金额￥4,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            <div class="col-md-3 col-sm-6 folio-item marketing">
                <div class="folio-thumb">
                <img src="images/post4.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post4.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">微信淘宝客系统</a></h4>
                <h6>金额￥40,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item marketing">
                <div class="folio-thumb">
                <img src="images/post4.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post4.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">公众号前端二次开发</a></h4>
                <h6>金额￥7,00</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item marketing">
                <div class="folio-thumb">
                <img src="images/post4.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post4.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">微信商家管理</a></h4>
                <h6>金额￥5,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item marketing">
                <div class="folio-thumb">
                <img src="images/post4.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post4.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">微信公众平台lbs开发</a></h4>
                <h6>金额￥4,00</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            <div class="col-md-3 col-sm-6 folio-item webdesign">
                <div class="folio-thumb">
                <img src="images/post5.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post5.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">影视类工作协作网站</a></h4>
                <h6>金额￥15,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item webdesign">
                <div class="folio-thumb">
                <img src="images/post5.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post5.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">寻找重构项目架构师</a></h4>
                <h6>金额￥33,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item webdesign">
                <div class="folio-thumb">
                <img src="images/post5.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post5.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">对网站项目做长期持续的维护和开发</a></h4>
                <h6>金额￥2,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
                
            <div class="col-md-3 col-sm-6 folio-item webdesign">
                <div class="folio-thumb">
                <img src="images/post5.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post5.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">大型综合门户平台</a></h4>
                <h6>金额￥10,000 </h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            <div class="col-md-3 col-sm-6 folio-item photography">
                <div class="folio-thumb item-h2">
                <img src="images/post6.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post6.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">HTML5 线上麻将</a></h4>
                <h6>金额￥30,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item photography">
                <div class="folio-thumb item-h2">
                <img src="images/post6.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post6.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">H5即时聊天页面</a></h4>
                <h6>金额￥5,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item photography">
                <div class="folio-thumb item-h2">
                <img src="images/post6.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post6.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">年会邀请函H5报名系统</a></h4>
                <h6>金额￥1,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item photography">
                <div class="folio-thumb item-h2">
                <img src="images/post6.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post6.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">仿墨迹天气的html5页面</a></h4>
                <h6>金额￥6,00</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            <div class="col-md-3 col-sm-6 folio-item branding">
                <div class="folio-thumb">
                <img src="images/post7.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post7.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">医疗咨询问诊O2O应用</a></h4>
                <h6>金额￥400,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item branding">
                <div class="folio-thumb">
                <img src="images/post7.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post7.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">七色方块app项目开发</a></h4>
                <h6>金额￥49,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item branding">
                <div class="folio-thumb">
                <img src="images/post7.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post7.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">手机APP（Android&iOS）录制语音，变声、降噪、音频合并处理</a></h4>
                <h6>金额￥60,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            <div class="col-md-3 col-sm-6 folio-item branding">
                <div class="folio-thumb">
                <img src="images/post7.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post7.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">Android手机定位小系统</a></h4>
                <h6>金额￥1,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            <div class="col-md-3 col-sm-6 folio-item marketing">
                <div class="folio-thumb">
                <img src="images/post8.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post8.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">微信前端设计出图</a></h4>
                <h6>金额￥14,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item marketing">
                <div class="folio-thumb">
                <img src="images/post8.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post8.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">微信企业号开发--项目管理系统对接</a></h4>
                <h6>金额￥10,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item marketing">
                <div class="folio-thumb">
                <img src="images/post8.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post8.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">企业内部订餐微信公众号开发</a></h4>
                <h6>金额￥45,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
                <div class="col-md-3 col-sm-6 folio-item marketing">
                <div class="folio-thumb">
                <img src="images/post8.jpg" alt="">
                    <div class="folio-overlay">
                    <a href="images/big-post8.jpg" class="folio-zoom">
                        <i class="fa fa-plus"></i>
                    </a>
                    </div> <!-- //.folio-overlay -->
                
                </div> <!-- //.folio-thumb -->
                <div class="folio-desc">
                <span class="folio-tail"></span>
                <h4><a href="#">运动微信服务号开发</a></h4>
                <h6>金额￥5,000</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            </div> <!-- //. row .folio-container-->
        </div>
        
    </section>
    <!-- End Portfolio Section -->
    
    <!-- Partners Section -->
    <section id="partners" class="content-section content-overlay parallax-section clearfix">
        
        <div class="section-overlay">
        <div class="container">
            <div class="row">
            <div class="col-md-12">
                <h2 class="section-title left">Best Partners</h2>
            </div>
            </div>
                <div class="row no-margin">
            <div class="col-md-2 partner-logo">
                <a href="findproject.jsp"><img data-toggle="tooltip" title="更多项目" src="images/partner-logo.png" alt=""></a>
        
            </div>
            <div class="col-md-2 partner-logo">
                <a href="personlist.jsp"><img data-toggle="tooltip" title="更多人才" src="images/partner-logo.png" alt=""> </a>
            </div>
            <div class="col-md-2 partner-logo">
                <a href="checkfirmdata"><img data-toggle="tooltip" title="发布需求" src="images/partner-logo.png" alt=""></a>
            </div>
            <div class="col-md-2 partner-logo">
                 <a href="personaldata.jsp"><img data-toggle="tooltip" title="完善个人资料" src="images/partner-logo.png" alt=""></a>
            </div>
            <div class="col-md-2 partner-logo">
                 <a href="personaldata.jsp"><img data-toggle="tooltip" title="个人中心" src="images/partner-logo.png" alt=""></a>
            </div>
            <div class="col-md-2 partner-logo">
                <a href="tencent://message/?uin=1686290133&Site=&Menu=yes"><img data-toggle="tooltip" title="联系客服" src="images/partner-logo.png" alt=""></a>
            </div>
            </div>
        </div>
        </div>
        
    </section>
    <!-- End Partners Section -->
    

    

    
    
    
    <!-- Hidden Content -->
    <section id="load-folio" class="folio-details">
        <div id="folio-content" class="load-folio-content">
        
        </div>
    </section>
    
        <footer id="footer" class="site-footer" role="contentinfo">
            <div class="container">
                <div class="col-md-6 col-sm-6">
                    <div class="copyright-text">
                        <span>Copyright &copy; code beautifier <a href="https://github.com/qinzhewudao/software-engineering" target="_blank" title="软件众包">软件众包</a> - Collect from <a href="https://github.com/qinzhewudao/software-engineering" title="page" target="_blank">项目的github</a></span>
                    </div>
                </div>
            </div>
        </footer>
    

        <!-- JavaScripts -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>
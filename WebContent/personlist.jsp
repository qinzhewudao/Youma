<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page import="dao.ProjectDao"%>
<%@page import="com.ProjectAction"%>
<!DOCTYPE html>
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
                <li class="current"><a href="personlist">找人 </a></li>
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
                <li class="current"><a href="#" data-filter="*">人才列表</a></li>
                <li class=""><a href="#" data-filter=".webdesign">IOS工程师</a></li>
                <li class=""><a href="#" data-filter=".photography">Android工程师</a></li>
                <li class=""><a href="#" data-filter=".branding">前段工程师</a></li>
                <li class=""><a href="#" data-filter=".marketing">后端工程师</a></li>
                <li class=""><a href="#" data-filter=".product">产品经理</a></li>
                <li class=""><a href="#" data-filter=".uidesign">UI设计师</a></li>
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
                <h4><a href="Information.action?username=qinzhewudao">qinzhewudao</a></h4>
                <h6>金额 ￥600/8小时</h6>
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
                <h4><a href="https://zb.oschina.net/developer/2889553">iOS开发工程师</a></h4>
                <h6>500/8小时</h6>
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
                <h4><a href="https://zb.oschina.net/developer/1380899">iOS主管</a></h4>
                <h6>300/8小时</h6>
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
                <h4><a href="https://zb.oschina.net/developer/228341">iOS主管</a></h4>
                <h6>400/8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            <div class="col-md-3 col-sm-6 folio-item webdesign">
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
                <h4><a href="https://zb.oschina.net/developer/1045846">全栈工程师</a></h4>
                <h6>800/8小时</h6>
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
                <h4><a href="https://zb.oschina.net/developer/2377487">android程序员</a></h4>
                <h6>300/8小时</h6>
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
                <h4><a href="https://zb.oschina.net/developer/1866689">Android 开发员</a></h4>
                <h6>1000/8小时</h6>
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
                <h4><a href="https://zb.oschina.net/developer/1426583">android移动平台研发</a></h4>
                <h6>500/8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            
            <div class="col-md-3 col-sm-6 folio-item photography">
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
                <h4><a href="https://zb.oschina.net/developer/1377710">Android 高级工程师 </a></h4>
                <h6>800/8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item photography">
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
                <h4><a href="https://zb.oschina.net/developer/141103">Android工程师</a></h4>
                <h6>400/8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item photography">
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
                <h4><a href="https://zb.oschina.net/developer/2859415">研发部门-android工程师</a></h4>
                <h6>500/8小时</h6>
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
                <h4><a href="https://zb.oschina.net/developer/2264138">前端开发部 苏宁易购  前端工程师</a></h4>
                <h6>300/8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            <div class="col-md-3 col-sm-6 folio-item branding">
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
                <h4><a href="https://zb.oschina.net/developer/2337744">前端工程师 开源中国 </a></h4>
                <h6>500/8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item brangding">
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
                <h4><a href="https://zb.oschina.net/developer/699171">web前端工程师</a></h4>
                <h6>800/8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item branding">
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
                <h4><a href="https://zb.oschina.net/developer/2913989">Web前端工程师 </a></h4>
                <h6>300/8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item branding">
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
                <h4><a href="https://zb.oschina.net/developer/223744">前端工程师</a></h4>
                <h6>600/8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            <div class="col-md-3 col-sm-6 folio-item branding">
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
                <h4><a href="https://zb.oschina.net/developer/125950">火车网前端工程师</a></h4>
                <h6>800/8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item marketing">
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
                <h4><a href="https://zb.oschina.net/developer/924832">Java高级工程师</a></h4>
                <h6>500元/8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item marketing">
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
                <h4><a href="https://zb.oschina.net/developer/1000024">后端工程师 中软国际 4年工作经验</a></h4>
                <h6>400 元 /8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
                
            <div class="col-md-3 col-sm-6 folio-item marketing">
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
                <h4><a href="https://zb.oschina.net/developer/2483727">软件研发工程师 三星电子（中国）研发中心 8年工作经验</a></h4>
                <h6>400 元 /8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            <div class="col-md-3 col-sm-6 folio-item marketing">
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
                <h4><a href="https://zb.oschina.net/developer/241263">软件工程师 上海外高桥造船有限公司 8年工作经验</a></h4>
                <h6>200 元 /8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item marketing">
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
                <h4><a href="https://zb.oschina.net/developer/2930192">大数据开发、python前后端开发</a></h4>
                <h6>400 元 /8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item product">
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
                <h4><a href="https://zb.oschina.net/developer/157853">高级系统架构师 上海复旦微电子集团股份有限公司 10年工作经验</a></h4>
                <h6>2000 元 /8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item uidesign">
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
                <h4><a href="https://zb.oschina.net/developer/2526138">UI设计 鸿合科技有限公司 5年工作经验</a></h4>
                <h6>600 元 /8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            <div class="col-md-3 col-sm-6 folio-item uidesign">
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
                <h4><a href="https://zb.oschina.net/developer/2810209">UI设计师 炎黄新星网络科技有限公司 2年工作经验</a></h4>
                <h6>200 元 /8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item uidesign">
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
                <h4><a href="https://zb.oschina.net/developer/2832493">UI设计师 北京北龙青云软件有限公司 1年工作经验</a></h4>
                <h6>200 元 /8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item uidesign">
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
                <h4><a href="https://zb.oschina.net/developer/2695545">UI设计师 北京喜事蜜科技有限公司 2年工作经验</a></h4>
                <h6>300 元 /8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            <div class="col-md-3 col-sm-6 folio-item uidesign">
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
                <h4><a href="https://zb.oschina.net/developer/2668257">高级UI设计师 高德 7年工作经验</a></h4>
                <h6>800 元 /8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            
            <div class="col-md-3 col-sm-6 folio-item product">
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
                <h4><a href="https://zb.oschina.net/developer/3070249">网建经理 陕西畅通网络科技有限公司 10年工作经验</a></h4>
                <h6>300 元 /8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item product">
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
                <h4><a href="https://zb.oschina.net/developer/3078140">产品经理 阿里巴巴移动事业群 7年工作经验</a></h4>
                <h6>900 元 /8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
            <div class="col-md-3 col-sm-6 folio-item product">
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
                <h4><a href="https://zb.oschina.net/developer/3004121">产品经理 北京水牛科技有限公司 3年工作经验</a></h4>
                <h6>800 元 /8小时</h6>
                </div> <!-- //.folio-desc -->
            </div> <!-- folio-item -->
                <div class="col-md-3 col-sm-6 folio-item product">
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
                <h4><a href="https://zb.oschina.net/developer/2932517">高级产品经理 搜房网 5年工作经验</a></h4>
                <h6>700 元 /8小时</h6>
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
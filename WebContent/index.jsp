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
<!--[if gt IE 8]> <html class="no-js" lang="en"> <![endif]-->
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
        <!--[if lt IE 8]>
        <div style=' clear: both; text-align:center; position: relative;'>
            <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" alt="" /></a>
        </div>
        <![endif]-->
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
                <li><a href="#contact">帮助</a></li>
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
    <div class="copyrights">Collect from <a href="http://www.17sucai.com/" title="17ç´ æç½">17ç´ æç½</a></div>
    <!-- About Section -->
    <section id="about" class="content-section clearfix">
        <div class="container">
        <div class="row">
            <div class="col-md-12">
            <h2 class="section-title left">What We Do</h2>
            </div>
        </div>
        <div class="row">
            
            <div class="col-md-4 animated-item feature-item fadeInUp" data-delay="200">
            <span class="feature-icon"><i class="li_bulb"></i></span>
            <div class="feature-info">
                <h3 class="feature-title"><span></span>Different Ideas</h3>
                <p> 潜在用户：有开发需求的公司或个人(C)，有软件开发技能的学生(S)</p>
            </div>
            </div>
            
            <div class="col-md-4 animated-item feature-item fadeInUp" data-delay="300">
            <span class="feature-icon"><i class="li_params"></i></span>
            <div class="feature-info">
                <h3 class="feature-title"><span></span>Flexible Mind</h3>
                <p>简单三步发布需求<br>保障双方零风险<br>实时追踪省时省心</p>
            </div>
            </div>
            
            <div class="col-md-4 animated-item feature-item fadeInUp" data-delay="400">
            <span class="feature-icon"><i class="li_heart"></i></span>
            <div class="feature-info">
                <h3 class="feature-title"><span></span>Sweet Support</h3>
                <p>项目交易:将以一种新的方式解决“找活”和“找人”的难题，开启互联网智慧交易之路</p>
            </div>
            </div>
            
        </div> <!-- //.row -->
        
        <hr class="solid">
        
        <div class="row">
            <div class="col-md-7 animated-item fadeInLeft" data-delay="200">
            <h3>Our Skills</h3>
            
            <p>Impressum is <a rel="nofollow" href="#/page/1">free parallax template</a> from <b class="blue">template</b><b class="green">mo</b>. 
            You can download, edit and use this responsive layout for any website. Credit goes to <a rel="nofollow" href="#">Unsplash</a> for images used in this template.
            Donec fringilla iaculis nunc, non semper felis mattis a. Quisque tincidunt orci eu orci elementum laoreet nec non lectus.
            Maecenas commodo purus sapien, ac adipiscing tortor tempor sed. Aenean ac facilisis augue, tempor pellentesque nisl. </p>
            
            <p>Aliquam porttitor aliquet arcu, et ornare sapien pharetra in. Aenean sit amet est, ut libero. Nunc at pulvinar velit.
            Nunc pretium odio nibh, eget vehicula tellus sodales id.</p>
            
            </div>
            <div class="col-md-5 skillbar-container animated-item fadeInRight" data-delay="400">
            
            <div class="skillbar clearfix anim" data-percent="94">
                <div class="skillbar-title">Photoshop</div>
                <div class="skillbar-bar"></div>
                <div class="skillbar-percent">94%</div>
            </div>
            
            <div class="skillbar clearfix anim" data-percent="88">
                <div class="skillbar-title">Illustrator</div>
                <div class="skillbar-bar"></div>
                <div class="skillbar-percent">88%</div>
            </div>
            
            <div class="skillbar clearfix anim" data-percent="66">
                <div class="skillbar-title">Fireworks</div>
                <div class="skillbar-bar"></div>
                <div class="skillbar-percent">66%</div>
            </div>
            
            </div>
        </div> <!-- //.row -->
        </div> <!-- //.container -->
    </section>
    <section id="counter" class="content-section content-overlay parallax-section clearfix">
        <div class="section-overlay">
            <div class="container">
            <div class="row fadeInUp">
                <div class="col-md-3 counter-item">
                <span class="counter-icon"><i class="li_user"></i></span>
                <span class="counter-number" data-from="1" data-to="256" data-speed="1000"></span>
                <span class="counter-text">Satisfied Clients</span>
                </div>
                
                <div class="col-md-3 counter-item">
                <span class="counter-icon"><i class="li_display"></i></span>
                <span class="counter-number" data-from="1" data-to="512" data-speed="2000"></span>
                <span class="counter-text">Projects Delivered</span>
                </div>
                
                <div class="col-md-3 counter-item">
                <span class="counter-icon"><i class="li_pen"></i></span>
                <span class="counter-number" data-from="1" data-to="1024" data-speed="3000"></span>
                <span class="counter-text">Line of Code</span>
                </div>
                
                <div class="col-md-3 counter-item">
                <span class="counter-icon"><i class="li_bubble"></i></span>
                <span class="counter-number" data-from="1" data-to="2048" data-speed="4000"></span>
                <span class="counter-text">Questions Answered</span>
                </div>
            </div>
            </div>
            
        </div>
    </section>
    <!-- End About Section -->
    
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
                <img data-toggle="tooltip" title="更多项目" src="images/partner-logo.png" alt="">
            </div>
            <div class="col-md-2 partner-logo">
                <img data-toggle="tooltip" title="更多人才" src="images/partner-logo.png" alt="">
            </div>
            <div class="col-md-2 partner-logo">
                <img data-toggle="tooltip" title="发布需求" src="images/partner-logo.png" alt="">
            </div>
            <div class="col-md-2 partner-logo">
                <img data-toggle="tooltip" title="完善个人资料" src="images/partner-logo.png" alt="">
            </div>
            <div class="col-md-2 partner-logo">
                <img data-toggle="tooltip" title="注意事项" src="images/partner-logo.png" alt="">
            </div>
            <div class="col-md-2 partner-logo">
                <img data-toggle="tooltip" title="帮助" src="images/partner-logo.png" alt="">
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
                <div class="col-md-6 col-sm-6">
                    <div class="social-icons">
                        <ul>
                            <li><a href="#" class="fa fa-facebook"></a></li>
                            <li><a href="#" class="fa fa-twitter"></a></li>
                            <li><a href="#" class="fa fa-linkedin"></a></li>
                            <li><a href="#" class="fa fa-rss"></a></li>
                        </ul>
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
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html> 
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1,minimum-scale=1, maximum-scale=1">
            <title>有码-软件外包服务平台</title>
                <meta name="Keywords" content="有码,外包,软件外包,众包,悬赏平台,软件项目需求,软件开发">
                <meta name="Description"
              content="有码是 Code Beautifier推出的软件众包平台，意在连接需求方与广大开发者。让项目的需求方快速的找到合适的开发者，完成项目开发工作。同时也帮助开发者找到合适的项目将技术变成财富。">
 
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
 
     <style> 
html{width:100%;height:100%;} 
body{background:#fff;font-size:18px;font-family:"Arial", "Tahoma", "微软雅黑", "雅黑";
line-height:18px;padding:0px;margin:0px;text-align:center} 
div{padding:18px} 
img{border:0px;vertical-align:middle;padding:0;margin:0} 
input, button{font-family:"Arial", "Tahoma", "微软雅黑", "雅黑";border:0;
vertical-align:middle;margin:0px;line-height:18px;font-size:18px;color:#8080c0;font-weight:bolder;background:url("8.jpg");border-rirht-width:1px;
 border-right-style:solid;border-right-color:#000000} 
.btn{width:140px;height:36px;line-height:18px;font-size:18px;
background:url("8.jpg") no-repeat left top;color:#FFF;padding-bottom:4px} 
</style>
  <style type="text/css"> 
  <!-- 
   .STYLE1 {  
   color: #990033;  
   font-weight: bold;
   padding-top:15px;
   } 
   --> 
   </style> 
   <style>  
   a{TEXT-DECORATION:none}a:hover{TEXT-DECORATION:underline}.STYLE2 
   {color: #000000} 
   </style>
 <style> 
 li{font-size:12px;font-weight:bolder;background-color:#999999;border-rirht-width:1px;
 border-right-style:solid;border-right-color:#000000;
 float:left; list-style:none;align:center}
 li a{
 color:#FFFFFF;text-decoration:none;margin:0px;
 padding-top:8px;display:block;
 padding-right:50px;padding-bottom:8px;
 padding-left:50px;}
 li a:hover{
 background-color:#146C9C;}
 </style>   
</head>
<body>
 <body style="background:url('photos/10.jpg') ; background-size: cover;">
    <input type="hidden" value="" name="username">
    <input type="hidden" value="" name="user_phone">
    <input type="hidden" value="" name="user_email">
    <input type="hidden" value="" name="user_global_key">
    
    <div class="mainpage">
                          
                <ul class="nav">
                    <li><a href="/projects">找人</a></li>
                    <li><a href="/projects">找项目</a></li>
                    <li><a href="/cases">查看需求</a></li>
                    <li><a href="/club">发布需求</a></li>
                    <s:if test="#session.username!=null" > 
                                                             欢迎你:<s:property value="#session.username"/>
                    <a href="personaldata.jsp">个人中心</a>
                    <a href="logout.action">安全退出</a>
                    </s:if>
                    <s:else> 
                    <li class="login-zone"><a href="login.jsp">登录</a></li>
                    <li class="login-zone"><a href="register.jsp">注册</a></li>
                    </s:else>

                </ul>
                <div id="close-menu" class="nav-icon" style="position: absolute; top: 2.5rem; right: 0; display: none; z-index: 100">
                    <span><i class="fa fa-times"></i></span>
                </div>
            </div><br>
    
                        <p class="top-motto">基于云技术的软件外包服务平台</p>
                  
                        <p class="sub-motto">提供您所需的全套软件开发服务<br>
                        </p>
                   
                
                    <form action="Launch">
						<input type="submit" value="发布您的需求">
					</form>
				      <form action="List">
						<input type="submit" value="查看项目列表">
					</form>
</body>
</html>

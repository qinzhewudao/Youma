<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="revised" content="Ningxia Seasons, 2015/8/13/" />
<!-- 定义页面的最新版本 -->
<meta name="description" content="网站简介" />
<!-- 网站简介 -->
<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
<!-- 搜索关键字 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>我的资料</title>

<!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/crowdfunding.center/my_info.css" rel="stylesheet">
       <style>
 .input_div{width:100%;}
.input_div label{width:600px;float:left;text-align:left;font-size: 16px;}
.input_div input{width:200px;float:left;}</style>
</head>
<body>
<!-- 开始 -->
<div class="my_info_title">我的资料</div>

<div class="my_info_title_3">
  <ul>
    <li id="listClick_8" onClick="listClick(8)"style="border-bottom: 1px solid #C40521; color: #C40521;">我的资料</li>
    <li id="listClick_9" onClick="listClick(9)">我是开发者</li>
    <li id="listClick_10"onClick="listClick(10)">我是发布方</li>
  </ul>
</div>
<br><br>

 <div class="input_div">

       <p style="padding-left:10%;"> 
      <label for="usercompany" class="uname" data-icon="u" >    
                         用户名：<s:property value="#session.username"/></label></p ><br><br>
                         
  
        <p style="padding-left:10%;"> 
      <label for="usercompany" class="uname" data-icon="u" >    
                      手机号码：<s:property value="#session.userphone"/></label></p ><br><br>
    
     
       <p style="padding-left:10%;"> 
      <label for="usercompany" class="uname" data-icon="u" >    
                    真实姓名：<s:property value="#session.userrealname"/></label></p ><br><br>
  
        <p style="padding-left:10%;"> 
      <label for="usercompany" class="uname" data-icon="u" >    
                  性别：<s:property value="#session.usersex"/></label></p ><br><br>
    
         <p style="padding-left:10%;"> 
      <label for="usercompany" class="uname" data-icon="u" >    
 邮箱：<s:property value="#session.useremail"/></label></p ><br><br>
 
       <p style="padding-left:10%;"> 
      <label for="usercompany" class="uname" data-icon="u" >    
        身份证号：<s:property value="#session.userid"/></label></p ><br><br>
    
   
       <p style="padding-left:10%;"> 
      <label for="usercompany" class="uname" data-icon="u" >    
               关注领域：<s:property value="#session.userinterest"/></label></p ><br><br>
    
       <p style="padding-left:10%;"> 
      <label for="usercompany" class="uname" data-icon="u" >    
           最小悬赏金额：<s:property value="#session.usermoneymin"/></label></p ><br><br>
  
       <p style="padding-left:10%;"> 
      <label for="usercompany" class="uname" data-icon="u" >    
          最大悬赏金额：<s:property value="#session.usermoneymax"/></label></p ><br><br>
     
       <p style="padding-left:10%;"> 
      <label for="usercompany" class="uname" data-icon="u" >    
        所在城市：<s:property value="#session.prov"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp所在地区：<s:property value="#session.city"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp所在城区：<s:property value="#session.dist"/></label></p ><br><br>
    
      <p style="padding-left:10%;"> 
      <label for="usercompany" class="uname" data-icon="u" >    
      通讯地址：<s:property value="#session.useraddress"/></label></p ><br>
     
          <p style="padding-left:10%;"> 友好提示：网站前台页面不会显示您的地址，用于纸质合同的邮寄</p ><br>
  
         <p style="padding-left:10%;"> 
      <label for="usercompany" class="uname" data-icon="u" >    
  推荐人姓名：<s:property value="#session.userrecommend"/></label></p ><br><br>
     <p style="padding-left:10%;"> 
         <label for="usercompany" class="uname" data-icon="u" > 推荐人电话：<s:property value="#session.userrecommendphone"/></label></p ><br><br>
 
  </div>
<!-- 结束 --> 
<script src="../js/jquery-2.1.1.min.js"></script> 
<script src="../js/my_info.js"></script>
</body>
</html>
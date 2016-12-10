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
<title>软件众包- 个人中心</title>

<!-- CSS公共部分 开始 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<link href="css/style.css" rel="stylesheet">
<!-- CSS公共部分 结束 -->

<link href="css/crowdfunding.css" rel="stylesheet">

</head>
<body>
<!-- top + banner 开始 -->
<div class="container-fluid cfh_top">
  <div class="container"> code beautifier&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;官方咨询电话：131-1560-1178
    <ul class="list-inline">
      <li><a href="index.jsp" target="_self">有码</a></li>
      <li><a href="https://nxseason.taobao.com/" target="_blank">软件众包</a></li>
      <li id="register" onMouseMove="login_but_bg(1)" onMouseOut="login_but_bg(2)"><a href="" target="_blank">&nbsp;注册&nbsp;</a></li>
      <li id="login" onMouseMove="login_but_bg(3)" onMouseOut="login_but_bg(4)"><a href="member_center.html" target="_blank">&nbsp;登录&nbsp;</a></li>
    </ul>
  </div>
</div>
<div class="container-fluid cfh_banner">
  <div class="container"> <img src="images/logo.png">
    <ul class="list-inline">
      <li><a href="index.jsp" target="_self">首页</a></li>
      <li><a href="yuanindex2.jsp" target="_self">查看项目</a></li>
      <li><a href="Personlist.jsp" target="_self">寻找人才</a></li>
      <li><a href="checkfirmdata" target="_self">发布需求</a></li>
      <li><a href="service_page.jsp" target="_self">服务</a></li>
      <li><a href="" target="_self">新手指南</a></li>
    </ul>
  
  </div>
</div>
<!-- top + banner 结束 --> 
<!-- 核心 开始 --> 
<div class="container border1 nopadding margin10">
  <div id="vertical_navigation" class="col-lg-3 background831312 nopadding">
    <div class="dead_pic"><img src="img/member_center/nopic.jpg.png"><br>
      <span class="username"><s:property value="#session.username"/></span></div><!-- 传用户名 -->
    <!--  --><div class="usertype"><br>
            会员等级：<img style="margin-right:0px;" src="img/member_center/star.png"></img> <img style="margin-right:0px;" src="img/member_center/xx2.png"></img> <img style="margin-right:0px;" src="img/member_center/xx2.png"></img> <img style="margin-right:0px;" src="img/member_center/xx2.png"></img> <img style="margin-right:0px;" src="img/member_center/xx2.png"></img> </div><br>
              <div class="menu">
      <div class="menu_title"> 我的信息 </div>
      <div class="menu_list">
        <ul class="list-unstyled">
          <li id="listClick8" class="menu_list_on" onClick="listClick(8)"><img src="img/member_center/left_icon_8.png"> 我的资料</li>
          <li id="listClick9" class="" onClick="listClick(9)"> <img src="img/member_center/left_icon_9.png"> 我是开发者</li>
          <li id="listClick10" class="" onClick="listClick(10)"> <img src="img/member_center/left_icon_10.png">我是发布方</li><br>
        </ul>
      </div>
    </div>
    <div class="menu">
      <div class="menu_title"> 修改资料 </div>
      <div class="menu_list">
        <ul class="list-unstyled">
          <li id="listClick1" class=""  onClick="listClick(1)"><img src="img/member_center/left_icon_1.png"> 基本信息</li>
          <li id="listClick4" class="" onClick="listClick(4)"> <img src="img/member_center/left_icon_3.png"> 修改密码</li>
        <!--   <li id="listClick5" class="" onClick="listClick(5)"> <img src="img/member_center/left_icon_5.png"> 申请发布资格</li><br> -->
        </ul>
      </div>
    </div>
    <div class="menu">
      <div class="menu_title"> 我相关的项目 </div>
      <div class="menu_list">
        <ul class="list-unstyled">
          <li id="listClick6" class="" onClick="listClick(6)"><img src="img/member_center/left_icon_6.png"> 我发布的</li>
          <li id="listClick7" class="" onClick="listClick(7)"> <img src="img/member_center/left_icon_6.png"> 我投标的</li>
          <a href = "mycontract.action"><li id="listClick(7)" class=""> <img src="img/member_center/left_icon_6.png"> 我的合同</li></a><br>
        </ul>
      </div>
    </div>
    <div class="menu">
      <div class="menu_title"> 我的星级和积分 </div>
      <div class="menu_list">
        <ul class="list-unstyled">
          <li id="listClick11" class="" onClick="listClick(11)"><img src="img/member_center/left_icon_9.png"> 星级和积分介绍</li>
       <!--  <li id="listClick12" class="" onClick="listClick(12)"> <img src="img/member_center/left_icon_12.png"> 积分纪录</li> -->  
          <li id="listClick13" class="" onClick="listClick(13)"> <img src="img/member_center/left_icon_13.png"> 积分规则</li><br>
        </ul>
      </div>
    </div>
  <!--  -->  <div class="menu">
      <div class="menu_title"> 我的消息 </div>
      <div class="menu_list">
        <ul class="list-unstyled">
          <li id="listClick14" class="" onClick="listClick(14)"><img src="img/member_center/left_icon_14.png"> 发送新消息</li>
          <li id="listClick15" class="" onClick="listClick(15)"> <img src="img/member_center/left_icon_15.png"> 收件箱</li>
          <li id="listClick16" class="" onClick="listClick(16)"> <img src="img/member_center/left_icon_16.png"> 发件箱</li>
        </ul>
      </div>
    </div>
  </div>
  <div class="col-lg-9">
  	<iframe name="left" id="crowdfunding_iframe" src="crowdfunding.center/my_account.jsp" frameborder="false" scrolling="no" style="border:none;" width="100%" height="1045" allowtransparency="true"></iframe>
  </div>
</div>
<!-- 核心 结束 -->  

<!-- 版权 开始 -->
<div class="container-fluid cfh_bottom">
  <div class="container">
    <div class="cfh_bottom_qsss">
      <dl>
        <dt>轻松上手</dt>
        <dd><a href="index。jsp" >如何发布项目</a></dd>
        <dd><a href="index。jsp" target="_blank">如何投标项目</a></dd>
        <dd><a href="" target="_blank">合同模板下载</a></dd>
        <dd><a href="" target="_blank">关于我们</a></dd>
      </dl>
    </div>
    <div class="cfh_bottom_aboutours">
      <dl>
        <dt>关于我们</dt>
        <dd><a href="" target="_blank">团队介绍</a></dd>
        <dd><a href="" target="_blank">网站介绍</a></dd>
        <dd><a href="" target="_blank">法律服务</a></dd>
        <dd><a href="" target="_blank">招贤纳士</a></dd>
      </dl>
    </div>
    <div class="cfh_bottom_callme">
      <dl>
        <dt class="cfh_bottom_call_me"><span class="glyphicon glyphicon-earphone"></span>&nbsp;131-1560-1178</a></dt>
        <dd>团队服务邮箱1：<a href="mailto:469975732@qq.com" target="_blank">469975732@qq.com</a></dd>
        <dd>团队服务邮箱2：<a href="mailto:1686290133@qq.com" target="_blank">1686290133@qq.com</a></dd>
        <dd>公司地址：哈尔滨工业大学计算机科学与技术学院</dd>
      </dl>
    </div>
    <div class="cfh_bottom_QRcode"> <img src="img/index/bottom_QRcode.png"> <div class="phone">
  
  </div></div>
  </div>
  <div class="box50"></div>
</div>
<div class="container-fluid background_color545454">
  <div class="container text-center"> © 2016 code beautifier | 哈尔滨工业大学 | 计算机科学与技术学院 </div>
</div>
<img id="back_top_jt" class="back_top" onMouseMove="float_call_me(7)" onMouseOut="float_call_me(8)" src="img/index/back_top_jt.png">
<span class="back_top_jt_span">返回顶部</span>
<img id="back_top_wx" class="back_top2" onMouseMove="float_call_me(5)" onMouseOut="float_call_me(6)" src="img/index/back_top_wx.png">
<span class="back_top_wx_span"><img src="img/index/bottom_QRcode.png"></span>
<a href="tencent://message/?uin=1686290133&Site=&Menu=yes"><img id="back_top_qq" class="back_top3" onMouseMove="float_call_me(3)" onMouseOut="float_call_me(4)" src="img/index/back_top_qq.png"></a>
<span class="back_top_qq_span"><font class="glyphicon glyphicon-hand-right">&nbsp;QQ咨询热线</font></span>
<img id="back_top_call" class="back_top4" onMouseMove="float_call_me(1)" onMouseOut="float_call_me(2)" src="img/index/back_top_call.png">
<span class="back_top_call_span"><font class="glyphicon glyphicon-phone-alt">&nbsp;131-1560-1178</font></span>
<!-- 版权 结束 --> 
<!-- 结束 --> 
<!-- JS公共部分 开始 --> 
<script src="js/jquery-2.1.1.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/basics.js"></script> 
<!-- JS公共部分 结束 --> 
<script src="js/crowdfunding.js"></script>
</body>
</html>
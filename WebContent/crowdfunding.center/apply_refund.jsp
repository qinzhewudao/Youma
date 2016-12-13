<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>我是发布方</title>
<!-- Bootstrap -->
<link href="../css/crowdfunding.center/investment_inquiry.css" rel="stylesheet">
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/font-awesome.min.css" rel="stylesheet">
<link href="../css/summernote.css" rel="stylesheet">
<link href="../css/crowdfunding.center/apply_lingtou.css" rel="stylesheet">

       <style>
 .input_div{width:100%;}
.input_div label{width:200px;float:left;text-align:left;}
.input_div input{width:200px;float:left;}</style>
</head>
<body>
<!-- 开始 -->
<div class="my_info_title">完善发布方资料</div>
<div class="my_info_title_3">
  <ul>
    <li id="listClick_8" onClick="listClick(8)" style="border-bottom: 1px solid #C40521; color: #C40521;">我的资料</li>
    <li id="listClick_9" onClick="listClick(9)">我是开发者</li>
    <li id="listClick_10" onClick="listClick(10)">我是发布方</li>
  </ul>
</div>
<div class="my_info_content">
  <div class="my_info_content_care">本众包平台郑重承诺：您的信息将用于发布需求时的认证 ，以保证发布的需求可靠真实才会反应到网站前台</div>
 
</div>
 
   <form action="completefirm" method="post">
   <div class="input_div">
        <p style="padding-left:10%;"> 
            <label for="firmname" class="uname" data-icon="u" >      公司/个人名称：</label>
            <input id="username" name="firmname" required="required" type="text" placeholder="填写较有效力的公司或个人"/>
        </p ><br><br>
        
        <p style="padding-left:10%;"> 
            <label for="firmaddress" class="uname" data-icon="u" > 发布方地址：</label>
            <input id="username" name="firmaddress" required="required" type="text" placeholder="发布需求方的联系地址"/>
        </p><br><br>
        <p style="padding-left:10%;"> 
            <label for="firmcode" class="youpasswd" data-icon="p">    邮箱        ：   </label>
            <input id="password" name="firmcode" required="required" type="text" placeholder="用于发布项目的联系沟通" /> 
        </p><br><br>
         <p style="padding-left:10%;"> 
            <label for="firmmodel" class="youpasswd" data-icon="p">   公司类型      ： </label>
            <input id="password" name="firmmodel" required="required" type="text" placeholder="例：多媒体/实业" /> 
        </p ><br><br>
          <p style="padding-left:10%;"> 
            <label for="firmtime" class="youpasswd" data-icon="p">   公司建立时间：  </label>
            <input id="password" name="firmtime" required="required" type="text" placeholder="" /> 
        </p><br><br>
           <p style="padding-left:10%;"> 
             <div class="make_head_lingtou_industry">请填写个人简介：</div>
  <div class="make_head_concerned_industry">
  <div class="make_head_concerned_industry"> 要求写明个人能力、工作、创业、项目经验。请具体到年月、学校专业学历、公司名称部门职务、完成过项目名称等，便于我们做真实性背景调查，否则将不予以受理。
    <div style="height:15px;"></div>
    <div id="editor"></div>
    个人简介, 不少于100字
  </div>
</div>
<div class="make_head_but text-center">
  <input type="submit" class="btn btn-primary" value=" 确  定 " >
</div>                               
</div>        
    </form>
    
 

<!-- 结束 --> 
<script src="../js/jquery-2.1.1.min.js"></script>  
<script src="../js/my_info.js"></script>
<script src="../js/bootstrap.js"></script> 
<script src="../js/summernote.min.js"></script> 
<script src="../js/apply_lingtou.js"></script>

</body>
</html>
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
<title>完善开发者资料</title>

<!-- Bootstrap -->
<link href="css/login.css" type="text/css" rel="stylesheet">
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/font-awesome.min.css" rel="stylesheet">
<link href="../css/summernote.css" rel="stylesheet">
<link href="../css/crowdfunding.center/apply_lingtou.css" rel="stylesheet">
<link href="../css/crowdfunding.center/my_info.css" rel="stylesheet">


<style>
.input_div{width:100%;}
.input_div label{width:400px;float:left;text-align:left;}
.input_div input{width:200px;float:left;}</style>
</head>
<body>

<div class="my_info_title">完善开发者资料</div>

<div class="my_info_title_3">
  <ul>
    <li id="listClick_8" onClick="listClick(8)" style="border-bottom: 1px solid #C40521; color: #C40521;">我的资料</li>
    <li id="listClick_9" onClick="listClick(9)">我是开发者</li>
    <li id="listClick_10" onClick="listClick(10)">我是发布方</li>
  </ul>
</div>
   <form action="completeperson"method="post">
   <div class="input_div">
        <p style="padding-left:10%;"> 
            <label for="usercompany" class="uname" data-icon="u" >      公司名称：</label>
            <input id="username" name="usercompany" required="required" type="text" placeholder="建议填写工作过的最著名的公司"/>
        </p ><br><br>
        
        <p style="padding-left:10%;"> 
            <label for="userworkexperience" class="uname" data-icon="u" > 工作年限：</label>
            <input id="username" name="userworkexperience" required="required" type="text" placeholder="3年"/>
        </p><br><br>
        <p style="padding-left:10%;"> 
            <label for="useremail" class="youpasswd" data-icon="p">    邮箱        ：   </label>
            <input id="password" name="useremail" required="required" type="text" placeholder="469975732@qq。com" /> 
        </p><br><br>
         <p style="padding-left:10%;"> 
            <label for="userposition" class="youpasswd" data-icon="p">     岗位       ： </label>
                <select name="userposition" id="select_k2" class="xla_k">
			    <option value="IOS工程师">IOS工程师</option>
			    <option value="Android工程师">Android工程师</option>
			    <option value="前端工程师">前端工程师</option>
			    <option value="后台工程师">后台工程师</option>
			    <option value="产品经理">产品经理</option>
			    <option value="UI设计师">UI设计师</option>
                </select> 
        </p ><br><br>
         <p style="padding-left:10%;"> 
            <label for="userprice" class="youpasswd" data-icon="p">       日薪：  </label>
            <input id="password" name="userprice" required="required" type="text" placeholder="for 8 hours" /> 
        </p><br><br>
          <p style="padding-left:10%;"> 
            <label for="userskill" class="youpasswd" data-icon="p">        个人技能： </label>
            <input id="password" name="userskill" required="required" type="text" placeholder="Java EE/Anroid" /> 
        </p><br><br>
        <div class="make_head_lingtou_industry">请填写个人简介：</div>
  <div class="make_head_concerned_industry"> 要求写明个人能力、工作、创业、项目经验。请具体到年月、学校专业学历、公司名称部门职务、完成过项目名称等，便于我们做真实性背景调查，否则将不予以受理。
    <div style="height:15px;"></div>
    <div id="editor"name="userdescribe"></div>
                   个人简介, 不少于100字
    </div>
	</div>
	<div class="make_head_but text-center">
	  <input type="submit" class="btn btn-primary" value=" 确  定 " >
	</div>                                     
	</form>
    
 
<script src="../js/jquery-2.1.1.min.js"></script>  
<script src="../js/my_info.js"></script>
<script src="../js/bootstrap.js"></script> 
<script src="../js/summernote.min.js"></script> 
<script src="../js/apply_lingtou.js"></script>

</body>
</html>

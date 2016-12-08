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
<title>修改密码</title>

<!-- Bootstrap -->
<link href="../css/crowdfunding.center/my_info.css" rel="stylesheet">

<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- 开始 -->
<div class="my_info_title">修改密码</div>
<div class="my_info_title_3">
  <ul>
    <li id="listClick_1" onClick="listClick(1)">基本资料</li>
    
    <li id="listClick_4" onClick="listClick(4)" style="border-bottom: 1px solid #C40521; color: #C40521;">修改密码</li>
  </ul>
</div>
<div class="my_info_content">
  <div class="my_info_content_care">友好提示：您的个人信息只做发布需求和投标时使用，感谢您对本众包平台的信任和支持！</div>
  <table class="my_info_content_care_table">
    <tbody>
      <tr>
        <td width="300" align="right" class="color555">旧密码：</td>
        <td class="color555"><input class="my_info_content_care_table_text" name="" type="text">
          <span class="colorCA1E37 margin_left10 font_size12">请输入旧密码</span></td>
      </tr>
      <tr>
        <td align="right" class="color555">新密码：</td>
        <td class="color555"><input class="my_info_content_care_table_text" name="" type="text">
          <span class="colorCA1E37 margin_left10 font_size12">请输入新密码</span></td>
      </tr>
      <tr>
        <td align="right" class="color555">确认新密码：</td>
        <td class="color555"><input class="my_info_content_care_table_text" name="" type="text">
          <span class="colorCA1E37 margin_left10 font_size12">请再次输入</span></td>
      </tr>
    <!--   <tr>
        <td align="right" class="color555">验证码：</td>
        <td class="color555"><input class="my_info_content_care_table_text" name="" type="text">
            <span class="color959595 margin_left10 font_size12">请输入验证码</span></td>
      </tr> -->
      <tr>
        <td align="center" class="color555" colspan="2"><input class="my_info_content_care_table_submit" name="" type="submit" value="申请认证"></td>
      </tr>
    </tbody>
  </table>
</div>

<!-- 结束 --> 
<script src="../js/jquery-2.1.1.min.js"></script> 
<script src="../js/my_info.js"></script>
</body>
</html>
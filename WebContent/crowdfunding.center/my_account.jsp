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
<link href="../css/crowdfunding.center/my_account.css" rel="stylesheet">

<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- 开始 -->
<table>
    <tbody>
      <tr>
        <td width="300" align="right" class="color555">用户名：</td>
        <td class="color555"><s:property value="#session.username"/></td>
        <br>
        <br>
      </tr>
      <tr>
        <td align="right" class="color555">手机号码：</td>
        <td class="color555"><s:property value="#session.userphone"/></td>
        <br>
        <br>
      </tr>
      <tr>
        <td align="right" class="color555">真实姓名：</td>
        <td class="color555"><s:property value="#session.userrealname"/></td> 
        <br>
        <br>
      </tr>
      <tr>
        <td align="right" class="color555">性别：</td>
        <td class="color555"><s:property value="#session.usersex"/></td> 
        <br>
        <br>
      </tr>
      <br>
      <tr>
        <td align="right" class="color555">邮箱：</td>
        <td class="color555"><s:property value="#session.useremail"/></td> 
        <br>
        <br>     
       </tr>
      <tr>
        <td align="right" class="color555">身份证号：</td>
        <td class="color555"><s:property value="#session.userid"/></td> 
        <br>
        <br>    
      </tr>
    
      <tr>
        <td align="right" class="color555">关注领域：</td>
        <td class="color555"><s:property value="#session.userinterest"/></td> 
        <br>
        <br>
      </tr>
      <tr>
        <td align="right" class="color555">最小悬赏金额：</td>
        <td class="color555"><s:property value="#session.usermoneymin"/></td> 
        <br>
        <br>
      </tr>
      <tr>
        <td align="right" class="color555">最大悬赏金额：</td>
        <td class="color555"><s:property value="#session.usermoneymax"/></td> 
        <br>
        <br>
      <tr>
        <td align="right" class="color555">所在城市：</td>
        <td class="color555"><s:property value="#session.prov"/></td> 
        <br>
        <br>
      </tr>
      <tr>
        <td align="right" class="color555">所在地区：</td>
        <td class="color555"><s:property value="#session.city"/></td> 
        <br>
        <br>
      </tr>
      <tr>
        <td align="right" class="color555">所在城区：</td>
        <td class="color555"><s:property value="#session.dist"/></td> 
        <br>
        <br>
      </tr>
      <tr>
        <td align="right" class="color555">通讯地址：</td>
        <td class="color555"><s:property value="#session.useraddress"/></td> 
        <br>
        <br>      
      </tr>
      <tr>
        <td align="right" class="color555">推荐人姓名：</td>
        <td class="color555"><s:property value="#session.userrecommend"/></td> 
        <br>
        <br>
       </tr>
      <tr>
        <td align="right" class="color555">推荐人电话：</td>
        <td class="color555"><s:property value="#session.userrecommendphone"/></td> 
        <br>
        <br>     
        </tr>
    </tbody>
  </table>
<!-- 结束 --> 
<script src="../js/jquery-2.1.1.min.js"></script> 
<script src="../js/my_info.js"></script>
</body>
</html>
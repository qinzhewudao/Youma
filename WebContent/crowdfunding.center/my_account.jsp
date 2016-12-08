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
<table class="my_info_content_care_table">
    <tbody>
      <tr>
        <td width="90" align="right" class="color555">用户名：</td>
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
        <td align="right" class="color555">&nbsp;</td>
        <td class="color555"><span class="color959595 margin_left10 font_size12">友好提示：网站前台页面不会显示您的地址，用于纸质合同的邮寄</span></td>
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
<div class="my_info_title">我的账户总览</div>
<div class="my_info_content">
  <div class="my_info_content_care">有码众包平台郑重承诺：<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、您的所有资金都在第三方支付平台存放，某经融公司众筹平台不参与款项的收支；<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、转帐时的开户名必须与您在第三方支付的真实性名一致；<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、多次转帐必须用同一张卡，以便于退款时保障您资金的安全。<br>
    <br>
    绑卡成功时效：<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大行T+1天完成（不受节假日影响）；<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小行T+1天完成（受节假日影响）；<br>
    <br>
    提现操作时效：<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大行T+1天完成（受节假日影响）；<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小行T+1天完成（受节假日影响）；<br>
    <br>
    12家大行（个人）：工商、农业、中国、建设、交通、招商、平安、光大、中信、北京、民生、兴业。<br>
    7家大行（企业）：工商、农业、建设、交通、平安、民生、兴业。 </div>
</div>
<div class="my_info_tbybzh">
  <div class="my_info_tbybzh_title"> 同步易宝帐号 </div>
  <div class="my_info_tbybzh_content">
    <input type="button" class="but" value="同步易宝帐号">
  </div>
</div>
<div class="my_info_czytx">
  <div class="my_info_czytx_title"> 充值与提现 </div>
  <div class="my_info_czytx_content">
    <table class="table table-bordered text-center">
      <tr class="active">
        <td>账户可用金额(元)</td>
        <td>已投资金额(元)</td>
        <td>已充值金额(元)</td>
        <td>已提现金额(元)</td>
      </tr>
      <tr>
        <td>0</td>
        <td>0</td>
        <td>0<input type="button" class="but_cz" value="充值"></td>
        <td>0<input type="button" class="but_cz" value="提现"></td>
      </tr>
    </table>
  </div>
</div>
<div class="my_info_tbybzh">
  <div class="my_info_tbybzh_title"> 绑定银行卡 </div>
  <div class="my_info_tbybzh_content">
    <input type="button" class="but" value="绑定银行卡">
  </div>
</div>

<!-- 结束 --> 
<script src="../js/jquery-2.1.1.min.js"></script> 
<script src="../js/my_info.js"></script>
</body>
</html>
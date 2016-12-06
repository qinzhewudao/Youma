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
<title>某经融公司股权众筹站点</title>
<!-- Bootstrap -->
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/font-awesome.min.css" rel="stylesheet">
<link href="../css/summernote.css" rel="stylesheet">
<link href="../css/crowdfunding.center/apply_lingtou.css" rel="stylesheet">

<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- 开始 -->
<div class="make_head_title">申请领投资格</div>
<div id="make_head_friendly_reminder1" class="make_head_friendly_reminder">某经融公司众筹平台友好提示：<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;申请领投资格：1. 年薪 50 万以上。 2. 能够承叐占资产总额 5%－50%的投资。 3. 对某经融公司众筹平台平台微信端推介的优秀项目保持关注状态。 4. 处于活跃状态的某经融公司众筹平台投资人（最近 1 个月约谈过 5 个项目以上）。 ...<a onClick="make_head_friendly_reminder_onClick(1)">查看更详细的介绍</a> </div>
<div id="make_head_friendly_reminder2" class="make_head_friendly_reminder">某经融公司众筹平台友好提示：<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;申请领投资格：1. 年薪 50 万以上。 2. 能够承叐占资产总额 5%－50%的投资。 3. 对某经融公司众筹平台平台微信端推介的优秀项目保持关注状态。 4. 处于活跃状态的某经融公司众筹平台投资人（最近 1 个月约谈过 5 个项目以上）。 5. 在所投领域有丰富的经验和判断力，以及一定的行业资源和影响力。 6. 能够与业地协助项目负责人完善商业模式、确定估值、投资条款和融资额及转让股份,协助项目 路演,完成本轮融资。 7. 能够为项目提供：政府公共关系、市场推广、品牌报道、行业上下游资源、与业的交易结构设 计等增值服务。 8. 较强的风险承叐能力，幵丏有充足的投资经验。 9. 较强的交流沟通能力，能够及旪进行信息披露，将所要求的项目进展情况告知给跟投人。 10. 有很强的分享精神,乐意把自己领投的项目分享给其他投资人。 11. 具有一定的投资影响力，必要旪能够为项目争取更多的跟投机会。<a onClick="make_head_friendly_reminder_onClick(2)">隐藏详细的介绍</a> </div>
<div class="make_head_lingtou_industry">请选择领投项目行业：<font>（最多不超过三项）</font></div>
<div class="make_head_concerned_industry">关注行业
  <input name="concerned_industry" type="checkbox" value="" />
  生活消费
  <input name="concerned_industry" type="checkbox" value="" />
  TMT
  <input name="concerned_industry" type="checkbox" value="" />
  互联网金融
  <input name="concerned_industry" type="checkbox" value="" />
  房产
  <input name="concerned_industry" type="checkbox" value="" />
  社区
  <input name="concerned_industry" type="checkbox" value="" />
  城市基础设施<br>
  <br>
  擅长投资行业：
  <input name="investment_industry" class="investment_industry_input" type="text" value="" />
  <font>请用空格隔开填写，如：房地产 餐饮 服务业</font></div>
<div class="make_head_lingtou_industry">请填写个人简介：</div>
<div class="make_head_concerned_industry">
  <div class="make_head_concerned_industry"> 要求写明个人求学、工作、创业、投资简历。请具体到起止年月、学校专业学历、公司名称部门职务、投资过企业名称等，便于我们做真实性背景调查，否则将不予以受理。
    <div style="height:15px;"></div>
    <div id="editor"></div>
    个人简介, 不少于100字
  </div>
</div>
<div class="make_head_but text-center">
  <input type="submit" class="btn btn-primary" value=" 确  定 " >
</div>

<!-- 结束 --> 
<script src="../js/jquery-2.1.1.min.js"></script> 
<script src="../js/bootstrap.js"></script> 
<script src="../js/summernote.min.js"></script> 
<script src="../js/apply_lingtou.js"></script>
</body>
</html>
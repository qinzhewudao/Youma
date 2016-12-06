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
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/crowdfunding.center/grade_integration.css" rel="stylesheet">

<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- 开始 -->
<div class="my_info_title">星级和积分介绍</div>
<div class="grade_integration_content">
  <p class="grade_integration_content_title">一、会员级别说明如下</p>
  <p class="grade_integration_content_content"> 某经融公司众筹平台的会员级别共分为5个等级，分别为：一星会员（注册会员）、二星会员、三星会员、四星会员、五星会员，五星级领人则为最高等级上限，跟投人升级到五星后再升级时，则为一星级领投人，通过积分或投资经验等条逐步升级。<br>
    用户类别分为：注册会员、项目方、领投人、跟投人四种角色。<br>
    领投人星级不是单由投资金额和活跃度来确定，如是知名投资人、投资机构、机构投资人可通过相应的条件项直接设置为相应星级投资人，如五星基础积分就是100万分。<br>
    项目方也是通过创业经验和相关条件来设定标准。<a href="" target="_blank">（查看领投人规则说明）</a><br>
    会员级别的升降均由系统自动处理，无需申请。<br>
    会员级别由成长值决定，成长值越高会员等级越高，享受到的会员权益越大。<br>
    <br>
    会员级别图示： </p>
  <p><img src="../img/member_center/jifen_1.png"></p>
</div>
<div class="grade_integration_content">
  <p class="grade_integration_content_title">二、会员级别规则</p>
  <p class="grade_integration_content_content">某经融公司众筹平台货币简称T币，天使积分不能折现。<br>
    会员级别的升降均由系统自动处理，无需申请。<br>
    所有的会员都需要是认证会员。<br>
    会员级别由成长值决定，成长值越高会员等级越高，享受到的会员权利越大。<br>
    一星级会员不能兑换T币。<br>
    会员例如使用优惠券、电子优惠卡、话费充值值卡的部分不加入到成长值中。<br>
    会员账号禁止转借或转让他人使用，如因转借或转让他人使用所带来的一切后果，某经融公司众筹平台概不负责，如被某经融公司众筹平台发现有转借或转让使用情况，某经融公司众筹平台则有权立即取消此会员账号的相应级别资格。<br>
    <br>
    会员级别是以三个维度增长：<br>
    一是通过投资额度和发布的项目数来加增加成长值。<br>
    二是您的操作行为来加增加成长值。<br>
    三是通过项目方和投资人本身的投资从业经验，资源、人脉等确定<a href="" target="_blank">（查看领投人规则说明）</a></p>
  <p class="grade_integration_content_table">
  <table class="table table-bordered text-center">
    <tr class="active">
      <td width="110">会员等级划分</td>
      <td width="140"><span class="glyphicon glyphicon-star colorCCC"></span>一星会员</td>
      <td width="140"><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span>二星会员</td>
      <td width="140"><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span>三星会员</td>
      <td width="140"><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span>四星会员</td>
      <td><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span>五星会员</td>
    </tr>
    <tr>
      <td>成长值范围<br>
        （投资额度）</td>
      <td>0.1-4.999万</td>
      <td>5-9.999万</td>
      <td>10-29.999万</td>
      <td>30-99.999万</td>
      <td>100万以上</td>
    </tr>
    <tr>
      <td>会员有效期</td>
      <td>永久有效</td>
      <td>永久有效</td>
      <td>会员有效期1年，1年后扣除1000成长值，根据剩余成长值重新计算级别</td>
      <td>会员有效期1年，1年后扣除4000成长值，根据剩余成长值重新计算级别</td>
      <td>会员有效期1年，1年后扣除10000成长值，根据剩余成长值重新计算级别</td>
    </tr>
    <tr>
      <td>领投人成长值倍数</td>
      <td>1</td>
      <td>1.2</td>
      <td>1.3</td>
      <td>1.4</td>
      <td>1.5</td>
    </tr>
    <tr>
      <td>跟投人成长值倍数</td>
      <td>1</td>
      <td>1.1</td>
      <td>1.2</td>
      <td>1.3</td>
      <td>1.4</td>
    </tr>
    <tr>
      <td>积分兑换</td>
      <td>一星级会员不能兑换积分</td>
      <td>可以使用积分兑换10T币
        10000积分＝10T币
        等值于10元
        消费区间：10-99.9元</td>
      <td>可以使用积分兑换10T币、
        20T币 消费区间：100-
        299元 </td>
      <td>可以使用积分兑换10T币、20T币、50T币 消费区间：300-999.9元 </td>
      <td>可以使用积分兑换10T币、20T币、50T币、100T币 消费区间：1000元以上 </td>
    </tr>
  </table>
  </p>
</div>
<div class="grade_integration_content">
  <p class="grade_integration_content_title">三、会员级别享有服务</p>
  <p class="grade_integration_content_table">
  <table class="table table-bordered text-center">
    <tr class="active">
      <td width="110">会员等级划分</td>
      <td width="140"><span class="glyphicon glyphicon-star colorCCC"></span>一星会员</td>
      <td width="140"><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span>二星会员</td>
      <td width="140"><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span>三星会员</td>
      <td width="140"><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span>四星会员</td>
      <td><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span><span class="glyphicon glyphicon-star colorCCC"></span>五星会员</td>
    </tr>
    <tr>
      <td>成长值范围<br>
        （投资额度）</td>
      <td>0.1-4.999万</td>
      <td>5-9.999万</td>
      <td>10-29.999万</td>
      <td>30-99.999万</td>
      <td>100万以上</td>
    </tr>
    <tr>
      <td>会员有效期</td>
      <td>永久有效</td>
      <td>永久有效</td>
      <td>会员有效期1年，1年后扣除1000成长值，根据剩余成长值重新计算级别</td>
      <td>会员有效期1年，1年后扣除4000成长值，根据剩余成长值重新计算级别</td>
      <td>会员有效期1年，1年后扣除10000成长值，根据剩余成长值重新计算级别</td>
    </tr>
    <tr>
      <td>领投人成长值倍数</td>
      <td>1</td>
      <td>1.2</td>
      <td>1.3</td>
      <td>1.4</td>
      <td>1.5</td>
    </tr>
    <tr>
      <td>跟投人成长值倍数</td>
      <td>1</td>
      <td>1.1</td>
      <td>1.2</td>
      <td>1.3</td>
      <td>1.4</td>
    </tr>
    <tr>
      <td>积分兑换</td>
      <td>一星级会员不能兑换积分</td>
      <td>可以使用积分兑换10T币
        10000积分＝10T币
        等值于10元
        消费区间：10-99.9元</td>
      <td>可以使用积分兑换10T币、
        20T币 消费区间：100-
        299元 </td>
      <td>可以使用积分兑换10T币、20T币、50T币 消费区间：300-999.9元 </td>
      <td>可以使用积分兑换10T币、20T币、50T币、100T币 消费区间：1000元以上 </td>
    </tr>
  </table>
  </p>
</div>
<div class="grade_integration_content">
  <p class="grade_integration_content_title">四、如何提高会员星级评级</p>
  <p class="grade_integration_content_content">布项目越多，评级越高；<br>
    投资额度越大，评级越高；<br>
    信息越全，评论越多评级越高即活跃度越高，评级越高</p>
</div>
<div class="grade_integration_content">
  <p class="grade_integration_content_title">五、会员积分有什么用？</p>
  <p class="grade_integration_content_content">布项目越多，评级越高；<br>
    投资额度越大，评级越高；<br>
    信息越全，评论越多评级越高即活跃度越高，评级越高</p>
</div>

<!-- 结束 --> 
<script src="../js/jquery-2.1.1.min.js"></script> 
<script src="../js/my_info.js"></script>
</body>
</html>
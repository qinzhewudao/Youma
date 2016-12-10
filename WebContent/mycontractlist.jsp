<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page import="dao.ProjectDao"%>
<%@page import="com.ProjectAction"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn" class="no-js">
<head>
    <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>我的合同</title>
        <meta name="description" content="A responsive, magazine-like website layout with a grid item animation effect when opening the content" />
        <meta name="keywords" content="grid, layout, effect, animated, responsive, magazine, template, web design" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.3.0/css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="css/style4.css" />
        <script src="js/modernizr.custom.js"></script>
        <style>
* { margin: 0; padding: 0;}
body{
    background:url(../images/web_login_bg.jpg) no-repeat center;
    background-size: cover;
}
body,html{
    height:100%;
    overflow:hidden;
}
ul { list-style-type: none;}
li{float:left;}
.Header{width:100%;margin:0 auto;/*页面得一居中*/height:100px;background:#fff;}
#menu li{font-size:24px;float:left;list-style:none;cursor: pointer;}
#menu a{color:#000000;text-decoration:none;margin:10px;/*<!--text-decoration:none去掉下划线-->*/padding-top:20px;/*display:block;*/display:block;padding-right:60px;padding-bottom:0px;padding-left:30px;}
#menu a:hover,a:active{color: #0000ff;}
#darkbannerwrap {
    background: url(../images/aiwrap.png);
    width: 18px;
    height: 10px;
    margin: 0 0 20px -58px;
    position: relative;
}
</style>

            <ul>
                <s:iterator value="lista" var="c">  
                <li><a class="grid__item" href = "contractdetail.action?projectname=<s:property value="#c.projectname"/>&publisher=<s:property value="#c.projectname"/>&bidder=<s:property value="#c.bidder" />">
                        <h2 class="title title--preview">电子合同</h2>
                        <br><br>
                        <span class="category">项目名：<s:property value="#c.projectname"/></span>
                        <br><br>
                        <span class="category">发布者：<s:property value="#c.publisher" /></span>
                        <br><br>
                        <span class="category">投标者：<s:property value="#c.bidder" /></span>
                        <br><br>
                        <span class="category">协议生成日期：<s:property value="#c.contractdate" /></span>
                         <br><br>
                        <span class="category">点击可获得word合同</span>
                        </a></li>
                    </s:iterator>
                    </ul>
             </div>                       

        <script src="js/classie.js"></script>
        <script src="js/main.js"></script>
</body>
</html>
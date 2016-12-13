<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page import="dao.ProjectDao"%>
<%@page import="com.ProjectAction"%>
<%@page import="com.ContractAction"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn" class="no-js">
<head>
<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>发现我想开发的项目</title>
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

</head>
<body>

<div id="theGrid" class="main">
        <form action = "bid"  method="post">
      <h1 style="padding-left:20%">项目详情</h1><br><br>
      <br>
          <% 
             ProjectDao itemDao = new ProjectDao();
             String str = new String(request.getParameter("projectname").getBytes("iso-8859-1"), "utf-8"); 
             ProjectAction item = itemDao.getProjectActionByname(str);
             if(item!=null)
             {
          %>                
                            <h2 style="padding-left:20%">项目名： <input type="text" style="border:0px;BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none"  name="projectname" readonly value = <%=item.getProjectname()%>></h2><br>
                            <span style="padding-left:20%">开发平台:<%=item.getProjectplat()%></span><br><br>
                            <img style="padding-left:20%" src="img/authors/2.png" alt="author01" />
                            <span >发布者<input type="text" style="border:0px;BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none"  name="publisher"  readonly value   = <%=item.getPublisher()%>></span><br><br>
                            <span style="padding-left:20%"><i class="fa fa-calendar-o"></i>预计价格:<%=item.getProjectprice()%>￥</span><br><br>
                            <span style="padding-left:20%"><i class="fa fa-clock-o"></i>项目类型<%=item.getProjectstyle()%></span><br><br>
                            <h2 style="padding-left:20%">项目描述： <input type="submit" value="投标" style=" color:red;" /> </h2><br>
                            <p style="padding-left:20%"><%=item.getProjectdescribe()%></p>                            
              <% 
            }

          %> 

      </form>

            </div>		

		<script src="js/classie.js"></script>
		<script src="js/main.js"></script>
</body>
</html>
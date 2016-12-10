<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
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
        
            <h1 style="padding-left:20%">用户职位：<%=request.getAttribute("userposition")%></h1><br>
            <h2 style="padding-left:20%">用户名：<%=request.getAttribute("username")%> </h2><br>
            <span style="padding-left:20%"><i class="fa fa-calendar-o"></i>预估薪资： <%=request.getAttribute("userprice")%> </span><br><br>
            <span style="padding-left:20%"><i class="fa fa-clock-o"></i>工作经验：<%=request.getAttribute("userworkexperience")%> </span><br><br>
            <img style="padding-left:20%" src="img/authors/1.png" alt="author01" />
            <span >个人技能：<%=request.getAttribute("userskill")%></span><br><br>
            <span style="padding-left:20%">从业公司：<%=request.getAttribute("usercompany")%></span><br><br>
            <span style="padding-left:20%">个人简历：<%=request.getAttribute("userdescribe")%></span><br> 

    <!-- /container -->   
        <script src="js/classie.js"></script>
        <script src="js/main.js"></script>
    </body>

</html>
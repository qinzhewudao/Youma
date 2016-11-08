<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html> 
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1,minimum-scale=1, maximum-scale=1">
            <title>有码-软件外包服务平台</title>
                <meta name="Keywords" content="有码,外包,软件外包,众包,悬赏平台,软件项目需求,软件开发">
                <meta name="Description"
              content="有码是 Code Beautifier推出的软件众包平台，意在连接需求方与广大开发者。让项目的需求方快速的找到合适的开发者，完成项目开发工作。同时也帮助开发者找到合适的项目将技术变成财富。">
 
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
 <title>mainpage</title>   
     <style> 
html{width:100%;height:100%;} 
body{background:#fff;font-size:18px;font-family:"Arial", "Tahoma", "微软雅黑", "雅黑";
line-height:18px;padding:0px;margin:0px;text-align:center} 
div{padding:18px} 
img{border:0px;vertical-align:middle;padding:0;margin:0} 
input, button{font-family:"Arial", "Tahoma", "微软雅黑", "雅黑";border:0;
vertical-align:middle;margin:8px;line-height:18px;font-size:18px} 
</style>
<style type="text/css">
table {
border: 1px solid black;
 
}
table thead tr th {
border: 1px solid black;
padding: 3px;
background-color: #FFFFFF;
}
table tbody tr td {
border: 1px solid black;
padding: 3px;
}
</style>
<style> 
li{font-size:24px;
  float:left;list-style:none; align:center}
  li a{
  color:#000000;text-decoration:none;margin:0px;
  padding-top:50px;display:block;
  padding-right:60px;padding-bottom:8px;
  padding-left:60px;}
  li a:hover{
  background-color:#FFFFFF;}
a:hover,a:active{text-decoration:underline;color:#f60;}
  </style>  
</head>
<body>
<%
String userpassword=(String)session.getAttribute("password"); 
String username=(String)session.getAttribute("username");

%>
     <li><a href="/projects">找人</a></li>
                    <li><a href="/projects">找项目</a></li>
                    <li><a href="/cases">查看需求</a></li>
                    <li><a href="checkfirmdata.action">发布需求</a></li>
                    <s:if test="#session.username!=null" > 
                                                             欢迎你:<%=username%>
                    <a href="personaldata.jsp">个人中心</a>
                    <a href="logout.action">安全退出</a>
                    </s:if>
                    <s:else> 
                    <li><a href="login.jsp">登录/注册</a></li>
                    </s:else>
  <!--热门项目  -->
    <c:forEach items="${itemList}" varStatus="status" begin="0" end="${itemList.size() }" step="1">
       
        <div style="float: left;width: 20%;margin:auto;height: 450px;">
            <table class="table-detail" cellpadding="0" cellspacing="0" border="0" type="main" width="100%">    
                <tr height="40">
                    <td style="text-align: left;color:#6292BE;font-size:16px;border-width: 0;width: 70%">${itemList[status.index].name}项目名1</td>
                    <td style="text-align: right; border-width: 0;width: 30%">
                        <a href="" style="text-decoration:none;text-align:center;color:#3D8E4A;">MORE >>></a>
                    </td>
                </tr>
                <c:forEach items="" var="itemNews" varStatus="status">
                    <tr height="30">
                        <td style="text-align: left;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; border-width: 0;width: 100px"><a href="${ctx}/smart/itemsNews/itemsNews/get.ht?id=${itemNews.id}" style="text-decoration:none;text-align:center;color:#000000;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">${itemNews.title}价格</a></td>
                        <td style="text-align: right; border-width: 0;width: 30%"><fmt:formatDate value="${itemNews.publishTime}" pattern="yyyy-MM-dd"/>工期</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </c:forEach>
    <c:forEach items="${itemList}" varStatus="status" begin="0" end="${itemList.size() }" step="1">
       
        <div style="float: left;width: 20%;margin:auto;height: 450px;">
            <table class="table-detail" cellpadding="0" cellspacing="0" border="0" type="main" width="100%">    
                <tr height="40">
                    <td style="text-align: left;color:#6292BE;font-size:16px;border-width: 0;width: 70%">${itemList[status.index].name}项目名2</td>
                    <td style="text-align: right; border-width: 0;width: 30%">
                        <a href="" style="text-decoration:none;text-align:center;color:#3D8E4A;">MORE >>></a>
                    </td>
                </tr>
                <c:forEach items="" var="itemNews" varStatus="status">
                    <tr height="30">
                        <td style="text-align: left;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; border-width: 0;width: 100px"><a href="${ctx}/smart/itemsNews/itemsNews/get.ht?id=${itemNews.id}" style="text-decoration:none;text-align:center;color:#000000;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">${itemNews.title}价格</a></td>
                        <td style="text-align: right; border-width: 0;width: 30%"><fmt:formatDate value="${itemNews.publishTime}" pattern="yyyy-MM-dd"/>工期</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </c:forEach>

    <c:forEach items="${itemList}" varStatus="status" begin="0" end="${itemList.size() }" step="1">
       
        <div style="float: left;width: 20%;margin:2px;height: 450px;">
            <table class="table-detail" cellpadding="0" cellspacing="0" border="0" type="main" width="100%">    
                <tr height="40">
                    <td style="text-align: left;color:#6292BE;font-size:16px;border-width: 0;width: 70%">${itemList[status.index].name}项目名3</td>
                    <td style="text-align: right; border-width: 0;width: 30%">
                        <a href="" style="text-decoration:none;text-align:center;color:#3D8E4A;">MORE >>></a>
                    </td>
                </tr>
                <c:forEach items="" var="itemNews" varStatus="status">
                    <tr height="30">
                        <td style="text-align: left;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; border-width: 0;width: 100px"><a href="${ctx}/smart/itemsNews/itemsNews/get.ht?id=${itemNews.id}" style="text-decoration:none;text-align:center;color:#000000;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">${itemNews.title}价格</a></td>
                        <td style="text-align: right; border-width: 0;width: 30%"><fmt:formatDate value="${itemNews.publishTime}" pattern="yyyy-MM-dd"/>工期</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </c:forEach>

<c:forEach items="${itemList}" varStatus="status" begin="0" end="${itemList.size() }" step="1">
       
        <div style="float: left;width: 20%;margin:auto;height: 450px;">
            <table class="table-detail" cellpadding="0" cellspacing="0" border="0" type="main" width="100%">    
                <tr height="40">
                    <td style="text-align: left;color:#6292BE;font-size:16px;border-width: 0;width: 70%">${itemList[status.index].name}项目名4</td>
                    <td style="text-align: right; border-width: 0;width: 30%">
                        <a href="" style="text-decoration:none;text-align:center;color:#3D8E4A;">MORE >>></a>
                    </td>
                </tr>
                <c:forEach items="" var="itemNews" varStatus="status">
                    <tr height="30">
                        <td style="text-align: left;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; border-width: 0;width: 100px"><a href="${ctx}/smart/itemsNews/itemsNews/get.ht?id=${itemNews.id}" style="text-decoration:none;text-align:center;color:#000000;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">${itemNews.title}价格</a></td>
                        <td style="text-align: right; border-width: 0;width: 30%"><fmt:formatDate value="${itemNews.publishTime}" pattern="yyyy-MM-dd"/>工期</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </c:forEach>

<table cellspacing="0" align="center">
<thead>
<tr>
<th>项目名</th>
<th>发布时间</th>
<th>发布者</th>
<th>悬赏金额</th>
<th>工期</th>
</tr>
</thead>
<tbody>
<ul>
    <s:iterator value="lrst" >
    <tr>
     <td>  <s:property value=""/></td>
      <td> <s:property value=""/></td>
      <td><s:property value=""/></td>
      <td><s:property value=""/></td>
       <td><s:property value=""/></td>
    </s:iterator>
  </ul>
</tbody>
</table>  
 </body>
</html>  

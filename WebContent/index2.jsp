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
    <link rel="stylesheet" type="text/css" href="mainpage.css">
    -->

</head>
<body>

    <input type="hidden" value="" name="username">
    <input type="hidden" value="" name="user_phone">
    <input type="hidden" value="" name="user_email">
    <input type="hidden" value="" name="user_global_key">
    
    <div class="mainpage">
                          
                <ul class="nav">
                    <li><a href="/projects">找人</a></li>
                    <li><a href="/projects">找项目</a></li>
                    <li><a href="/cases">查看需求</a></li>
                    <li><a href="/club">发布需求</a></li>
                    <s:if test="#session.username!=null" > 
                                                             欢迎你:<s:property value="#session.username"/>
                    <a href="logout.action">个人中心</a>
                    <a href="logout.action">安全退出</a>
                    </s:if>
                    <s:else> 
                    <li class="login-zone"><a href="login.jsp">登录</a></li>
                    <li class="login-zone"><a href="register.jsp">注册</a></li>
                    </s:else>

                </ul>
                 
 <!-- 通过设置 div的悬浮float:left,使div不致于分行显示;
             通过设置 width:45%,来确保显示两列,你可以设置小一点,来让其显示多列;
             通过设置 margin:15px,来设置各个div之间的间距;
             通过设置 hight:190px,来设置每个div的高度不因为内容项目的多少而显示高度不一致.
         -->
       

  <div class="panel-body">
    <c:forEach items="${itemList}" varStatus="status" begin="0" end="${itemList.size() }" step="1">
       
        <div style="float: left;width: 45%;margin:15px;height: 190px;">
            <table class="table-detail" cellpadding="0" cellspacing="0" border="0" type="main" width="100%">    
                <tr height="40">
                    <td style="text-align: left;color:#6292BE;font-size:16px;border-width: 0;width: 70%">${itemList[status.index].name}项目名</td>
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
</div> 
<div class="panel-body">
    <c:forEach items="${itemList}" varStatus="status" begin="0" end="${itemList.size() }" step="1">
       
        <div style="float: right;width: 40%;margin:8px;height: 190px;">
            <table class="table-detail" cellpadding="0" cellspacing="0" border="0" type="main" width="100%">    
                <tr height="40">
                    <td style="text-align: left;color:#6292BE;font-size:16px;border-width: 0;width: 70%">${itemList[status.index].name}项目名</td>
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
</div> 

 <div class="panel-body">
    <c:forEach items="${itemList}" varStatus="status" begin="0" end="${itemList.size() }" step="1">
       
        <div style="float: left;width: 45%;margin:15px;height: 190px;">
            <table class="table-detail" cellpadding="0" cellspacing="0" border="0" type="main" width="100%">    
                <tr height="40">
                    <td style="text-align: left;color:#6292BE;font-size:16px;border-width: 0;width: 70%">${itemList[status.index].name}项目名</td>
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
</div> 
<div class="panel-body">
    <c:forEach items="${itemList}" varStatus="status" begin="0" end="${itemList.size() }" step="1">
       
       <div style="float: right;width: 40%;margin:8px;height: 190px;">
            <table class="table-detail" cellpadding="0" cellspacing="0" border="0" type="main" width="100%">    
                <tr height="40">
                    <td style="text-align: left;color:#6292BE;font-size:16px;border-width: 0;width: 70%">${itemList[status.index].name}项目名</td>
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
</div> 
 <div class="panel-body">
    <c:forEach items="${itemList}" varStatus="status" begin="0" end="${itemList.size() }" step="1">
       
        <div style="float: left;width: 45%;margin:15px;height: 190px;">
            <table class="table-detail" cellpadding="0" cellspacing="0" border="0" type="main" width="100%">    
                <tr height="40">
                    <td style="text-align: left;color:#6292BE;font-size:16px;border-width: 0;width: 70%">${itemList[status.index].name}项目名</td>
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
</div> 
<div class="panel-body">
    <c:forEach items="${itemList}" varStatus="status" begin="0" end="${itemList.size() }" step="1">
       
      <div style="float: right;width: 40%;margin:8px;height: 190px;">
            <table class="table-detail" cellpadding="0" cellspacing="0" border="0" type="main" width="100%">    
                <tr height="40">
                    <td style="text-align: left;color:#6292BE;font-size:16px;border-width: 0;width: 70%">${itemList[status.index].name}项目名</td>
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
</div> 
 <div class="panel-body">
    <c:forEach items="${itemList}" varStatus="status" begin="0" end="${itemList.size() }" step="1">
       
        <div style="float: left;width: 45%;margin:15px;height: 190px;">
            <table class="table-detail" cellpadding="0" cellspacing="0" border="0" type="main" width="100%">    
                <tr height="40">
                    <td style="text-align: left;color:#6292BE;font-size:16px;border-width: 0;width: 70%">${itemList[status.index].name}项目名</td>
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
</div> 
<div class="panel-body">
    <c:forEach items="${itemList}" varStatus="status" begin="0" end="${itemList.size() }" step="1">
       
        <div style="float: right;width: 40%;margin:8px;height: 190px;">
            <table class="table-detail" cellpadding="0" cellspacing="0" border="0" type="main" width="100%">    
                <tr height="40">
                    <td style="text-align: left;color:#6292BE;font-size:16px;border-width: 0;width: 70%">${itemList[status.index].name}项目名</td>
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
</div> 

					<table class="table table-hover table-striped">
						<thead>
							<tr>
								<th>
									项目名
								</th>
								<th>
									悬赏
								</th>
								<th>
									工期
								</th>
								<th>
									状态
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									1
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									01/04/2012
								</td>
								<td>
									Default
								</td>
							</tr>
							<tr class="success">
								<td>
									1
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									01/04/2012
								</td>
								<td>
									Approved
								</td>
							</tr>
							<tr class="error">
								<td>
									2
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									02/04/2012
								</td>
								<td>
									Declined
								</td>
							</tr>
							<tr class="warning">
								<td>
									3
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									03/04/2012
								</td>
								<td>
									Pending
								</td>
							</tr>
							<tr class="info">
								<td>
									4
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									04/04/2012
								</td>
								<td>
									Call in to confirm
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			
       
</body>
</html>

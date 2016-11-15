<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page import="dao.ProjectDao"%>
<%@page import="com.ProjectAction"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1,minimum-scale=1, maximum-scale=1">
            <title>有码-软件外包服务平台</title>
                <meta name="Keywords" content="有码,外包,软件外包,众包,悬赏平台,软件项目需求,软件开发">  
                <meta name="Description"
content="有码是 Code Beautifier推出的软件众包平台，意在连接需求方与广大开发者。让项目的需求方快速的找到合适的开发者，完成项目开发工作。同时也帮助开发者找到合适的项目将技术变成财富。">
 
   
    <link rel="stylesheet" type="text/css" href="css/mainpage.css">
   <script type="text/javascript" src="C:\Users\POP\Downloads\jquery-3.1.1.js"></script>
   <script type="text/javascript">

function te(){
	alert("这是一个function");
}
</script>
</head>
<body>
<button id="run" onclick="te()">按钮</button>

 <div id="mainContainer"> 
  

      <div id="menu">
              <li><a href="personlist.jsp">找人</a></li>
                    <li><a href="index.jsp">找项目</a></li>

                    <li><a href="index1.jsp">查看需求</a></li>
                    <li><a href="checkfirmdata">发布需求</a></li>

                  


                    <div class="login">
                    <s:if test="#session.username!=null" > 
                                                             欢迎你:<s:property value="#session.username"/>
                     <li><a href="personaldata.jsp">个人中心</a></li>
                    <li><a href="logout.action" >退出</a></li>
                    </s:if>
                    <s:else> 
                    <li ><a href="login.jsp" >登录/注册</a></li>
                    </s:else>
                   </div>
                  
            </div> 
           



    
<table> 
<thead>
<tr>
<th>项目名</th>
<th>发布时间</th>
<th>发布者</th>
<th>悬赏金额</th>
<th>style</th>
</tr>
</thead>
<tbody>
<ul>

           <% 
               ProjectDao itemsDao = new ProjectDao(); 
               ArrayList<ProjectAction> list = itemsDao.getAllProjectAction();
               if(list!=null&&list.size()>0)
               {
                for(int i=0;i<list.size();i++)
                {
                   ProjectAction item = list.get(i);
           %>  
              <table>    
                <tr >
                    <td><a href="projectdetail.jsp?projectname=<%=item.getProjectname()%>"><%=item.getProjectname()%></a></td>
                    <td><%=item.getPublishdate()%></td> 
                    <td><%=item.getPublisher()%></td>  
                    <td><%=item.getProjectprice()%></td>  
                    <td><%=item.getProjectstyle()%></td> 
                </tr>
            </table> 
           <%       
                  }
           %>
           <tr></tr>
           <%
              } 
           %>  
</ul>
</tbody>
</table> 


  
<div id="footer">Copyright by <a href = "index.jsp">codebeautifier</a></div>
</div>
 </body>
</html>  

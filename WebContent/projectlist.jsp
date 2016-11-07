<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     
    <title>My JSP 'index.jsp' starting page</title>
 
<title>Project List</title>
   <style> 
html{width:100%;height:100%;} 
body{background:#fff;font-size:18px;font-family:"Arial", "Tahoma", "微软雅黑", "雅黑";
line-height:18px;padding:0px;margin:0px;text-align:center} 
div{padding:18px} 
img{border:0px;vertical-align:middle;padding:0;margin:0} 
input, button{font-family:"Arial", "Tahoma", "微软雅黑", "雅黑";border:0;
vertical-align:middle;margin:8px;line-height:18px;font-size:18px} 
.btn{width:140px;height:36px;line-height:18px;font-size:18px;
background:url("8.jpg") no-repeat left top;color:#FFF;padding-bottom:4px} 
</style>
  <style type="text/css"> 
  <!-- 
   .STYLE1 {  
   color: #990033;  
   font-weight: bold;
   padding-top:15px;
   } 
   --> 
   </style> 
   <style>  
   a{TEXT-DECORATION:none}a:hover{TEXT-DECORATION:underline}.STYLE2 
   {color: #000000} 
   </style>
   
   </head> 
<style type="text/css">

table {
border: 1px solid black;
border-collapse: collapse;
 margin: 10px auto;
}
table thead tr th {
border: 1px solid black;
padding: 3px;
background-color: #cccccc;
}
table tbody tr td {
border: 1px solid black;
padding: 3px;
}
</style>
</head>
<body> 

<thead>
<tr>
<th>项目名</th>
<th>发布者</th>
<th>金额</th>
<th>发布时间</th>
<th>工期</th>
<th>项目分类</th>
</tr>
</thead>
<tbody>
    <ul>
    <s:iterator value="lrst" >
    <tr>     
<td><s:a href="Information?pname=%{pname}"> <!-- 跳转到项目详情页 -->
<s:property value="pname"/></td> 
</s:a>
      <td> <s:property value="powner"/></td>
      <td><s:property value="price"/></td>
      <td><s:property value="lanchdate"/></td>
       <td><s:property value="date"/></td>
            <td> <s:property value="category"/></td>
      </s:iterator>
  </ul>
  </body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page import="dao.ProjectDao"%>
<%@page import="com.ProjectAction"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/mainpage.css">

</head>
<body>
    <div id="center">
    <hr>
    
    <center>
      <h1>项目详情</h1>
      <table width="750" height="500" cellpadding="0" cellspacing="0" border="0">
        <tr>
          <% 
             ProjectDao itemDao = new ProjectDao();
             ProjectAction item = itemDao.getProjectActionByname(request.getParameter("projectname"));
             if(item!=null)
             {
          %>
          <td width="70%" valign="top">
             <table>
               <tr>
               <td>项目名：<%=item.getProjectname()%></td>
               </tr>
               <tr>
               <td>项目类型：<%=item.getProjectstyle()%></td> 
               </tr>
               <tr>
               <td>开发平台：<%=item.getProjectplat()%></td>
               </tr>
               <tr>
               <td>预计价格：<%=item.getProjectprice() %>￥</td>
               </tr> 

             </table>

          </td>

          <% 

            }

          %>

      </table>
      <a href = "checkpersondata.action"><h2>投标该项目</h2></a>
      </center>
      </div>
<div id="footer">Copyright by <a href = "index.jsp">codebeautifier</a></div>
</body>
</html>
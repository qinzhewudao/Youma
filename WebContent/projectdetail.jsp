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
      <form action = "bid">
      <h1>项目详情</h1>
      <br>
          <% 
             ProjectDao itemDao = new ProjectDao();
             ProjectAction item = itemDao.getProjectActionByname(request.getParameter("projectname"));
             if(item!=null)
             {
          %>
             <table>
               <tr>
               <td>项目名：<input type="text"  name="projectname" readonly value = <%=item.getProjectname()%>></td>
               </tr>
               <tr>
               <td>项目类型<input type="text"  name="projectstyle" disabled value = <%=item.getProjectstyle()%>></td> 
               </tr>
               <tr>
               <td>开发平台：<input type="text" name="peojectplat" disabled value = <%=item.getProjectplat()%>></td>
               </tr>
               <tr>
               <td>预计价格:<input type="text" name="projectprice" disabled value =<%=item.getProjectprice()%>>￥</td>
               </tr> 
               <tr>
               <td>发布者：<input type="text"  name="publisher"  readonly value   = <%=item.getPublisher()%>></td>
               </tr> 
             </table>
          <% 
            }
          %>
      <br>
      <input type="submit" value="投标"  style=" color:red;" />
      </form>
      </center>
      
      </div>
<div id="footer">Copyright by <a href = "index.jsp">codebeautifier</a></div>
</body>
</html>
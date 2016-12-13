
<%@ page language="java" %>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
<title>Hello World</title>
<meta http-equiv="Content-Type" content="content=text/html; charset=gb2312">
</head>
<body bgcolor="#FFFFFF">
<center>
<font size= 5 color=blue>多种字体大小显示</font>
<center>
<br>
<hr>
<br>
<div align="center">
<% 
//控制文字大小的循环语句
for( int i=1; i<=6; i++ )
out.println( "<h" + i + ">Hello World!</h" + i + ">" );
%>
</div>
</body>
</html>


<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<head>
<title>CH3 - HelloJSP.jsp</title>
</head>
<body>
<h2>JSP 将会被转译为 Servlet</h2>
<%!
int k = 0;
%>

<c:out value="Hi" />
<%
String name = "browser";

out.println("大家好 !!");
%>
<%= name %>
</body>
</html>

<%@ page contentType="text/html;charset=gb2312" import="java.util.*" %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="NetObjects ScriptBuilder 3.0">
<META HTTP-EQUIV="Content-Type" content="text/html; charset=iso-8859-1">
<TITLE>Document Title</TITLE>
</HEAD>
<BODY>
<center><font color=blue size=10 face="隶书">
<%
Date today = new Date();
int hours = today.getHours();
int minute = today.getMinutes(); 
if(hours>=0 && hours<12){
out.println("早上好!");
}else{
out.println("下午好!");
}

String[] weekdays = {"日","一","二","三","四","五","六"};
out.println("\n今天是" + (today.getYear()+1900) + "年" + (today.getMonth()+1) + "月" + (today.getDate()) + "日星期" + weekdays[today.getDay()]);


	
Include.jsp
<%@ page contentType="text/html;charset=GB2312" %> 
<html>
<head>
<title>CH4 - Include_Html.jsp</title>
</head>
<body>
<h2>include 命令</h2>
<%@ include file="Hello.html" %>
<% 
out.println("欢迎大家进入JSP的世界");
%>
</body>
</html>
Hello.html:
<html><body>
JSP 2.0 Tech Reference<br>
</html></body>


ErrorPage.jsp
<%@ page contentType="text/html;charset=GB2312" errorPage="Error.jsp" %> 
<html>
<head>
<title>CH4 - ErrorPage.jsp</title>
</head>
<body>
<h2>errorPage 的范例程序</h2>
<%! 
private double toDouble(String value) 
{ 
return(Double.valueOf(value).doubleValue()); 
}
%>

<% 
double num1 = toDouble(request.getParameter("num1")); 
double num2 = toDouble(request.getParameter("num2"));
%>
您传入的两个数字为：<%= num1 %> 和 <%= num2 %><br>
两数相加为 <%= (num1+num2) %>
</body>
</html>
Error.jsp
<%@ page contentType="text/html;charset=GB2312" isErrorPage="true" %>
<%@ page import="java.io.PrintWriter" %>
<html>
<head>
<title>CH4 - Error.jsp</title>
</head>
<body>
<h2>errorPage 的范例程序</h2>
<p>ErrorPage.jsp 错误产生：<I><%= exception %></I></p><br>
<pre>
问题如下：<% exception.printStackTrace(new PrintWriter(out)); %>
</pre>
</body>
</html>

6、jsp:forward 
Forward.jsp
<%
out.println("会被执行 !!! ");
%>
<jsp:forward page="Quoting2.jsp">
<jsp:param name="username" value="Mike" />
</jsp:forward> 
<%
out.println("不会执行 !!!");
%>
Quoting2.jsp
<%@ page contentType="text/html;charset=GB2312" %>
<html>
<head>
<title>CH4 - Quoting2.jsp</title>
</head>
<body>
<h2>Quoting 范例程序 3</h2>
<%
out.println("JSP遇到 \'、\"、\\、&lt;%、%\> 时需要做适当的修改");
%>
</body>
</html>


<%@ page contentType="text/html; charset=gb2312" %>
<%@ page language="java" %>
<%
Integer count = null; 

//同步处理
synchronized (application) {
//从内存当中读取访问量
count = (Integer) application.getAttribute("basic.counter"); 
if (count == null) 
count = new Integer(0); 
count = new Integer(count.intValue() + 1);
//将访问量保存到内存当中
application.setAttribute("basic.counter", count);
}
%>
<html>
<head>
<title>简单计数器</title>
</head> 
<body> 
<center>
<font size=10 color=blue>简单计数器</font>
<br>
<hr>
<br>
<font size=5 color=blue>您好！您是本站的第 <%= count %> 位客人</font>
</center>
</body> 
</html>


<%@ page contentType="text/html; charset=GB2312" %>
<%@ page language="java" %>
<!-- 设置页面属性 -->
<%@ page info="这就是我们预设的网页属性, 这里我们可以
学习到page属性的设置与使用" %>

<HTML>
<HEAD>
<TITLE>设置页面属性</TITLE>
</HEAD>
<BODY>
<CENTER>
<FONT SIZE = 10 COLOR = BLUE>设置页面属性</FONT>
</CENTER>
<br>
<HR>
<br>
<!--获得设置的页面属性-->
<FONT SIZE = 5 COLOR = BLUE>
<%= getServletInfo() %>
</FONT>
</BODY>
</HTML> 


<%@ page contentType="text/html;charset=GB2312" %> 
<html>
<head>
<title> GB2312.jsp</title>
</head>
<body>
<h2>使用GB2312编码，无法正确显示某些中文字</h2>
<%
out.println("一个生僻的字：?");
%>
</body>
</html>


<%@ page contentType="text/html;charset=Big5" %>
<html>
<head>
<title> Big5.jsp</title>
</head>
<body>
<h2>ㄏノ Big5?????タ?陪ボ?ㄇいゅ?</h2>
<%
out.println("Щ??福そ?");
%>
</body>
</html>


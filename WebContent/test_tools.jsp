<%@ page contentType="text/html;charset=gb2312" import="java.util.*" %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="NetObjects ScriptBuilder 3.0">
<META HTTP-EQUIV="Content-Type" content="text/html; charset=iso-8859-1">
<TITLE>Document Title</TITLE>
</HEAD>
<BODY>
<center><font color=blue size=10 face="Á¥Êé">
<%
Date today = new Date();
int hours = today.getHours();
int minute = today.getMinutes(); 
if(hours>=0 && hours<12){
out.println("ÔçÉÏºÃ!");
}else{
out.println("ÏÂÎçºÃ!");
}

String[] weekdays = {"ÈÕ","Ò»","¶þ","Èý","ËÄ","Îå","Áù"};
out.println("\n½ñÌìÊÇ" + (today.getYear()+1900) + "Äê" + (today.getMonth()+1) + "ÔÂ" + (today.getDate()) + "ÈÕÐÇÆÚ" + weekdays[today.getDay()]);
//ÏÔÊ¾Ê±¼ä



//½¨Á¢´íÎó´¦ÀíÒ³ÃæµÄ·¶Àý³ÌÐò
ErrorPage.jsp
<%@ page contentType="text/html;charset=GB2312" errorPage="Error.jsp" %> 
<html>
<head>
<title>CH4 - ErrorPage.jsp</title>
</head>
<body>
<h2>errorPage µÄ·¶Àý³ÌÐò</h2>
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
Äú´«ÈëµÄÁ½¸öÊý×ÖÎª£º<%= num1 %> ºÍ <%= num2 %><br>
Á½ÊýÏà¼ÓÎª <%= (num1+num2) %>
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
<h2>errorPage µÄ·¶Àý³ÌÐò</h2>
<p>ErrorPage.jsp ´íÎó²úÉú£º<I><%= exception %></I></p><br>
<pre>
ÎÊÌâÈçÏÂ£º<% exception.printStackTrace(new PrintWriter(out)); %>
</pre>
</body>
</html>


//¼ÆÊýÆ÷ 
<%@ page contentType="text/html; charset=gb2312" %>
<%@ page language="java" %>
<%
Integer count = null; 

//Í¬²½´¦Àí
synchronized (application) {
//´ÓÄÚ´æµ±ÖÐ¶ÁÈ¡·ÃÎÊÁ¿
count = (Integer) application.getAttribute("basic.counter"); 
if (count == null) 
count = new Integer(0); 
count = new Integer(count.intValue() + 1);
//½«·ÃÎÊÁ¿±£´æµ½ÄÚ´æµ±ÖÐ
application.setAttribute("basic.counter", count);
}
%>
<html>
<head>
<title>¼òµ¥¼ÆÊýÆ÷</title>
</head> 
<body> 
<center>
<font size=10 color=blue>¼òµ¥¼ÆÊýÆ÷</font>
<br>
<hr>
<br>
<font size=5 color=blue>ÄúºÃ£¡ÄúÊÇ±¾Õ¾µÄµÚ <%= count %> Î»¿ÍÈË</font>
</center>
</body> 
</html>



//c:out±ê¼ÇÊä³ö
<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<head>
<title>CH3 - HelloJSP.jsp</title>
</head>
<body>
<h2>JSP ½«»á±»×ªÒëÎª Servlet</h2>
<%!
int k = 0;
%>

<c:out value="Hi" />
<%
String name = "browser";

out.println("´ó¼ÒºÃ !!");
%>
<%= name %>
</body>
</html>

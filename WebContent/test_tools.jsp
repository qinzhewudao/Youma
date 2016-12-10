//多种字体大小显示
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

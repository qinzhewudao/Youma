<%@ page language="java" contentType="text/html; charset=UTF-8"
 import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>my bid list</title>
</head>
<body>
    <pr></pr>
    <table >
    <s:iterator value="lista" var="c">
        <tr>
        <td>项目名：<s:property value="#c.projectname" /></a> </td>
        </tr>
        <tr>
        <td>发布者：<s:property value="#c.publisher" /></a> </td>
        </tr>
    </s:iterator>
    </table>
<div id="footer">Copyright by <a href = "index.jsp">codebeautifier</a></div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>my publish list</title>
</head>
<body>
    <table >
    <s:iterator value="lista" var="c">

        <tr>
        <td>项目名：<s:property value="#c.projectname"/> </td>
        </tr>
        <td>
        <a href = "mypublishbid?projectname=<s:property value="#c.projectname"/>">投标详情</a>
        </td>
    </s:iterator>
    </table>
<div id="footer">Copyright by <a href = "index.jsp">codebeautifier</a></div>
</body>
</html>
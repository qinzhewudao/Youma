<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

                    <s:if test="#session.username!=null" > 
                                欢迎你: <s:property value="#session.username" /> 
                            <ul> 
                                <li> 
                                    <a href="#">修改资料</a> 
                                     <a href="logout.action">安全退出</a> 
                                </li> 
                            </ul> 
                            </div> 
                    </s:if> 
                    <s:else> 
                        <div> 
                            <table> 
                                <tr> 
                                    <s:form action="login"> 
                                        <s:textfield label="用户名" name="username"></s:textfield> 
                                        <s:password label="密码" name="password"></s:password> 
                                        <s:submit value="登录"></s:submit>

                                    </s:form> 
                                </tr> 
                                <tr> 
                                    <td> 
                                        <a href="register.jsp">注册新用户</a> 
                                    </td> 
                                    <td> 
                                        <a href="#">忘记密码</a> 
                                    </td> 
                                </tr> 
                            </table> 
                        </div> 
                    </s:else>
</body>
</html>
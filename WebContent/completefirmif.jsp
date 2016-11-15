<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>请完善公司资料</title>
   <style type="text/css" media="screen">   
@import url("css/login.css");   
</style>  
  <link rel="stylesheet" type="text/css" href="css/mainpage.css">

   <script type="text/javascript" src="jquery.js"></script>
</head>
<div id="mainContainer">  
      <div id="Header">
      <div id="menu">
              <li><a href="personlist.jsp">找人</a></li>
                    <li ><a href="index.jsp">找项目</a></li>

                    <li><a href="index.jsp">查看需求</a></li>
                    <li><a href="checkfirmdata">发布需求</a></li>
                     <li><a href="personaldata.jsp">个人中心</a></li>
                    <li><a href="logout.action" >退出</a></li>
                </div>
                  
            </div> 

    <div class="message">完善公司方资料</div>
    <div id="center">
    <form action="completefirm">
    <table align="center">
    <tr>
    <td>公司名：<input type="text" name="firmname" /></td>
    </tr>
    <tr>
    <td>公司地址： <input type="text" name="firmaddress" /></td>
    </tr>
    <tr>
    <td>公司邮编： <input type="text" name="firmcode" /></td>
    </tr>
    <tr>
    <td>公司类型： <input type="text" name="firmmodel" /></td>
    </tr>
    <tr>
    <td>建立时间： <input type="text" name="firmtime" /></td>
    </tr>
    <tr align="center">
    <td colspan="6"><input type="submit" value="提交信息"/></td>
    </tr>
    </table>
    </form>
    </div>
<div id="footer">    
<div class="copyright">Copyright by codebeautifier</div>

</div>
</div>
</body>
</html>
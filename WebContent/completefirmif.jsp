<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>请完善公司资料</title>
</head>
<body style = "background:url('images/ocean-bg.jpg') no-repeat;">

    <div class="message">完善公司方资料</div>
    
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
    
<div class="copyright">Copyright by codebeautifier</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>请完善开发者资料</title>
</head>
<body style = "background:url('images/ocean-bg.jpg') no-repeat;">

    <div class="message">完善开发者资料</div>
    
    <form action="completeperson">
    <table align="center">
    <tr>
    <td>邮箱        ：<input type="text" name="useremail" /></td>
    </tr>
    <tr>
    <td>擅长领域： <input type="text" name="userskill" /></td>
    </tr>
    <tr>
    <td>联系电话： <input type="text" name="userphone" /></td>
    </tr>
    <tr>
    <td>所在地： <input type="text" name="useraddress" /></td>
    </tr>
    <tr>
    <td>身份证号： <input type="text" name="userid" /></td>
    </tr>
    <tr align="center">
    <td colspan="6"><input type="submit" value="提交信息"/></td>
    </tr>
    </table>
    </form>
    
<div class="copyright">Copyright by codebeautifier</div>

</body>
</html>
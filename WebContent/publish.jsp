<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>发布需求</title> 
<link href="css/login.css" type="text/css" rel="stylesheet"> 
<script language="javascript">
<<<<<<< HEAD
function firm(form)

{
 
        //利用对话框返回的值 （true 或者 false）
	if (form.projectname.value=="")
	{
	alert("项目名不能为空");
	return false;
	}
    if(confirm("你确信要发布该项目"))
 
    {
 
            //如果是true ，那么就把页面转向
 
        location.href="index.jsp";
 
     }
 
    else
 
    {
 
        //否则说明下了，赫赫
 
      alert("你按了取消，那就是返回false");
      return false;
 
    }
 
}
=======
>>>>>>> refs/remotes/origin/final_sy
</script>
</head> 
<body> 

<div class="login">
    <div class="message">发布需求</div>
    <div id="darkbannerwrap"></div>
    
    <form action="publish" method="post" id = "usrform">
    <table align="center">
    <tr>
    <td>项目名称：</td>
    <td><input type="text" name="projectname" placeholder="30字符以内"/></td>
    </tr>
    
    <tr></tr>
    
    <tr>
    <td>项目类型   ： </td>
    <td>
    <select name="projectstyle" id="select_k2" class="xla_k">
    <option value="网站开发">网站开发</option>
    <option value="HTML5应用">HTML5应用</option>
    <option value="移动开发">移动开发</option>
    <option value="微信应用">微信应用</option>
    </select>
    </td>
    </tr>
    
    <tr></tr>
    
    <tr>
    <td>开发平台   ： </td>
    <td>
    <select name="projectplat" id="select_k2" class="xla_k">
    <option value="java">JAVA</option>
    <option value="c/c++">C/C++</option>
    <option value="python">Python</option>
    <option value="other">Other</option>
    </select>
    </td>
    </tr>
    
    <tr></tr>

    <tr>
    <td>预计投资  (元) ： </td>
    <td><input type="text" name="projectprice" /></td>
    </tr>
    
   
    
    <tr>
    <td>项目描述   ： </td>
    <td >
        <input type="text" name="projectdescribe" 
        width="200" height="200"/>
    </td>
    </tr>
    
    <tr></tr>
 
    <tr align="center">
<<<<<<< HEAD
    <td colspan="2"><input type="submit" name="Submit2" value="发布需求" onclick="firm(usrform)" /></td>
=======
           <td colspan="2"><input type="submit" value="发布需求"/></td> 
   
>>>>>>> refs/remotes/origin/final_sy
    </tr>
    </table>
    </form>
    <textarea rows="4" cols="50" name="comment" form="usrform">项目描述：</textarea>
</div>

<div class="copyright">Copyright by <a href="index.jsp" target="_blank">code beautifier</a></div>

</body>
</html>
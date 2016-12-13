<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>404页面自动跳转</title>
<style>
*{margin:0;padding:0;outline:none;font-family:\5FAE\8F6F\96C5\9ED1,宋体;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;-khtml-user-select:none;user-select:none;cursor:default;font-weight:lighter;}
.center{margin:0 auto;}
.whole{width:100%;height:100%;line-height:100%;position:fixed;bottom:0;left:0;z-index:-1000;overflow:hidden;}
.whole img{width:100%;height:100%;}
.mask{width:100%;height:100%;position:absolute;top:0;left:0;background:#000;opacity:0.6;filter:alpha(opacity=60);}
.b{width:100%;text-align:center;height:400px;position:absolute;top:50%;margin-top:-230px}.a{width:150px;height:50px;margin-top:30px}.a a{display:block;float:left;width:150px;height:50px;background:#fff;text-align:center;line-height:50px;font-size:18px;border-radius:25px;color:#333}.a a:hover{color:#000;box-shadow:#fff 0 0 20px}
p{color:#fff;margin-top:40px;font-size:24px;}
#num{margin:0 5px;font-weight:bold;}
</style>
<script type="text/javascript">
    var num=5;
    function redirect(){
        num--;
        document.getElementById("num").innerHTML=num;
        if(num<0){
            document.getElementById("num").innerHTML=0;
            location.href="http://localhost:8080/software-engineering/index.jsp";
            }
        }
    setInterval("redirect()", 1000);
</script>
</head>

<body onLoad="redirect();">
 <div class="whole">
    <img src="images/slides/slide1.jpg" /> 
    <div class="mask"></div>
</div>
<div class="b">
        <!-- <img src="images/404.png" class="center"/>  -->
        <p>
              需求填写成功，后台会对您的需求进行审核<br>
              确定您的需求满足法律及使用条款后会将您<br>
              的需求发布到网页前端， 审核工作将在1-2个<br>
             工 作日完成，届时您可到个人中心我发布的<br>  
             需求处查看投标详情&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <br><br>           
            5秒后将为您跳转到主页<br>
            感谢您的配合，若还有疑问可联系客服<br>
            <span id="num"></span>秒后您可以联系客服咨询
        </p>
    </div>

</body>
</html>
        
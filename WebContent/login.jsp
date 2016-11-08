<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
    </head>
    <body>
        <div class="container">
            <div class="codrops-top">
                <span class="right">
                </span>
                <div class="clr"></div>
            </div>
            <section>               
                <div id="container_demo" >
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="login" autocomplete="on"> 
                                <h1>登陆</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" >用户名：</label>
                                    <input id="username" name="username" required="required" type="text" placeholder="qinzhewudao"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p">密码：</label>
                                    <input id="password" name="password" required="required" type="password" placeholder="1140310324" /> 
                                </p>
                                <p class="keeplogin"> 
                                    <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
                                    <label for="loginkeeping">记住密码</label>
                                </p>
                                <p class="login button"> 
                                    <input type="submit" value="登陆" /> 
                                </p>
                                <p class="change_link">
                                    还无账号？
                                    <a href="#toregister" class="to_register">加入我们</a>
                                </p>
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  action="regist" autocomplete="on"> 
                                <h1>注册</h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">用户名：</label>
                                    <input id="usernamesignup" name="username" required="required" type="text" placeholder="qinzhewudao" />
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">密码：</label>
                                    <input id="passwordsignup" name="password" required="required" type="password" placeholder="1140310324"/>
                                </p>
                                <p class="signin button"> 
                                    <input type="submit" value="注册"/> 
                                </p>
                                <p class="change_link">  
                                    已经有账户？
                                    <a href="#tologin" class="to_register">马上登陆</a>
                                </p>
                            </form>
                        </div>
                        
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>
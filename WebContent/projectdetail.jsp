<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page import="dao.ProjectDao"%>
<%@page import="com.ProjectAction"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn" class="no-js">
		<head>
		<meta charset="utf-8">
		<meta name="keywords" content="Java开发工程师，简历模板，在线制作，免费下载" />
		<meta name="description" content="本人做事稳重，对待工作认真，责任心较强，待人真诚，善于沟通，时刻保持学习，积极拥抱变化。喜

欢java 开发，具备一定的软件分析、设计、开发和应用能力，拥有较强的学习能力与团队精神，能够

很快的适应工作环境。" />
		<title>项目详情</title>
		<link rel="stylesheet" type="text/css" href="css/style2.css" />
		<link rel="stylesheet" type="text/css" href="css/new.css" media="all"/>
		<link rel="stylesheet" href="css/bootstrap.min.css?v=2159" />
		<link rel="stylesheet" href="css/zxbj_base.css?v=2818" />
		<link rel="stylesheet" href="css/jm0203.css" />
		<style> 
.m-nav-ul .nav_li:nth-child(3) a.erji_a {
	color: #F66000;
}
.m-nav-ul .nav_li:nth-child(3) a.triangle {
	border-color: #F66000;
}
.m-top_user li a {
	box-sizing: content-box;
	-moz-box-sizing: content-box;
	-webkit-box-sizing: content-box;
}
.m-erjinav-ul {
	margin-top: 25px;
}
</style>
</head>

<body style="height:auto;background:#f8f8f8;">

<div class="n_dispage_jm">
          <div class="n_dispage_jm_in resetEditStyle"> 
    
    <!--编辑区域-->
     <form action = "checkpersondata" method = "post">
     <% 
             ProjectDao itemDao = new ProjectDao();
             String str = new String(request.getParameter("projectname").getBytes("iso-8859-1"), "utf-8"); 
             ProjectAction item = itemDao.getProjectActionByname(str);
             if(item!=null)
             {

          %>   
        <div class="baseStyle clearfix jm0203_j1" id="resume_body">
              <div class="divLeft clearfix" id="bar"> 
        
        <!--头像-->
        
        <div data-toggle="modal" data-target="#myModalHead" class="headDiv" id="resume_head"> <img class="resume_head" src="images/default_head.png" height="200" /> </div>
    
        
        <!--基本信息-->
        
        <div class="msgDiv positonDiv resume_add_area resume_sort" id="resume_msg">
                 
                  <div class="baseAge baseMsg baseDel" id="resume_age"> 
                 <!--  就是这个div的位置 在这里写的数据 会出现在左边栏 -->
                
                                                                                  发布者    :<br><input type="text"  name="publisher" readonly value = <%=item.getPublisher()%>><br><br>                                                                            
                                                                                  开发平台:<br><%=item.getProjectplat()%><br><br>
                                                                                  项目类型:<br><%=item.getProjectstyle()%><br><br>
          </div>
                </div>
      
     
      </div>
      <!--姓名、求职意向-->
              <div class="divRight clearfix resume_main" id="foo"> 
        
        
        
        <div class="nameDiv positonDiv" id="resume_name">
    <!--     项目名位置 -->
                  <h1>
          <div class="resume_msg baseBorder resume_notice resume_lang_name" notice-key="msg" for-key="name" for-value="html" contenteditable="true">项目名：<br><input type="text"  name="projectname" readonly value = <%=item.getProjectname()%>></div>
          <input type="submit" value="投标"  style=" color:red;" /></h1>               
          </div>
        <div id="foo_sort"></div>
        
     
        
        <!--项目描述-->
        
        <div class="selfDiv baseItem positonDiv resume_item resume_sort resume_notice" notice-key="self" id="resume_self" for-key="self">
             
                  <dl>
            <dt> <a class="resume_icon_diy icon wbdfont" for-id="self" style="font-size:none"></a> <span><!-- 加粗作用 -->
              <div class="resume_lang_self">项目描述</div>
              <div class="Border resume_line" for-id="self" style="width:668px;border-top-style:solid;border-top-width:2px;"></div><!-- 下划线 -->
              </dt>
            <dd>
                      
                            <br><br><p><%=item.getProjectdescribe()%></p>
                       
                       
                          
                       
             
                    </dd>
          </dl>
                </div>
           <!--END项目描述-->
           <!--项目金额-->
        
        <div class="selfDiv baseItem positonDiv resume_item resume_sort resume_notice" notice-key="self" id="resume_self" for-key="self">
             
                  <dl>
            <dt> <a class="resume_icon_diy icon wbdfont" for-id="self" style="font-size:none"></a> <span><!-- 加粗作用 -->
              <div class="resume_lang_self">项目金额</div>
              <div class="Border resume_line" for-id="self" style="width:668px;border-top-style:solid;border-top-width:2px;"></div><!-- 下划线 -->
              </dt>
            <dd>
                      <br><br><p>  预计价格:<%=item.getProjectprice()%>￥<br><br> </p>
                   
                       
                       
                          
                       
             
                    </dd>
          </dl>
                </div>
           <!--END项目描述-->
            <!--发布方介绍-->
        
        <div class="selfDiv baseItem positonDiv resume_item resume_sort resume_notice" notice-key="self" id="resume_self" for-key="self">
             
                  <dl>
            <dt> <a class="resume_icon_diy icon wbdfont" for-id="self" style="font-size:none"></a> <span><!-- 加粗作用 -->
              <div class="resume_lang_self">发布时间</div>
              <div class="Border resume_line" for-id="self" style="width:668px;border-top-style:solid;border-top-width:2px;"></div><!-- 下划线 -->
              </dt>
            <dd>
                  <br><br><p>  发布日期:<%=item.getPublishdate()%><br><br> </p>
                
                       
                       
             
                    </dd>
          </dl>
                </div>
           <!--END项目描述-->
            <!--发布方介绍-->
        
        <div class="selfDiv baseItem positonDiv resume_item resume_sort resume_notice" notice-key="self" id="resume_self" for-key="self">
             
                  <dl>
            <dt> <a class="resume_icon_diy icon wbdfont" for-id="self" style="font-size:none"></a> <span><!-- 加粗作用 -->
              <div class="resume_lang_self">工期要求</div>
              <div class="Border resume_line" for-id="self" style="width:668px;border-top-style:solid;border-top-width:2px;"></div><!-- 下划线 -->
              </dt>
            <dd>
                  <br><br><p>  deadline :<%=item.getProjecttime()%><br><br> </p>
                
                                           
                    </dd>
          </dl>
                </div>
           <!--END项目描述-->

      </div>
          <% 
            }

          %> 

      </form>

            </div>
  </div>
  <div class="copyright">Copyright by <a href="index.jsp" target="_blank">code beautifier</a></div>     
</body>
</html>
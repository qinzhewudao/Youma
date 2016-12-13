<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="zh-cn" class="no-js">
<head>
<meta charset="utf-8">
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
 <div class="baseStyle clearfix jm0203_j1" id="resume_body">
              <div class="divLeft clearfix" id="bar"> 
        
        <!--头像-->
        
        <div data-toggle="modal" data-target="#myModalHead" class="headDiv" id="resume_head"> <img class="resume_head" src="img/authors/1.png" height="200" /> </div>
    
        
        <!--基本信息-->
        
        <div class="msgDiv positonDiv resume_add_area resume_sort" id="resume_msg">
                 
                  <div class="baseAge baseMsg baseDel" id="resume_age"> 
                 <!--  就是这个div的位置 在这里写的数据 会出现在左边栏 -->	

			
				
			
	
                    用户名：<%=request.getAttribute("username")%> <br><br>
                   预估薪资： <%=request.getAttribute("userprice")%>$/8hour<br><br>
                   工作经验：<%=request.getAttribute("userworkexperience")%>年<br><br>
                

						 
				
  </div>
                </div>
      
     
      </div>
      <!--姓名、求职意向-->
        <div class="divRight clearfix resume_main" id="foo"> 
      
        
        
        <div class="nameDiv positonDiv" id="resume_name">
    <!--     用户职位位置 -->
                  <h1>
            <div class="resume_msg baseBorder resume_notice resume_lang_name" notice-key="msg" for-key="name" for-value="html" contenteditable="true">用户职位：<%=request.getAttribute("userposition")%></div>
          </h1>               
                </div>
        <div id="foo_sort"></div>
       
        <!--擅长领域-->
        
        <div class="selfDiv baseItem positonDiv resume_item resume_sort resume_notice" notice-key="self" id="resume_self" for-key="self">
             
                  <dl>
            <dt> <a class="resume_icon_diy icon wbdfont" for-id="self" style="font-size:none"></a> <span><!-- 加粗作用 -->
              <div class="resume_lang_self">擅长领域</div>
              <div class="Border resume_line" for-id="self" style="width:668px;border-top-style:solid;border-top-width:2px;"></div><!-- 下划线 -->
              </dt>
            <dd>
                      
                              擅长领域 ：<%=request.getAttribute("userskill")%><br><br>             
                    </dd>
          </dl>
                </div>
             <!--    END 擅长领域 -->      
              <!--从业经历-->
        
        <div class="selfDiv baseItem positonDiv resume_item resume_sort resume_notice" notice-key="self" id="resume_self" for-key="self">
             
                  <dl>
            <dt> <a class="resume_icon_diy icon wbdfont" for-id="self" style="font-size:none"></a> <span><!-- 加粗作用 -->
              <div class="resume_lang_self">就业经历</div>
              <div class="Border resume_line" for-id="self" style="width:668px;border-top-style:solid;border-top-width:2px;"></div><!-- 下划线 -->
              </dt>
            <dd>
                      
            <p><%=request.getAttribute("usercompany")%><br><br></p>         
                    </dd>
          </dl>
                </div>
             <!--    END 项目描述 -->      
        <!--项目描述-->
        
        <div class="selfDiv baseItem positonDiv resume_item resume_sort resume_notice" notice-key="self" id="resume_self" for-key="self">
             
                  <dl>
            <dt> <a class="resume_icon_diy icon wbdfont" for-id="self" style="font-size:none"></a> <span><!-- 加粗作用 -->
              <div class="resume_lang_self">项目经验</div>
              <div class="Border resume_line" for-id="self" style="width:668px;border-top-style:solid;border-top-width:2px;"></div><!-- 下划线 -->
              </dt>
            <dd>
                      
                           
                    
                  <p> 项目经验：<%=request.getAttribute("userdescribe")%><br></p>
                     
                         
                       
             
                    </dd>
          </dl>
                </div>
             <!--    END 项目描述 -->
             
       

      </div>
       </div>
  </div>
        </div>
        
	
<div class="copyright">Copyright by <a href="index.jsp" target="_blank">code beautifier</a></div>	
</body>
</html>
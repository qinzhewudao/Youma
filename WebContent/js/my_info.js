$(document).ready(function(){
 
});

var win = window.opener; // 表示打开本window的那个页面的window 
function listClick(value){
	if(value == 1){
		$("#crowdfunding_iframe", window.parent.document).attr("src","crowdfunding.center/my_info.jsp");
		$("#crowdfunding_iframe", window.parent.document).attr("height",1045);
		$("#listClick1", window.parent.document).attr("class","menu_list_on");
		$("#listClick3", window.parent.document).attr("class","");
		$("#listClick4", window.parent.document).attr("class","");
	}
	if(value == 3){
		$("#crowdfunding_iframe", window.parent.document).attr("src","crowdfunding.center/identity_prove.jsp");
		$("#crowdfunding_iframe", window.parent.document).attr("height",1045);
		$("#listClick1", window.parent.document).attr("class","");
		$("#listClick3", window.parent.document).attr("class","menu_list_on");
		$("#listClick4", window.parent.document).attr("class","");
	}
	if(value == 4){
		$("#crowdfunding_iframe", window.parent.document).attr("src","crowdfunding.center/make_password.jsp");
		$("#crowdfunding_iframe", window.parent.document).attr("height",1045);
		$("#listClick1", window.parent.document).attr("class","");
		$("#listClick3", window.parent.document).attr("class","");
		$("#listClick4", window.parent.document).attr("class","menu_list_on");
	}
	if(value == 8){
		$("#crowdfunding_iframe", window.parent.document).attr("src","crowdfunding.center/my_account.jsp");
		$("#crowdfunding_iframe", window.parent.document).attr("height",1045);
		$("#listClick8", window.parent.document).attr("class","menu_list_on");
		$("#listClick9", window.parent.document).attr("class","");
		$("#listClick10", window.parent.document).attr("class","");
	}
	if(value == 9){
		$("#crowdfunding_iframe", window.parent.document).attr("src","crowdfunding.center/investment_inquiry.jsp");
		$("#crowdfunding_iframe", window.parent.document).attr("height",1045);
		$("#listClick8", window.parent.document).attr("class","");
		$("#listClick9", window.parent.document).attr("class","menu_list_on");
		$("#listClick10", window.parent.document).attr("class","");
	}
	if(value == 10){
		$("#crowdfunding_iframe", window.parent.document).attr("src","crowdfunding.center/apply_refund.jsp");
		$("#crowdfunding_iframe", window.parent.document).attr("height",1045);
		$("#listClick8", window.parent.document).attr("class","");
		$("#listClick9", window.parent.document).attr("class","");
		$("#listClick10", window.parent.document).attr("class","menu_list_on");
	}
	if(value == 11){
		$("#crowdfunding_iframe", window.parent.document).attr("src","crowdfunding.center/grade_integration.jsp");
		$("#crowdfunding_iframe", window.parent.document).attr("height",2000);
		$("#vertical_navigation", window.parent.document).css("height","2005px");
		$("#listClick11", window.parent.document).attr("class","menu_list_on");
		$("#listClick12", window.parent.document).attr("class","");
		$("#listClick13", window.parent.document).attr("class","");
	}
	if(value == 12){
		$("#crowdfunding_iframe", window.parent.document).attr("src","crowdfunding.center/integration_record.jsp");
		$("#crowdfunding_iframe", window.parent.document).attr("height",1045);
		$("#listClick11", window.parent.document).attr("class","");
		$("#listClick12", window.parent.document).attr("class","menu_list_on");
		$("#listClick13", window.parent.document).attr("class","");
	}
	if(value == 13){
		$("#crowdfunding_iframe", window.parent.document).attr("src","crowdfunding.center/integration_rule.jsp");
		$("#crowdfunding_iframe", window.parent.document).attr("height",1045);
		$("#listClick11", window.parent.document).attr("class","");
		$("#listClick12", window.parent.document).attr("class","");
		$("#listClick13", window.parent.document).attr("class","menu_list_on");
	}
}
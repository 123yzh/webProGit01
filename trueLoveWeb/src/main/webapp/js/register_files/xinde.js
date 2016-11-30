var tip_msg_corner='<span  class="angle1"></span><span class="angle2"></span><span class="radius1"></span><span class="radius2"></span><span class="radius3"></span><span class="radius4"></span>';
var tip_common_msg='此项注册后不可更改，请慎重填写'+tip_msg_corner;
var validateEmail=function(){
	$("regMail .correct").remove();
	$("#validateemailID").removeClass("tip_msg3").hide();
	if(!this.value){
		this.value='4-16个字母或数字组成'+tip_msg_corner;
	}
	var email=$.trim(document.getElementById("email").value);
	if(email.length>100){
		$("#validateemailID").html('邮箱长度不能大于100个字符。'+tip_msg_corner);
		$("#validateemailID").addClass("tip_msg3").show();
		return false;
	}if(email==""||email=='请输入常用邮箱'){
		$("#validateemailID").html('').hide();
		return false;
	}else{
	  if(email.indexOf(" ")!=-1) {   
		  	document.getElementById("validateemailID").innerHTML="Email中不能含有空格。"+tip_msg_corner;
			$("#validateemailID").addClass("tip_msg3").show();
		 	return false;  
	  	}  
	}
	if(!CheckEmail(email)){//邮箱格式不正确
		document.getElementById("validateemailID").innerHTML="Email格式错误，请重新输入。"+tip_msg_corner;
		$("#validateemailID").addClass("tip_msg3").show();
		return false;
	}
	if (email.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) == -1)	{
	    document.getElementById("validateemailID").innerHTML="Email格式错误，请重新输入。"+tip_msg_corner;
		$("#validateemailID").addClass("tip_msg3").show();
	    return false;
	}
	$.ajax({
		url:'/register/validateemail.jsps',
		data:{email:email,d:Math.random()},
		type:'get',
		dataType:"text",
		success:validateEmailReturnInfo
	});
}

var showEmailHint=function(){
	$("#regMail .correct").remove();
	$("#validateemailID").removeClass("tip_msg3").html('请填写常用邮箱。'+tip_msg_corner);
	$("#validateemailID").show();
}

var validateEmailReturnInfo=function(responseStr){
	$("#regMail .correct").remove();
	$("#validateemailID").removeClass("tip_msg3").hide();
	document.getElementById("doublemail").value="";
	var str=responseStr;
	var prompt="";
	if("yes"==str){
		prompt="该邮箱已被使用。";
		document.getElementById("doublemail").value="doublemail";
		$("#validateemailID").addClass("tip_msg3").html(prompt+tip_msg_corner).show();
	}
	if("no"==str){
		prompt='';
		$("#validateemailID").after(correct_msg);
	}
	if("tono"==str){
		prompt="邮箱格式错误。";
		$("#validateemailID").addClass("tip_msg3").html(prompt+tip_msg_corner).show();
	}
}

var checkPwd=function(obj){
	$("#regPassword .correct").remove();
	$("#pwdtip").removeClass("tip_msg3").hide();
	var pwd = obj.value;
	if(pwd==''){
		document.getElementById("pwdtip").innerHTML = "请输入密码"+tip_msg_corner;
		$("#pwdtip").addClass("tip_msg3").show();
		return false;
	}
	if(pwd.length<6){
		document.getElementById("pwdtip").innerHTML = "密码少于6个字符。"+tip_msg_corner;
		$("#pwdtip").addClass("tip_msg3").show();
		return false;
	}else if(pwd.length>20){
		document.getElementById("pwdtip").innerHTML = "密码多于20个字符。"+tip_msg_corner;
		$("#pwdtip").addClass("tip_msg3").show();
		return false;
	}
	document.getElementById("pwdtip").innerHTML = "";
	$("#pwdtip").after(correct_msg);
}
var showPasswordHint=function(){
	$("#regPassword .correct").remove();
	$("#pwdtip").removeClass("tip_msg3").hide();
	$("#pwdtip").html('请输入6-20位数字或字母。'+tip_msg_corner);
	$("#pwdtip").show();
}
var showNickNameHint=function(){
	$("#regNickName .correct").remove();
	$("#validatenicknameID").removeClass("tip_msg3").hide();
	$("#validatenicknameID").html('取一个您喜欢的昵称，支持4-16位中英文。'+tip_msg_corner);
	$("#validatenicknameID").show();
}
var showMobileHint=function(){
	$("#regMobile .correct").remove();
	$("#checkMobileResult").removeClass("tip_msg3").hide();
	if($("#regType").val() == "phone"){
		$("#checkMobileResult").html('可直接使用手机号登录，号码绝不会被公开。'+tip_msg_corner);
	}else{
		$("#checkMobileResult").html('让您可免费获得网站征婚进展的提醒短信。'+tip_msg_corner);
	}
	$("#checkMobileResult").show();
}
var realCheckMobile=function(thiz){
	$("#checkMobileResult").removeClass("tip_msg3").html('').hide();
	var result=checkMobile(thiz,function(){});
	if($(thiz).val()==''){		
		$("#checkMobileResult").html('请输入手机号码'+tip_msg_corner);
		$("#checkMobileResult").addClass("tip_msg3").show();
	}else if($(thiz).val().length!=11){
		$("#checkMobileResult").html('手机号码长度错误，请确认'+tip_msg_corner);
		$("#checkMobileResult").addClass("tip_msg3").show();	
	}else if(result==false){
		$("#checkMobileResult").html('手机号码错误'+tip_msg_corner);
		$("#checkMobileResult").addClass("tip_msg3").show();
	}else{
		$.ajax({
			url:'/register/validateMobile.jsps',
			data:{mobile:thiz.value,d:Math.random()},
			dataType:"text",
			type:'get',
			success:function(result){				
				if("yes"==result){
					$("#checkMobileResult").after(correct_msg);
					$('#invalidateMobile').val('');
				}else if("no"==result){
					$("#checkMobileResult").html('手机号码错误。'+tip_msg_corner);;
					$("#checkMobileResult").addClass("tip_msg3").show();
					$('#invalidateMobile').val('true');
				}else if("exist"==result){
					$("#checkMobileResult").html('该手机号码已被使用。'+tip_msg_corner);;
					$("#checkMobileResult").addClass("tip_msg3").show();
					$('#invalidateMobile').val('true');
				}
			}
		});
	}
}

function writeLogNot(channlid,module){
 	return;
}


var workCityTemp,workProvinceTemp=null;
/*if workCity is not null
 * 
if(!!workCityTemp && workCityTemp.length > 0){
	registerCity = workCityTemp;
}*/
//if workProvince is not null
if(!!workProvinceTemp && workProvinceTemp.length > 0){
	registerCity = workProvinceTemp;
}
//get value by cookie
else{
	var cookie = document.cookie;
	var r = /\^~registerCity=(.+?)\^~;/;
	var find = r.test(cookie);
	if(!!find){
		var cookieTemp = RegExp.$1;
		if(!!cookieTemp && cookieTemp.length > 0){
			registerCity = cookieTemp;
		}
	}	
}

function showSexTip(){
	$("#sexDiv").removeClass("tip_msg3").html(tip_common_msg).css("display","");
} 
function removeSexTip(){
	$("#sexDiv").css("display","none");
} 

function strLength(s){
	return  s.replace(/[^\x00-\xff]/gi,'hi').length;
}
function textCounter(field,countfieldId,leavingsfieldId,maxlimit) {
    var countfield = document.getElementById(countfieldId);
    var leavingsfield = document.getElementById(leavingsfieldId);
	if (field.value.length > maxlimit) {// if too long...trim it!
	  field.value = field.value.substring(0, maxlimit);
	  alert(" 限" + maxlimit + "字内！");
	} else { 
	  leavingsfield.innerHTML=maxlimit - field.value.length;
	  countfield.innerHTML=field.value.length;
	}
} 
function channelCheckForm() {
	var year = document.getElementById("register_dateFormYear");
	var month = document.getElementById("register_dateFormMonth");
	var day = document.getElementById("register_dateFormDay"); 
	var workProvince = document.getElementById("areaFormWorkProvince");
	var workCity = document.getElementById("areaForm_workCity1");
	var regworkDistrict = document.getElementById("regworkDistrict"); 

	var mobile = document.getElementById("mobile");
	var marriage1 = document.getElementById("marriage1");
	var education1 = document.getElementById("education1");
	var height1 = document.getElementById("height1");
	var salary1 = document.getElementById("salary1");

	var hasFocus=false;
	var hasTopFocus=false;
	
	if(year.value=='-1'||year.value==''){
		$(year).siblings('.tip_msg').addClass('tred').html("您忘记选择“生日”这项了。"+tip_msg_corner).show();
		if(!hasFocus){hasFocus=true;}
	}
	if(month.value=='-1'||month.value==''){
		$(month).siblings('.tip_msg').addClass('tred').html("您忘记选择“生日”这项了。"+tip_msg_corner).show();
		if(!hasFocus){hasFocus=true;}
	}
	if(day.value=='-1'||day.value==''){
		$(day).siblings('.tip_msg').addClass('tred').html("您忘记选择“生日”这项了。"+tip_msg_corner).show();
		if(!hasFocus){hasFocus=true;}
	}
	if(month.value=='2'&&(day.value=='30'||day.value=='31')){
		$(day).siblings('.tip_msg').addClass('tred').html("请您填写正确的出生日期。"+tip_msg_corner).show();
		if(!hasFocus){hasFocus=true;}
	}
	if(education1.value=='-1') {
		$(education1).siblings('.tip_msg').addClass('tred').html("您忘记选择“学历”这项了。"+tip_msg_corner).show();
		if(!hasFocus){hasFocus=true;}
	}
	if(salary1.value=='-1') {
		$(salary1).siblings('.tip_msg').addClass('tred').html("您忘记选择“收入”这项了。"+tip_msg_corner).show();
		if(!hasFocus){hasFocus=true;}
	}
	if(height1.value=='-1') {
		$(height1).siblings('.tip_msg').addClass('tred').html("您忘记选择“身高”这项了。"+tip_msg_corner).show();
		if(!hasFocus){hasFocus=true;}
	}
	if(marriage1.value=='-1') {
		$(marriage1).siblings('.tip_msg').addClass('tred').html("您忘记选择“婚姻状况”这项了。"+tip_msg_corner).show();
		if(!hasFocus){hasFocus=true;}
	}
	if(!$('#mysex_0').attr('checked') && !$('#mysex_1').attr('checked')){
		$('#mysex_0').siblings('.tip_msg').addClass('tred').html("您忘记选择“性别”这项了。"+tip_msg_corner).show();
		if(!hasFocus){hasFocus=true;}
	}
	
	
	if(syscode.cityFloorValue(workCity.value)==false){
		$(workCity).siblings('.tip_msg').addClass('tred').html("请选择具体工作地区。"+tip_msg_corner).show();
		if(!hasFocus){hasFocus=true;}
	}
	
	if(workProvince.value=='-1'||workProvince==''){
		$(workProvince).siblings('.tip_msg').addClass('tred').html("请选择工作所在的省份。"+tip_msg_corner).show();
		if(!hasFocus){hasFocus=true;}
	}
	if(hasFocus){
		hasTopFocus=true;		
	}	
	if(hasFocus){
		if(hasTopFocus){
			window.scrollTo('0','0');
		}		
		return false;
	}
	writeLogNot(9,1);
	return true;
}

$(function(){
	$("#divBaseInfo .has_tip:not(:radio)").focus(function(){
		var $this = $(this);
		var id = $this.prop("id");
		if(id == "education"){
			$("#regworkCity").blur();
		}
		$(this).siblings("div.tip_msg").removeClass("tip_msg3").html(tip_common_msg).show();
	}).blur(function(){
		$(this).siblings("div.tip_msg").hide();
	});
	$("#mysex_0,#mysex_1").click(function(){
		$(this).focus();
	}).focus(function(){
		var divTip = $("#sexDiv");
		divTip.removeClass("tip_msg3").html(tip_common_msg).show();
	}).blur(function(){
		var divTip = $("#sexDiv");
		divTip.hide();
	});
	//Others
	$("#register_dateFormYear,#register_dateFormMonth,#register_dateFormDay").blur(function(){
		var register_dateFormYear_value =document.getElementById("register_dateFormYear").value;
		var register_dateFormMonth_value =document.getElementById("register_dateFormMonth").value;
		var register_dateFormDay_value =document.getElementById("register_dateFormDay").value;
		if("-1" == register_dateFormYear_value || "-1" == register_dateFormMonth_value || "-1" == register_dateFormDay_value){
			$(this).siblings("div.tip_msg").addClass("tred").html("请选择“生日”" + tip_msg_corner).show();
		}else{
			$(this).siblings("div.tip_msg").hide();
		}
	});
	$("#regworkDistrict,#regworkCity,#regworkProvince").blur(function(){
		var workCity = $("#areaForm_workCity1").val();
		if(syscode.cityFloorValue(workCity)==false){
			$(this).siblings("div.tip_msg").addClass('tred').html("请选择具体工作地区。"+tip_msg_corner).show();
		}else{
			$(this).siblings("div.tip_msg").hide();
		}
	});
	$("#marriage1,#education1,#salary1,#house,#children,#height1").blur(function(){
		var $this = $(this);
		var id = $this.attr("id");
		if($this.attr("value")=="-1"){
			$(this).siblings("div.tip_msg").addClass("tred").html(errorTip[id][0] + tip_msg_corner).show();
		}else{
			$this.siblings("div.tip_msg").hide();
		}
	});
	var errorTip = {
	"marriage1" : ["请选择“婚姻状况”"],
	"education1" : ["请选择“学历”"],
	"salary1" : ["请选择“月收入”"],
	"house" :  ["请选择“住房条件”"],
	"children" : ["请选择“有无孩子”"],
	"height1" : ["请选择“身高”"]
	}

	$('#agree').click(function(){
		if(document.getElementById("agree").checked){
			$('#agree').siblings('.tip_msg').hide();
		}else{
			$('#agree').siblings('.tip_msg').addClass('tip_msg3').html("请阅读和同意左侧条款。"+tip_msg_corner).show();
		}
	});
	if($("#regType").val() == "phone"){
		$("#regMail").hide();
		$("#regMail").after($("#regMobile"));
		$("#regMobileTitle").html("注册手机：");
		$("#toMailRegTypeDiv").show();
	}else{
		$("#regMail").show();
		$("#regNickName").after($("#regMobile"));
		$("#regMobileTitle").html("手&nbsp;&nbsp;&nbsp;&nbsp;机：");
		$("#toMailRegTypeDiv").hide();
	}
	
	$("#toMailRegType").click(function(){
		$("#regMail").show();
		$("#regNickName").after($("#regMobile"));
		$("#regMobileTitle").html("手&nbsp;&nbsp;&nbsp;&nbsp;机：");
		$("#toMailRegTypeDiv").hide();
		$("#regType").val("mail");
	});
	
	$("#toPhoneRegType").click(function(){
		$("#regMail").hide();
		$("#regMail").after($("#regMobile"));
		$("#regMobileTitle").html("注册手机：");
		$("#toMailRegTypeDiv").show();
		$("#regType").val("phone");
	});
	
});
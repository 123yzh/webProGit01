<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>love</title>
<meta name="keywords" content="婚恋交友，网络征婚，爱约，专业红娘一对一牵线">
<meta name="description"
	content="爱约是华中地区成功率高的征婚网站，为单身男女提供免费一对一红娘服务!使天下有情人终成眷属。">
	
<script src="./js/register_files/jquery.js" type="text/javascript"></script>
<script src="./js/register_files/jquery(1).js" type="text/javascript"></script>
<script src="./js/register_files/regqq.js" type="text/javascript"></script>
<script src="./js/register_files/diqu.js" type="text/javascript"></script>
<script src="./js/register_files/xinde.js" type="text/javascript"></script>
<script src="./js/register_files/xinde(1).js" type="text/javascript"></script>
<script src="./js/register_files/xinn.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.js"></script>

<link type="text/css" rel="stylesheet"
	href="./css/register_files/landing.css">
<link type="text/css" rel="stylesheet"
	href="./css/register_files/public.css">

<script src="./js/register_files/base.js" type="text/javascript"></script>
<script src="./js/register_files/ga.js" type="text/javascript"></script>
<!--
<script src="./jes/register_files/hm.js" type="text/javascript"></script>
<script charset="utf-8" src="./images/register_files/v.js"></script>-->
<script src="./js/register_files/jquery(2).js" type="text/javascript"></script>
<script src="./js/register_files/jquery-1.js" type="text/javascript"></script>
<script src="./js/register_files/ProCities.js" type="text/javascript"></script>
<!-- 
<script src="./images/register_files/ProCities(1).js" type="text/javascript"></script>-->
<script src="./js/register_files/landing.js" type="text/javascript"></script>

<script type="text/javascript">
	var l_current_pc = l_judge_current_pc2('10106000', '10106001') || [ 0, 1 ];
	function o(id) {
		return document.getElementById(id);
	}
	function getRandomNum(lbound, ubound) {
		return (Math.floor(Math.random() * (ubound - lbound)) + lbound);
	}
	$(function() {
		//var province =remote_ip_info.province;
		//var city=remote_ip_info.city;
		//alert(province+" "+city);
		//if (province == "") {
		$("#workprovincereg_txt").val("");
		$("#workcity_txt").val("");
		// } else {
		//$("#workprovincereg_txt").val(province);
		//$("#workcity_txt").val(city);                    
		//}
	});
	/*--获取网页传递的参数--*/
	function request(paras) {
		var url = location.href;
		var paraString = url.substring(url.indexOf("?") + 1, url.length).split(
				"&");
		var paraObj = {}
		for (i = 0; j = paraString[i]; i++) {
			paraObj[j.substring(0, j.indexOf("=")).toLowerCase()] = j
					.substring(j.indexOf("=") + 1, j.length);
		}

		var returnValue = paraObj[paras.toLowerCase()];

		if (typeof (returnValue) == "undefined") {
			return "";
		} else {
			return returnValue;
		}
	}
	function checkForm() {
		var code = o("codeId");	
	
		var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
		var reg = /^1[3|5|8|4|9]\d{9}$/;

		/************ form start ssy  2012-11-05 ****************/
		var st = request('st');
		var sid = request('sid');
		var tid = request('tid');
		var wf = request('wf');
		if (sid > 0 && st > 0) {
			var action = $("#example1").attr('action');
			action = action + '&st=' + st + '&sid=' + sid;

			if (tid != '') {
				action = action + '&tid=' + tid;
			}

			if (wf != '') {
				action = action + '&wf=' + wf;
			}

			$("#example1").attr('action', action);

		}
		/************ form end ssy *********************/
		//alert(code);
		var email = o("emailId");
		var year = o("year");
		var month = o("month");
		var day = o("day");
		var workProvince = o("workprovincereg");
		var workCity = o("workcity");
		var year_txt = o("year_txt");
		var month_txt = o("month_txt");
		var day_txt = o("day_txt");
		var workProvince_txt = o("workprovincereg_txt");
		var workCity_txt = o("workcity_txt");
		var marriage = o("marriage");
		var education = o("education");
		var salary = o("salary");
		var height = o("height");
		var mysex1 = o("gender1");
		var mysex2 = o("gender0");
		var agree = o("agree");
		var actio = o("actio");
		var pwd2 = o("password2");
		var telphone = o('telphone');
		var uname = o("usernameId");//用户名
		var pwd = o("upwd");//用户密码
		var repwd = o("urepwd");//用户重置密码
		//测试
		/*
			获得用户输入的值
		 */
		//获取性别
		//var sex_value=$("#gender1").val();
		//获取省份
		//var workProvince_txt_value=$("#workprovincereg_txt").val();
		//获取城市
		//var workCity_txt_value=$("#workcity_txt").val();
		//alert(sex_value+" "+workProvince_txt_value+" "+workCity_txt_value);
		/*
			测试:
				[1,0,'北京','bj',10102000],alert(_location[0][2]);
		 */
		if(uname.value==""){
			alert("用户名不能为空!");
			return false;//阻止继续运行
		}else if(!(/^(([\u4e00-\u9fa5])+|[\w]+){2,16}$/).test(uname.value)){
			alert("请输入2-16位字符的用户名!");
			return false;
		}
		if(pwd.value==''){
			alert("密码不能为空!");
			return false;
			//匹配中文字符和非中文字符的字符型表达式
		}else if(!(/^(([\u4e00-\u9fa5])+|[\w]+){6,16}$/).test(pwd.value)){
			alert("请输入6-16位字符的密码!");
			return false;
		}
		if(repwd.value==''){
			alert("密码不能为空!");
			return false;
		}else if((repwd.value)!=(pwd.value)){
			alert("密码前后不一致,请重输!");
			return false;
		}
		
		//if (mysex1.checked == false && mysex2.checked == false) {
			//alert('您忘记选择您的性别！');
			//return false;
		//}
		if (year.value == -1) {
			alert("请选择出生日期！");
			//year_txt.focus();
			return false;
		}
		if (month.value == -1) {
			alert("请选择出生日期！");
			//month_txt.focus();
			return false;
		}
		if (day.value == -1) {
			alert("请选择出生日期！");
			//day_txt.focus();
			return false;
		}
	

		if (workProvince.value == '-1' && workCity.value == '-1') {
			alert("您忘记选择'工作地区'这项了!");
			workProvince_txt.focus();
			return false;
		}
		if (workProvince.value != '10101201'
				&& workProvince.value != '10102000'
				&& workProvince.value != '10103000'
				&& workProvince.value != '10101002'
				&& workProvince.value != '10104000'
				&& workProvince.value != '10105000'
				&& workProvince.value != '10132000'
				&& workProvince.value != '10133000'
				&& workProvince.value != '10134000') {
			if (workCity.value == '-1' || workCity.value == '') {
				alert("您忘记选择'工作地区'这项了!");
				return false;
			}
		}

		if (marriage.value == '-1' || marriage.value == '') {
			alert("请选择婚姻状况");
			marriage.focus();
			return false;
		}

		if (education.value == '' || education.value == '-1') {
			alert("请选择学历");
			education.focus();
			return false;
		}
		if (height.value == '-1' || height.value == '') {
			alert("请选择身高选项");
			height.focus();
			return false;
		}
		if (salary.value == '' || salary.value == '-1') {
			alert("请选择月收入");
			salary.focus();
			return false;
		}

		if (telphone.value == ""||telphone.value=="该号码已被其他用户绑定") {
			alert("手机号不能为空！");
			telphone.focus();
			return false;
		}
		
		if (!chk_phone1(telphone.value)) {
			alert("请输入真实的手机号！");
			return false;
		}
		
		if (email.value == ""||email.value=="该邮箱已被其他用户绑定") {
			alert("注册邮箱不能为空！");
			email.focus();
			return false;
		}
		/*if (email.value.indexOf('@') < 0) {
			alert("请输入正确的邮箱地址！");
			email.focus();
			return false;
		}*/
		
		
		if (code.value == '') {
			alert("验证码不能为空");
			code.focus();
			return false;
		}
		
		if(checkCode()!=code.value){//检验用户输入验证码与后台产生的验证码是否相等
			//alert("验证码为:"+checkCode());
			alert("验证码输入错误!");
			return false;//首先调用函数
		}
		ispop = false;
		$("#example1").submit();//提交表单
		return true;
	}

	
	//1,=验证码一致判断、而是手机邮箱已注册判断。手机短信如何做？
	//name?获取null问题？
</script>

<!-- 邮箱后置自动补全css和js文件 导入-->
<link href="css/autoShow_email_list/sucaijiayuan.css" type="text/css"
	rel="stylesheet" />
<script src="js/autoShow_email_list/jquery.min.js"></script>
<script src="js/autoShow_email_list/emailAutoComplete.js"></script>
<!-- 邮箱后置自动补全css和js文件 导入结束 -->

<!-- 导入注册验证文件 -->
<script type="text/javascript" src="js/register_files/user_reg.js"></script>


<!-- 气泡提示插件 导入文件-->
<link rel="stylesheet" type="text/css" media="screen"
	href="css/register_prove_css/reset.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="css/register_prove_css/jquery.ketchup.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="css/register_prove_css/main.css" />
<script type="text/javascript" src="js/register_prove_js/jquery.min.js"></script>
<script type="text/javascript"
	src="js/register_prove_js/jquery.ketchup.js"></script>
<script type="text/javascript"
	src="js/register_prove_js/jquery.ketchup.messages.js"></script>
<script type="text/javascript"
	src="js/register_prove_js/jquery.ketchup.validations.basic.js"></script>
<script type="text/javascript" src="js/register_prove_js/main.js"></script>

<!-- 气泡提示插件文件导入结束 -->
</head>

<body>	
	<table id="Table_01" width="1429" height="870" border="0"
		cellpadding="0" cellspacing="0">
		<tbody>
			<tr>
				<td><img alt=""></td>
				<td><img src="./images/register_files/register_02.png"
					width="125" height="129" alt=""></td>
				<td colspan="2">
					<!--  <div>
						<span style="color:#F39; font-size:16px; font-weight:bold">真缘网|中国严肃婚恋网</span></div>
					<div>
						<span style="color:#F39; font-size:16px; font-weight:bold">www.truelove.com</span>
					</div>-->
					<div>
						<img alt="" src="images/logo.png"
							style="width: 250px; height: 90px;">
					</div>
				<td colspan="2"><img
					src="./images/register_files/register_04.png" width="137"
					height="129" alt=""></td>
				<td colspan="5"><img
					src="./images/register_files/register_05.png" width="480"
					height="129" alt=""></td>
				<td><img src="./images/register_files/register_06.png"
					width="11" height="129" alt=""></td>
				<td colspan="3"><img
					src="./images/register_files/register_07.png" width="269"
					height="129" alt=""></td>
				<td><img src="./images/register_files/register_08.png"
					width="138" height="129" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="1"
					height="129" alt=""></td>
			</tr>
			<tr>
				<td rowspan="2"><img alt=""></td>
				<td colspan="7"><img
					src="./images/register_files/register_10.png" width="768"
					height="6" alt=""></td>
				<td colspan="6">&nbsp;</td>
				<td colspan="2" rowspan="10"><img
					src="./images/register_files/register_12.png" width="235"
					height="593" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="1"
					height="6" alt=""></td>
			</tr>
			<tr>
				<td colspan="2" rowspan="9"><img
					src="./images/register_files/register_13.png" width="215"
					height="587" alt=""></td>
				<td colspan="4" rowspan="7"><img
					src="./images/register_files/register_14.jpg" width="551"
					height="534" alt="" style="margin-top: -40px;"></td>
				<td rowspan="8"><img
					src="./images/register_files/register_15.png" width="2"
					height="538" alt=""></td>

			</tr>
			<tr>
				<td rowspan="8"><img
					src="./images/register_files/register_16.png" width="25"
					height="571" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="1"
					height="88" alt=""></td>
			</tr>
			<tr>

				<td><img src="./images/register_files/spacer.gif" width="1"
					height="6" alt=""></td>
			</tr>
			<tr>
				<td colspan="6">
					<div width="400" height="320" alt="">

						<div id="pnlError" class="landing_err"></div>
						<!--  -->
						<form action="Register" method="post" id="example1" name="register_stepone" >
						
							<!-- id="register_stepone"  style="font-size:14px;font-family:'仿宋'" -->
							<div style="margin-top:80px;">
							<div style="clear:both" id="div01">
							
							<strong
								style="margin-top: -170px; margin-left: 55px; position: absolute;font-weight:200">用户名</strong>
								<input  name="uname" type="text"  id="usernameId" class="validate(required,matchUser,minlengthUser,maxlength)" style="border-radius: 5px; width: 180px; margin-top: -170px; margin-left: 115px; position: absolute;" />
							
							</div>
							
							<div style="clear:both">
							<strong
								style="margin-top: -140px; margin-left: 55px; position: absolute;font-weight:200">密码</strong>
							<input type="password" class="validate(required,matchPwd,minlength,maxlength)" id="upwd" name="upwd" style="border-radius: 5px; width: 180px; margin-top: -140px; margin-left: 115px; position: absolute;" />
							</div>
							
							<div style="clear:both">
							<strong
								style="margin-top: -110px; margin-left:55px; position: absolute;font-weight:200">确认密码</strong>
								<input type="password" class="validate(required,matchRePwd)" id="urepwd" name="urepwd" style="border-radius: 5px; width: 180px; margin-top: -110px; margin-left: 115px; position: absolute;" />
							</div>
							</div>
							<!--注册页面的-->
							<div class="reg_li" style="height: 100%; margin-top: -90px">
								<ul>
									<li
										style="z-index: 93; border-bottom: 1px dotted #ccc; margin-bottom: 6px;">
										<!--  <strong>
											用户名 </strong>  消除图片改id 
				
											<input type="text" tabindex="1"
										placeholder="请输入用户名" onfocus="javascript:this.value='';"
										name="uname" id="usernameId" class="validate(required, username)  style="border-radius:5px;width:185px;">
										-->
									</li>
									<!-- class="inputl" -->
									<li class="ss"
										style="height: 30px; border-bottom: 1px dotted #ccc; margin: 5px;">
										<strong> 您的性别 </strong>
										<div class="div">

											<input name="gender" id="gender0" value="0" tabindex="6"
												type="radio" checked=""> 帅哥 <input name="gender"
												id="gender1" value="1" tabindex="5" type="radio"> 美女
										</div>
									</li>
									<li class="ss"
										style="height: 30px; border-bottom: 1px dotted #ccc; margin: 5px;">
										<strong> 出生日期 </strong> <input name="year" id="year"
										value="-1" type="hidden" style="border-radius: 5px;">
										<input name="month" id="month" value="-1" type="hidden"
										style="border-radius: 5px;"> <input name="day"
										id="day" value="-1" type="hidden" style="border-radius: 5px;">
										<input name="year_txt" id="year_txt"
										onfocus="d_date(year_txt);" class="inputs"
										style="width: 60px; border-radius: 5px; margin-right: 3px;"
										readonly="true" type="text"> - <input name="month_txt"
										id="month_txt" onfocus="d_date(month_txt);" class="inputs"
										style="width: 40px; border-radius: 5px; margin: 0px 3px;"
										readonly="true" type="text"> - <input name="day_txt"
										id="day_txt" onfocus="d_date(day_txt);" class="inputs"
										style="width: 40px; border-radius: 5px; margin-left: 3px;"
										readonly="true" type="text">
									</li>
									<li class="ss"
										style="height: 30px; border-bottom: 1px dotted #ccc; margin: 5px;">
										<strong> 工作地点 </strong> <script type="text/javascript">
											document.write(_message_box);
											<!---->
										</script>
										<div id="MessageBox"
											style="width: 574px; left: 80px; top: -18px; display: none;">
											<div id="DivTitle" style="width: 574px;">
												<span id="SpanTitle">选择日期</span> <span id="SpanTC"> <a
													href="#" id="LinkClose"
													onclick="HideMessage();return false;"> <!-- # -->> <img
														src="#"></img>
												</a>
												</span>
											</div>
											<div class="DivLine" style="width: 574px;"></div>
											<div id="DivMessage" style="width: 559px;">
												<div id="date_type">
													<a href="#" class="type_off" id="date_type_year"
														onclick="d_type(year);return false;">年</a><a href="#"
														class="type_off" id="date_type_month"
														onclick="d_type(month);return false;">月</a><a href="#"
														class="type_on" id="date_type_day"
														onclick="d_type(day);return false;">日</a>
													<div class="clear"></div>
													<div id="date_year" style="display: none;">
														<a href="#" class="year"
															onclick="d_select(year,1994);return false;">1994</a><a
															href="#" class="year"
															onclick="d_select(year,1993);return false;">1993</a><a
															href="#" class="year"
															onclick="d_select(year,1992);return false;">1992</a><a
															href="#" class="year"
															onclick="d_select(year,1991);return false;">1991</a><a
															href="#" class="year"
															onclick="d_select(year,1990);return false;">1990</a><a
															href="#" class="year"
															onclick="d_select(year,1989);return false;">1989</a><a
															href="#" class="year"
															onclick="d_select(year,1988);return false;">1988</a><a
															href="#" class="year"
															onclick="d_select(year,1987);return false;">1987</a><a
															href="#" class="year"
															onclick="d_select(year,1986);return false;">1986</a><a
															href="#" class="year"
															onclick="d_select(year,1985);return false;">1985</a><a
															href="#" class="year"
															onclick="d_select(year,1984);return false;">1984</a><a
															href="#" class="year"
															onclick="d_select(year,1983);return false;">1983</a><a
															href="#" class="year"
															onclick="d_select(year,1982);return false;">1982</a><a
															href="#" class="year"
															onclick="d_select(year,1981);return false;">1981</a><a
															href="#" class="year"
															onclick="d_select(year,1980);return false;">1980</a><a
															href="#" class="year"
															onclick="d_select(year,1979);return false;">1979</a><a
															href="#" class="year"
															onclick="d_select(year,1978);return false;">1978</a><a
															href="#" class="year"
															onclick="d_select(year,1977);return false;">1977</a><a
															href="#" class="year"
															onclick="d_select(year,1976);return false;">1976</a><a
															href="#" class="year"
															onclick="d_select(year,1975);return false;">1975</a><a
															href="#" class="year"
															onclick="d_select(year,1974);return false;">1974</a><a
															href="#" class="year"
															onclick="d_select(year,1973);return false;">1973</a><a
															href="#" class="year"
															onclick="d_select(year,1972);return false;">1972</a><a
															href="#" class="year"
															onclick="d_select(year,1971);return false;">1971</a><a
															href="#" class="year"
															onclick="d_select(year,1970);return false;">1970</a><a
															href="#" class="year"
															onclick="d_select(year,1969);return false;">1969</a><a
															href="#" class="year"
															onclick="d_select(year,1968);return false;">1968</a><a
															href="#" class="year"
															onclick="d_select(year, 1967);return false;">1967</a><a
															href="#" class="year"
															onclick="d_select(year,1966);return false;">1966</a><a
															href="#" class="year"
															onclick="d_select(year,1965);return false;">1965</a><a
															href="#" class="year"
															onclick="d_select(year,1964);return false;">1964</a><a
															href="#" class="year"
															onclick="d_select(year,1963);return false;">1963</a><a
															href="#" class="year"
															onclick="d_select(year,1962);return false;">1962</a><a
															href="#" class="year"
															onclick="d_select(year,1961);return false;">1961</a><a
															href="#" class="year"
															onclick="d_select(year,960);return false;">1960</a><a
															href="#" class="year"
															onclick="d_select(year,1959);return false;">1959</a><a
															href="#" class="year"
															onclick="d_select(year,1958);return false;">1958</a><a
															href="#" class="year"
															onclick="d_select(year,1957);return false;">1957</a><a
															href="#" class="year"
															onclick="d_select(year,1956);return false;">1956</a><a
															href="#" class="year"
															onclick="d_select(year,1955);return false;">1955</a><a
															href="#" class="year"
															onclick="d_select(year,1954);return false;">1954</a><a
															href="#" class="year"
															onclick="d_select(year,1953);return false;">1953</a><a
															href="#" class="year"
															onclick="d_select(year,1952);return false;">1952</a><a
															href="#" class="year"
															onclick="d_select(year,1951);return false;">1951</a><a
															href="#" class="year"
															onclick="d_select(year,1950);return false;">1950</a><a
															href="#" class="year"
															onclick="d_select(year,1949);return false;">1949</a><a
															href="#" class="year"
															onclick="d_select(year,1948);return false;">1948</a><a
															href="#" class="year"
															onclick="d_select(year,1947);return false;">1947</a><a
															href="#" class="year"
															onclick="d_select(year,1946);return false;">1946</a><a
															href="#" class="year"
															onclick="d_select(year,1945);return false;">1945</a><a
															href="#" class="year"
															onclick="d_select(year,1944);return false;">1944</a><a
															href="#" class="year"
															onclick="d_select(year,1943);return false;">1943</a><a
															href="#" class="year"
															onclick="d_select(year,1942);return false;">1942</a><a
															href="#" class="year"
															onclick="d_select(year,1941);return false;">1941</a><a
															href="#" class="year"
															onclick="d_select(year,1940);return false;">1940</a><a
															href="#" class="year"
															onclick="d_select(year,1939);return false;">1939</a><a
															href="#" class="year"
															onclick="d_select(year,1938);return false;">1938</a><a
															href="#" class="year"
															onclick="d_select(year,1937);return false;">1937</a><a
															href="#" class="year"
															onclick="d_select(year,1936);return false;">1936</a><a
															href="#" class="year"
															onclick="d_select(year,1935);return false;">1935</a><a
															href="#" class="year"
															onclick="d_select(year,1934);return false;">1934</a><a
															href="#" class="year"
															onclick="d_select(year,1933);return false;">1933</a><a
															href="#" class="year"
															onclick="d_select(year,1932);return false;">1932</a><a
															href="#" class="year"
															onclick="d_select(year,1931);return false;">1931</a><a
															href="#" class="year"
															onclick="d_select(year,1930);return false;">1930</a><a
															href="#" class="year"
															onclick="d_select(year,1929);return false;">1929</a><a
															href="#" class="year"
															onclick="d_select(year,1928);return false;">1928</a><a
															href="#" class="year"
															onclick="d_select(year,1927);return false;">1927</a><a
															href="#" class="year"
															onclick="d_select(year,1926);return false;">1926</a><a
															href="#" class="year"
															onclick="d_select(year,1925);return false;">1925</a><a
															href="#" class="year"
															onclick="d_select(year,1924);return false;">1924</a><a
															href="#" class="year"
															onclick="d_select(year,1923);return false;">1923</a><a
															href="#" class="year"
															onclick="d_select(year,1922);return false;">1922</a><a
															href="#" class="year"
															onclick="d_select(year,1921);return false;">1921</a>
													</div>
													<div id="date_month" style="display: none;">
														<a href="#" class="month"
															onclick="d_select(month,1);return false;">1</a><a
															href="#" class="month"
															onclick="d_select(month,2);return false;">2</a><a
															href="#" class="month"
															onclick="d_select(month,3);return false;">3</a><a
															href="#" class="month"
															onclick="d_select(month,4);return false;">4</a><a
															href="#" class="month"
															onclick="d_select(month,5);return false;">5</a><a
															href="#" class="month"
															onclick="d_select(month,6);return false;">6</a><a
															href="#" class="month"
															onclick="d_select(month,7);return false;">7</a><a
															href="#" class="month"
															onclick="d_select(month,8);return false;">8</a><a
															href="#" class="month"
															onclick="d_select(month,9);return false;">9</a><a
															href="#" class="month"
															onclick="d_select(month,10);return false;">10</a><a
															href="#" class="month"
															onclick="d_select(month,11);return false;">11</a><a
															href="#" class="month"
															onclick="d_select(month,12);return false;">12</a>
													</div>
													<div id="date_day" style="display: block;">
														<a href="#" class="day"
															onclick="d_select(day,1);return false;">1</a><a href="#"
															class="day" onclick="d_select(day,2);return false;">2</a><a
															href="#" class="day"
															onclick="d_select(day,3);return false;">3</a><a href="#"
															class="day" onclick="d_select(day,4);return false;">4</a><a
															href="#" class="day"
															onclick="d_select(day,5);return false;">5</a><a href="#"
															class="day" onclick="d_select(day,6);return false;">6</a><a
															href="#" class="day"
															onclick="d_select(day,7);return false;">7</a><a href="#"
															class="day" onclick="d_select(day,8);return false;">8</a><a
															href="#" class="day"
															onclick="d_select(day,9);return false;">9</a><a href="#"
															class="day" onclick="d_select(day,10);return false;">10</a><a
															href="#" class="day"
															onclick="d_select(day,11);return false;">11</a><a
															href="#" class="day"
															onclick="d_select(day,12);return false;">12</a><a
															href="#" class="day"
															onclick="d_select(day,13);return false;">13</a><a
															href="#" class="day"
															onclick="d_select(day,14);return false;">14</a><a
															href="#" class="day"
															onclick="d_select(day,15);return false;">15</a><a
															href="#" class="day"
															onclick="d_select(day,16);return false;">16</a><a
															href="#" class="day"
															onclick="d_select(day,17);return false;">17</a><a
															href="#" class="day"
															onclick="d_select(day,18);return false;">18</a><a
															href="#" class="day"
															onclick="d_select(day,19);return false;">19</a><a
															href="#" class="day"
															onclick="d_select(day,20);return false;">20</a><a
															href="#" class="day"
															onclick="d_select(day,21);return false;">21</a><a
															href="#" class="day"
															onclick="d_select(day,22);return false;">22</a><a
															href="#" class="day"
															onclick="d_select(day,23);return false;">23</a><a
															href="#" class="day"
															onclick="d_select(day,24);return false;">24</a><a
															href="#" class="day"
															onclick="d_select(day,25);return false;">25</a><a
															href="#" class="day"
															onclick="d_select(day,26);return false;">26</a><a
															href="#" class="day"
															onclick="d_select(day,27);return false;">27</a><a
															href="#" class="day"
															onclick="d_select(day,28);return false;">28</a><a
															href="#" class="day"
															onclick="d_select(day,29);return false;">29</a><a
															href="#" class="day"
															onclick="d_select(day,30);return false;">30</a><a
															href="#" class="day"
															onclick="d_select(day,31);return false;">31</a>
													</div>
												</div>
											</div>
											<div class="DivLine" style="display: none; width: 574px;"></div>
											<div id="DivConfirm" style="display: none; width: 574px;">
												<div class="DivBtn" onclick="HideMessage();return false;">
													<a id="LinkCancel">取消</a>
												</div>
												<div class="DivBtn" onclick="ConfirmMessage();return false;">
													<a id="LinkConfirm">确定</a>
												</div>
											</div>
										</div>
										<div id="MessageBox">
											<div id="DivTitle">
												<span id="SpanTitle"> TIPS </span> <span id="SpanTC">
													<a href="#" id="LinkClose"
													onclick="HideMessage();return false;"> <!-- <img src="./images/register_files/close.gif"></img>-->
												</a>
												</span>
											</div>
											<div class="DivLine" style="width: 574px;"></div>
											<div id="DivMessage"></div>
											<div class="DivLine" style="width: 574px;"></div>
											<div id="DivConfirm">
												<div class="DivBtn" onclick="HideMessage();return false;">
													<a id="LinkCancel"> 取消 </a>
												</div>
												<div class="DivBtn" onclick="ConfirmMessage();return false;">
													<a id="LinkConfirm"> 确定 </a>
												</div>
											</div>
										</div> <input name="workprovincereg" id="workprovincereg" value=""
										type="hidden" style="border-radius: 5px;"> <input
										name="workcity" id="workcity" value="" type="hidden"
										style="border-radius: 5px;"> <input
										name="workprovincereg_txt" id="workprovincereg_txt" value=""
										onfocus="l_location(workprovincereg_txt);" class="inputs"
										style="width: 80px; border-radius: 5px;" readonly="true"
										type="text"> <input name="workcity_txt"
										id="workcity_txt" value="" onfocus="l_location(workcity_txt);"
										class="inputs"
										style="width: 80px; margin-left: 5px; border-radius: 5px;"
										readonly="true" type="text">
									</li>
									<li style="z-index: 98;"><strong> 婚姻状况 </strong> <select
										name="marriage" id="marriage" style="border-radius: 5px;">
											<option value="-1">请选择</option>
											<option value="0">未婚</option>
											<option value="1">离异</option>
											<option value="2">丧偶</option>
									</select></li>
									<li style="z-index: 97;"><strong> 最高学历 </strong> <select
										name="education" id="education" style="border-radius: 5px;">
											<option value="-1">请选择</option>
											<option value="0">高中及以下</option>
											<option value="1">大专</option>
											<option value="2">大学本科</option>
											<option value="3">硕士</option>
											<option value="4">博士</option>
									</select></li>
									<!-- 
				                            <li style="z-index:96;">
				                                <strong>
				                                    月 收 入
				                                </strong>
				                                <select name="salary" id="salary">
				                                    <option value="-1">
				                                        请选择
				                                    </option>
				                                    <option value="1">
				                                        1000元以下
				                                    </option>
				                                    <option value="2">
				                                        1001-2000元
				                                    </option>
				                                    <option value="3">
				                                        2001-3000元
				                                    </option>
				                                    <option value="4">
				                                        3001-5000元
				                                    </option>
				                                    <option value="5">
				                                        5001-8000元
				                                    </option>
				                                    <option value="6">
				                                        8001-10000元
				                                    </option>
				                                    <option value="7">
				                                        10001-20000元
				                                    </option>
				                                    <option value="8">
				                                        20001-50000元
				                                    </option>
				                                    <option value="9">
				                                        50000元以上
				                                    </option>
				                                </select>
				                            </li>
				                             -->
									<li style="z-index: 95;"><strong> 身 高 </strong> <select
										name="height" id="height" style="border-radius: 5px;">
											<option value="-1">请选择</option>
											<option value="154">155以下</option>
											<option value="155">155</option>
											<option value="156">156</option>
											<option value="157">157</option>
											<option value="158">158</option>
											<option value="159">159</option>
											<option value="160">160</option>
											<option value="161">161</option>
											<option value="162">162</option>
											<option value="163">163</option>
											<option value="164">164</option>
											<option value="165">165</option>
											<option value="166">166</option>
											<option value="167">167</option>
											<option value="168">168</option>
											<option value="169">169</option>
											<option value="170">170</option>
											<option value="171">171</option>
											<option value="172">172</option>
											<option value="173">173</option>
											<option value="174">174</option>
											<option value="175">175</option>
											<option value="176">176</option>
											<option value="177">177</option>
											<option value="178">178</option>
											<option value="179">179</option>
											<option value="180">180</option>
											<option value="181">181</option>
											<option value="182">182</option>
											<option value="183">183</option>
											<option value="184">184</option>
											<option value="185">185</option>
											<option value="186">186</option>
											<option value="187">187</option>
											<option value="188">188</option>
											<option value="189">189</option>
											<option value="190">190</option>
											<option value="191">191</option>
											<option value="192">192</option>
											<option value="193">193</option>
											<option value="194">194</option>
											<option value="195">195</option>
											<option value="196">196</option>
											<option value="197">197</option>
											<option value="198">198</option>
											<option value="199">199</option>
											<option value="200">200</option>
											<option value="201">200以上</option>
									</select> 厘米</li>
									<li style="z-index: 96;"><strong> 月 收 入 </strong> <select
										name="salary" id="salary" style="border-radius: 5px;">
											<option value="-1">请选择</option>
											<option value="0">1000元以下</option>
											<option value="1">1001-2000元</option>
											<option value="2">2001-3000元</option>
											<option value="3">3001-5000元</option>
											<option value="4">5001-8000元</option>
											<option value="5">8001-10000元</option>
											<option value="6">10001-20000元</option>
											<option value="7">20001-50000元</option>
											<option value="8">50000元以上</option>
									</select></li>
									
									<li
											style="height: 4px; border-bottom: 1px dotted #ccc; margin: 5px;">
									</li>
									<li
										style="height: 20px; border-bottom: 1px dotted #ccc; margin: 5px;">
									</li>
									
									<!-- 
									<li
										style="height: 50px; border-bottom: 1px dotted #ccc; margin: 5px;">
										<strong> 手机号码 </strong> <input type="text" tabindex="4"
										title="红娘为您牵线搭桥，成就您的美满爱情" placeholder="请输入手机号"
										onfocus="javascript:this.value=''" name="telphone"
										id="telphone" class="inputl"
										style="width: 185px; border-radius: 5px;">
									</li>
									-->
									<li style="z-index: 93; margin-left: 5px;"><strong>
											注册邮箱 </strong> <!-- 消除图片改id --> <!-- 
										<input type="text" tabindex="1" placeholder="请输入邮箱"
										title="此邮箱将成为您日后找回密码的途径之一" onfocus="javascript:this.value='';"
										name="email" id="emailId" class="inputl" style="width:185px;border-radius:5px;"> <span
										id="validateemailID"> </span></li>
									<span
										style="width: 50px; position: absolute; margin-top: 420px; margin-left:-55px;">
										<select name="email" id="emailLastName"
										style="width: 90px; height: 27px;border-radius:5px;">
											<option value="0">qq.com</option>
											<option value="1">sina.com</option>
											<option value="2">sina.com.cn</option>
											<option value="3">yahoo.com</option>
											<option value="4">hotmail.com</option>
											<option value="5">21cn.com</option>
											<option value="6">sohu.com</option>
											<option value="7">sina.com</option>
											<option value="8">263.com </option>
											<option value="9">sina.com</option>
											<option value="10">eyou.com </option>
											<option value="11">188.com</option>
									</select>
									</span>
									
									onfocus="javascript:this.value='';"
									onchange="checkEmailFunc(this.value)"
									-->
										<div class="parentCls" style="clear: both;">
											<input class="inputElem" type="text" tabindex="1"
												placeholder="请输入邮箱" title="此邮箱将成为您日后找回密码的途径之一"
												 name="email"
												id="emailId" class="inputl" 
												style="width: 185px; border-radius: 5px; margin-top: -30px; margin-left: 13px; position: absolute;">
										</div>
										<!-- 隐藏技术
										<div style="clear: both;">
											<input id="emailId02" type="text" hidden="true"/>
										</div>-->
								</ul>
							<ul>
								<li
											style="height: 5px; border-bottom: 1px dotted #ccc; margin: 5px;">
								</li>
							</ul>
								<li style="z-index: 93; margin-bottom: 10px; margin-left: 5px;"><strong
									style="width: 70px;">邮箱验证码 </strong> <input type="text"
									tabindex="1" value="" onfocus="javascript:this.value='';"
									name="code" id="codeId" class="inputl"
									style="width: 60px; border-radius: 5px; position: absolute;">
									<input onclick="sendCode()" id="code_button" type="button"
									style="margin-left: 4px; background-color: #FF69B4; width: 125px; border-radius: 5px; height: 30px; margin-top: 2px; color: #FFF; font-family: '仿宋'; font-weight: bold; position: absolute; margin-left: 70px;"
									value="请求验证码" /></li> <input type="checkbox" value="1"
									checked="checked"
									style="vertical-align: middle; margin-left: 10px; margin-top: 0px;"><span>&nbsp;已阅读和同意爱约的
								</span>
								<!-- http://www.i2299.com/index.php?n=myaccount&amp;h=serverrule -->
								<a href="#" target="_blank"> 服务条款</a><span> 和</span>
								<!--  http://www.i2299.com/index.php?n=myaccount&amp;h=intimacy-->
								<a href="#" target="_blank"> 隐私政策</a> <input type="hidden"
									value="false" id="telphonemessage"> <input
									id="mustphone" type="hidden" value="1" name="mustphone">
								<input name="agree" type="hidden" id="agree" value="1">
								<input name="telphonecheck" type="hidden" value="1"> <input
									name="actio" type="hidden" id="actio" value="false"> <input
									name="istueiguang" type="hidden" id="istueiguang" value="1">
								<input type="hidden" value="false" id="passmessage"> <input
									type="hidden" value="false" id="emailmessage">

							</div>
							
							<div>
								<strong
									style="margin-top: 205px; margin-left: -300px; position: absolute;font-weight:200">手机号</strong><input
									type="text" tabindex="4" title="红娘为您牵线搭桥，成就您的美满爱情"
									placeholder="请输入手机号" onfocus="javascript:this.value=''"
									name="telphone" id="telphone"
									style="width: 185px; border-radius: 5px; margin-top: 205px; margin-left: -245px; position: absolute;"
									class="validate(required,number)">
							</div>
						</form>

						<!-- </div>-->

					</div>
				</td>
				<td><img src="./images/register_files/spacer.gif" width="1"
					height="320" alt=""></td>
			</tr>
			<tr>
				<td colspan="4">
					<!-- background-color: #FFF-->
					<div style="width: 100%; height: 100%;">
						<input
						style="width: 202px; height: 42px; color: #FFF; font-size: 16px; font-weight: bold; margin-left: 65px; background: url(images/register_files/register_button.PNG) no-repeat; border: 0px; cursor: pointer;"
							value="立即注册" type="button" onclick="checkForm()">
				
						</div>
				</td>
				<td><img src="./images/register_files/spacer.gif" width="1"
					height="82" alt=""></td>
			</tr>
			<tr>

				<td><img src="./images/register_files/spacer.gif" width="1"
					height="19" alt=""></td>
			</tr>
			<tr>

				<td><img src="./images/register_files/spacer.gif" width="1"
					height="3" alt=""></td>
			</tr>
			<tr>

				<td><img src="./images/register_files/spacer.gif" width="1"
					height="4" alt=""></td>
			</tr>
			<tr>

				<td colspan="5"><img
					src="./images/register_files/character.PNG" width="100%"
					height="100%" style="margin-left: 110px;" /></td>
				<td colspan="4"><img
					src="./images/register_files/register_27.png" width="262"
					height="49" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="1"
					height="49" alt=""></td>
			</tr>
			<tr>

				<td><img src="./images/register_files/spacer.gif" width="1"
					height="112" alt=""></td>
			</tr>
			<tr>
				<td colspan="16"><img
					src="./images/register_files/register_29.png" width="1428"
					height="35" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="1"
					height="35" alt=""></td>
			</tr>
			<tr>
				<td><img src="./images/register_files/spacer.gif" width="25"
					height="1" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="125"
					height="1" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="90"
					height="1" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="153"
					height="1" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="103"
					height="1" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="34"
					height="1" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="261"
					height="1" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="2"
					height="1" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="74"
					height="1" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="64"
					height="1" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="79"
					height="1" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="11"
					height="1" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="109"
					height="1" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="63"
					height="1" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="97"
					height="1" alt=""></td>
				<td><img src="./images/register_files/spacer.gif" width="138"
					height="1" alt=""></td>
				<td></td>
			</tr>
		</tbody>
	</table>
	<jsp:include page="WEB-INF/page/registerFooter.jsp"></jsp:include>

</body>
</html>
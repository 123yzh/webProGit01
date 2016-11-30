<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>佳缘登录页_世纪佳缘交友网</title>
<link rel="stylesheet" href="./css/forgotPwd/base.css">
<link rel="stylesheet" href="./css/forgotPwd/login.css">

<style type="text/css">
.main {
	background-image: url(#)
}
</style>
</head>
<body onload="javascript:void(0)" onkeydown="bindEnter(event)">
	<div id="jy_head_box"
		style="height: 0px; font-size: 0px; line-height: 0;">
		<div id="jy_cpfl_1"
			style="position: fixed; right: 0px; top: 260px; width: 23px; height: 83px; z-index: 9000;">
			<div id="jy_cpfl_1_box">
				<div id="jy_translate_box" class="jy_translate_box">
					<a class="jy_translate jy_translate_ft" href="javascript:void(0);"
						onClick="javascript:void(0);javascript:void(0);"></a>
					<a class="jy_translate jy_translate_jt" href="javascript:void(0);"
						onClick="javascript:javascript:void(0);javascript:void(0);"></a>
				</div>
			</div>
		</div>
	</div>
	<iframe src="javascript:false;" name="login_run" width="0" height="0"
		style="display: none;" src="./css/forgotPwd/saved_resource.html"></iframe>
	<div id="wrapper" class="wrapper">
		<div id="header" class="header">
			<div class="w fn-clear">
				<h1 class="logo">
					<script type="text/javascript">
            <!--document.write('<a class="logo" href="#" onmousedown="javascript:send_jy_pv2(\'log_m_to_jy\');" ><img height="70" src="'+head_logo_config['index_logo']+'" alt="世纪佳缘" border="0" /></a>');-->
          </script>
					<a class="logo" href="#"
						onMouseDown="javascript:void(0);"><img
						height="70" src="./images/forgotPwd/jy_common_1479720090.jpeg"
						alt="世纪佳缘" border="0"></a> <span><img
						src="./images/forgotPwd/logo_txt.png" alt="严肃婚恋网站"></span>
				</h1>
			</div>
		</div>
		<div id="main" class="main">
			<div class="w fn-clear">
				<div id="loginForm" class="loginForm tab-wrap">
					<ul class="loginTit tab-list fn-clear">
						<li class="" id="password_login">会员登录</li>
						<li style="" id="quick_login_btn" class="cur">快速登录</li>
					</ul>
					<div class="loginInner">
						<div class="loginFalse" id="errorInfo" style="display: none;">
							<p id="errorInfop">
								<!-- <span class="f_red">登录失败！</span>您的密码过于简单，请登录后<a href="###">修改密码</a> -->

							</p>
						</div>
						<div class="tab-cent fn-hide" id="login_form">
							<form name="login" id="login" method="post" action="#"
								target="login_run">
								<div class="login_zh fn-clear">
									<label class="lab">登录帐号</label>
									<div class="login_inpBox">
										<label for="login_email" class="login_label"
											style="display: none;">邮箱/ID/手机号</label> <input class="text"
											name="name" type="text" id="login_email"
											onFocus="javascript:void(0);"
											onBlur="check_text(this);" value="2864558382@qq.com"
											style="background: rgb(255, 255, 255);"> <span
											class="btnDel" id="btn_del" href="" onClick="delLoginMsg();"
											title="删除" style="display: inline;">删除</span>
									</div>
								</div>
								<div class="login_mm fn-clear mT10">
									<label class="lab">密<i class="f_white">密码</i>码
									</label>
									<div class="login_inpBox">
										<label for="login_password" class="login_label"
											style="display: inline;">密码</label> <input class="text"
											type="password" name="password" autocomplete="off"
											id="login_password" style="background: transparent;">
									</div>
								</div>
								<p class="loginSelf mT10">
									<input type="checkbox" name="remem_pass" checked=""
										id="check_save" onClick="saveName(this);"> <label><span>两周内自动登录</span></label>
								</p>
								<div class="btnsBox">
									<a class="btnLogin" id="login_btn" href="javascript:void(0);"
										onClick="javascript:void(0);mysub();">登&nbsp;录</a>
									<a class="forgMM"
										onMouseDown="javascript:void(0);"
										onClick="show_quick_login();" style="cursor: pointer;">忘记密码</a>
								</div>
								<input type="hidden" name="_s_x_id"
									value="2743b6401663460708f86e3195873aaa"> <input
									type="hidden" name="ljg_login" value="1"> <input
									type="hidden" name="m_p_l" value="1"> <input
									type="hidden" name="channel" value="0"> <input
									type="hidden" name="position" value="0">
							</form>
						</div>
						<div class="tab-cent">
							<form name="login_new" id="login_new" method="post" action="#"
								target="login_run">
								<div class="login_zh_o fn-clear" style="margin-top: 37px;">
									<label class="lab">手机号/邮箱</label>
									<div class="login_inpBox" style="width: 220px;">
										<label for="login_quick" class="login_label"
											style="display: none;">手机号/邮箱</label> <input class="text"
											name="name" autocomplete="off" type="text" id="login_quick"
											onFocus="clear_text(this);"
											onBlur="check_text(this);"
											style="background: rgb(255, 255, 255);"> <span
											class="btnDel" title="删除" style="display: inline;">删除</span>
									</div>
									<div class="login_codeBox fn-hide" style="display: none;">
										<a href="javascript:;" class="login_code_btn"
											id="get_mobile_code">获取验证码</a>
									</div>
								</div>
								<div class="login_mm_o fn-clear mT10 fn-hide"
									style="display: none;">
									<label class="lab">验证码</label>
									<div class="login_inpBox">
										<label for="login_code" class="login_label"
											style="display: inline;">验证码</label> <input id="login_code"
											name="login_mobile_code" autocomplete="off" type="text"
											value="" class="te"><span class="re"
											style="display: inline-block;"> </span>

									</div>
								</div>
								<div class="btnsBox">
									<a class="btnLogin" style="display: none;" id="login_btn_new"
										href="javascript:void(0);"
										onClick="javascript:void(0);mysub_new();">登&nbsp;录</a>
									<a class="btnLogin" style="" id="send_email"
										href="javascript:void(0);"
										onClick="javascript:void(0)send_email();">发送邮件</a>
								</div>
								<input type="hidden" name="sid" id="sid" value="2d5900">
							</form>
						</div>
						<div class="openId">
							<p>
								<span class="lTit">其他帐号登录</span> <a class="openId_qq" href="#"><i
									class="icon_openId icon_qq"></i>QQ帐号</a> <a class="openId_sina"
									href="#"><i class="icon_openId icon_sina"></i>新浪微博</a>
								<!--微信登录-->
								<a class="openId_wx" href="#"><i class="icon_openId icon_wx"></i>微信</a>
								<!--微信登录-->
							</p>
							<p class="mT5">
								<a class="openId_baidu" href="#" title="百度"><i
									class="icon_openId icon_baidu"></i><span>百度</span></a> <a
									class="openId_rr" href="#" title="人人网"><i
									class="icon_openId icon_rr"></i><span>人人网</span></a>
								<!-- <a class="openId_db" href="#" title="豆瓣"><i class="icon_openId icon_db"></i><span>豆瓣</span></a> -->
								<a class="openId_kxw" href="#" title="开心网"><i
									class="icon_openId icon_kxw"></i><span>开心网</span></a> <a
									class="openId_zfb" href="#" title="支付宝"><i
									class="icon_openId icon_zfb"></i><span>支付宝</span></a>
							</p>
						</div>
						<p class="goReg">
							<a href="#"
								onMouseDown="javascript:void(0)">还不是会员？立即注册</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div id="footer" class="footer w">
			<div class="shareXF">
				<a href="#"
					onMouseDown="";
					target="_blank">我已成功征友，我要晒幸福</a>
			</div>
			<style type="text/css">
div#jy_common_foot * {
	padding: 0;
	margin: 0
}

#jy_common_foot {
	width: 970px;
	margin: 0 auto;
	clear: both;
	font-family: SimSun, Arial, Helvetica, sans-serif
}

#jy_common_foot img, #jy_common_foot img a {
	border: none
}

#jy_common_foot #common_footer {
	width: 970px;
	font-size: 12px;
	padding: 20px 0;
	text-align: center;
	line-height: 2;
	color: #636363
}

#jy_common_foot #common_footer p {
	text-align: center
}

#jy_common_foot #common_footer p a {
	margin: 0 8px;
	padding: 0;
	color: #636363;
	text-decoration: none
}

#jy_common_foot #common_footer p a:hover {
	margin: 0 8px;
	color: #E7417F;
	text-decoration: underline
}

#jy_common_foot #common_footer p .bot_link_none:hover {
	color: #636363;
	text-decoration: none
}
</style>
			<div id="jy_common_foot">
				<div class="hf_foot" id="common_footer">
					<p id="bottom_nav_link">
						<a name="foot_nav_link" href="#" target="_blank">联系客服</a> <a
							name="foot_nav_link" href="#" target="_blank">关于我们</a> <a
							name="foot_nav_link" href="#" target="_blank">联系我们</a> <a
							name="foot_nav_link" href="#" target="_blank">无线业务</a> <a
							name="foot_nav_link" href="#" target="_blank">注册条款</a> <a
							name="foot_nav_link" href="#" target="_blank">友情链接</a> <a
							name="foot_nav_link" href="#" target="_blank">招聘信息</a> <a
							name="foot_nav_link" href="#" target="_blank">交友信息</a> <a
							name="foot_nav_link" href="#" target="_blank">隐私保护</a> <a
							name="foot_nav_link" href="#" target="_blank">帮助中心</a> <a
							name="foot_nav_link" href="#" target="_blank">安全中心</a>
					</p>
					<p id="bottom_site_copyright">
						<a class="bot_link_none">中文实名：世纪佳缘</a> <a class="bot_link_none">ICP证书：沪B2-20100074</a>
						<a class="bot_link_none">增值电信业务经营许可证：沪B2-20070313</a> <a href="#"
							target="_blank">ISO9001质量体系认证</a>
					</p>
					<p>
						©&nbsp;2003-2016&nbsp;版权所有&nbsp;&nbsp;&nbsp;&nbsp;京公网安备110105002124号&nbsp;&nbsp;&nbsp;&nbsp;不良和违法信息举报专线：0316-5266032
					</p>
					<style type="text/css">
html, body {
	*overflow-x: hidden
}
/*简繁转换浮层*/
.jy_translate_box {
	height: 83px;
	width: 63px;
	background: url(#) no-repeat 0 0;
	overflow: hidden;
	position: absolute;
	right: -40px
}

.jy_translate {
	display: block;
	margin-left: 23px;
	cursor: pointer;
	width: 40px;
	height: 40px;
	border-top: 1px solid #d9d9d9
}

.jy_translate_ft {
	background: url(#) no-repeat -24px 0
}

.jy_translate_ft:hover {
	background: url(#) no-repeat -67px 0
}

.jy_translate_jt {
	border-bottom: 1px solid #d9d9d9;
	background: url(#) no-repeat -24px -43px
}

.jy_translate_jt:hover {
	background: url(#) no-repeat -67px -43px
}
/*手机验证浮层*/
#jy_mobile_authentication {
	display: block;
	width: 103px;
	height: 140px;
	background: url(#) no-repeat 0 0
}

#jy_mobile_authentication:hover {
	background: url(#) no-repeat 0 -150px
}
/*金融浮层*/
#finance_redBox {
	position: relative;
}

.finance_redBox_img {
	display: block;
	width: 154px;
	height: 131px;
	background: url(#);
	_background: url(#);
}
</style>
					<div id="jy_translate_tpl" style="display: none"></div>
					<div id="jy_mobile_tpl" style="display: none">
						<a id="jy_mobile_authentication" class="jy_mobile_authentication"
							onMouseDown="javascript:javascript:void(0);"
							href="#" target="_blank"></a>
					</div>
					<div id="jy_yuehuiba_tpl" style="display: none">
						<a id="yuehuiba_url"
							onMouseDown="javascript:javascript:void(0);"
							href="#" target="_blank"><img
							src="./images/forgotPwd/date_cfl1.png" alt="约会吧"
							class="fixPNG"></a>
					</div>
					<div id="jr_finance_redBox" style="display: none">
						<a href="#"
							onMouseDown="javascript:javascript:void(0);"
							target="_blank" class="finance_redBox_img"></a>
					</div>
					<div id="page_bottom_info"
						style="text-align: center; margin-bottom: 10px"></div>
				</div>
			</div>
			<style type="text/css">
/*
功能：未登录通用底浮层，引导登录与注册【登录前】
说明：使用前需要包含通用头或者至少要包含head_common.js通用头配置文件，jy_head_function.login_bar_enabled，默认true，显示未登录浮层；false，不显示浮层
作者：liujianfeng@jiayuan.com
版本：v 2.0
*/
body {
	padding: 0;
	margin: 0
}

#common_footer_guide {
	width: 100%;
	height: 60px;
	z-index: 1001;
	position: fixed;
	left: 0;
	bottom: 0;
	_position: absolute;
	_top: expression(documentElement.scrollTop +
		documentElement.clientHeight-this.offsetHeight)
}

#common_footer_guide .guide_shade {
	background: #000;
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	opacity: .6;
	filter: alpha(opacity = 60)
}

#common_footer_guide .guide_layer {
	position: absolute;
	width: 840px;
	left: 50%;
	top: 0;
	z-index: 1020;
	margin: 0;
	padding: 0;
	margin-left: -420px;
	_margin-left: -418px;
	padding-top: 15px
}

#common_footer_guide .guide_layer a {
	diaplay: block;
	float: left;
	margin: 0;
	padding: 0;
	width: 30px;
	height: 30px;
	overflow: hidden;
	margin-left: 18px;
	cursor: pointer;
	text-decoration: none
}

#common_footer_guide .guide_layer .guide_bt {
	font-size: 16px;
	color: #FFF;
	font-weight: bold;
	width: 170px;
	padding-top: 4px;
	height: 26px;
	_padding-top: 7px;
	_height: 23px;
	cursor: text;
	margin-left: 0
}

#common_footer_guide .guide_layer .guide_qq {
	background: url(#) no-repeat 0 0
}

#common_footer_guide .guide_layer .guide_qq:hover {
	background: url(#) no-repeat 0 -31px
}

#common_footer_guide .guide_layer .guide_wb {
	background: url(#) no-repeat -31px 0
}

#common_footer_guide .guide_layer .guide_wb:hover {
	background: url(#) no-repeat -31px -31px
}

#common_footer_guide .guide_layer .guide_bd {
	background: url(#) no-repeat -62px 0
}

#common_footer_guide .guide_layer .guide_bd:hover {
	background: url(#) no-repeat -62px -31px
}

#common_footer_guide .guide_layer .guide_zf {
	background: url(#) no-repeat -93px 0
}

#common_footer_guide .guide_layer .guide_zf:hover {
	background: url(#) no-repeat -93px -31px
}

#common_footer_guide .guide_layer .guide_rr {
	background: url(#) no-repeat -124px 0
}

#common_footer_guide .guide_layer .guide_rr:hover {
	background: url(#) no-repeat -124px -31px
}

#common_footer_guide .guide_layer .guide_kx {
	background: url(#) no-repeat -155px 0
}

#common_footer_guide .guide_layer .guide_kx:hover {
	background: url(#) no-repeat -155px -31px
}

#common_footer_guide .guide_layer .guide_db {
	background: url(#) no-repeat -186px 0
}

#common_footer_guide .guide_layer .guide_db:hover {
	background: url(#) no-repeat -186px -31px
}

#common_footer_guide .guide_layer .guide_zc {
	margin-left: 105px;
	width: 128px;
	background: url(#) no-repeat 0 -62px
}

#common_footer_guide .guide_layer .guide_zc:hover {
	background: url(#) no-repeat 0 -92px
}

#common_footer_guide .guide_layer .guide_dl {
	width: 128px;
	background: url(#) no-repeat 0 -122px
}

#common_footer_guide .guide_layer .guide_dl:hover {
	background: url(#) no-repeat 0 -152px
}

#common_footer_guide .guide_layer .guide_wx {
	background: url(#) no-repeat
}

#common_footer_guide .guide_layer .guide_wx:hover {
	background: url(#) no-repeat
}

#common_footer_guide .guide_close {
	display: block;
	cursor: pointer;
	z-index: 1010;
	position: absolute;
	right: 15px;
	top: 15px;
	width: 28px;
	height: 28px;
	background: url(#) no-repeat 0 -183px
}

#common_footer_guide .guide_close {
	-webkit-transition: all 0.4s ease;
	-moz-transition: all 0.4s ease;
	-ms-transition: all 0.4s ease;
	-o-transition: all 0.4s ease;
	transition: all 0.4s ease;
}

#common_footer_guide .guide_close:hover {
	-webkit-transform: rotate(180deg) scale(0.8);
	-moz-transform: rotate(180deg) scale(0.8);
	-ms-transform: rotate(180deg) scale(0.8);
	-o-transform: rotate(180deg) scale(0.8);
	transform: rotate(180deg) scale(0.8)
}
</style>
			<div id="common_footer_guide" style="display: none">
				<div class="guide_shade"></div>
				<div class="guide_layer">
					<a class="fixPNG guide_bt">直接使用这些账号登录</a> <a
						class="fixPNG guide_qq" href="#"></a> <a class="fixPNG guide_wb"
						href="#"></a> <a class="fixPNG guide_wx" href="#"></a> <a
						class="fixPNG guide_bd" href="#"></a> <a class="fixPNG guide_zf"
						href="#"></a> <a class="fixPNG guide_kx" href="#"></a> <a
						class="guide_zc" href="#" target="_blank"></a> <a class="guide_dl"
						href="#"></a>
				</div>
				<a class="fixPNG guide_close" href="javascript:void(0)"></a>
			</div>
		
</body>
</html>
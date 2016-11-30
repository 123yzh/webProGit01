<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的佳缘_世纪佳缘交友网</title>
<link rel="stylesheet" href="./css/myTrueLove/base.css">
<link href="./css/myTrueLove/mydatamain.css" rel="stylesheet"
	type="text/css">
<body>
<div style="clear:both;height:50px;">
	<jsp:include page="WEB-INF/page/head04.jsp"></jsp:include>
</div>
<div class="my-jiayuan-abnormal-login" id="head_tips" style="clear:both">
	<a href="javascript:;" class="my-jiayuan-abnormal-close">&nbsp;</a>
	<ul id="head_tips_ul">
		<li>
			<div class="my-jiayuan-abnormal-yc">
				<a onclick="send_jy_pv2(yellow_link_click|158806191);" href="#"
					target="_blank">为了您的账户安全，请您尽快验证手机。</a>
			</div>
		</li>
	</ul>
</div>
<style type="text/css">
.cp-menu-index {
	display: none
} /*我的佳缘首页隐藏左菜单头*/
</style>
<!--顶部提示条结束 -->
<!-- 主体 开始 two div-->
<div class="my-jiayuan-doc1000 fn-clear">
	<!-- 左侧菜单 开始-->
	<style type="text/css">
/* 在不引入重置样式文件下保持样式正确兼容 */
.cp-menu, .cp-menu div, .cp-menu p, .cp-menu a, .cp-menu li, .cp-menu span,
	.cp-menu strong, .cp-menu i {
	font-family: \5b8b\4f53, simsun, '宋体', 'Hiragino Sans GB', Arial,
		Helvetica, sans-serif
}

.cp-menu {
	width: 170px;
	float: left;
	margin: 10px 0 15px;
}

.cp-menu li, .cp-menu ul {
	margin: 0;
	padding: 0
}

.cp-menu ol, .cp-menu ul {
	list-style: none
}

.cp-menu img {
	border: 0
}

.cp-menu a:link, .cp-menu a:hover, .cp-menu a:visited, .cp-menu a:active
	{
	outline: none
}

.cp-menu .fn-clear:after {
	visibility: hidden;
	display: block;
	font-size: 0;
	content: " ";
	clear: both;
	height: 0
}

.cp-menu .fn-clear {
	zoom: 1
}

.cp-menu .fn-hide {
	display: none
}

.cp-menu .fn-left {
	float: left
}

.cp-menu .fn-right {
	float: right
}

.cp-menu .menu-clear {
	clear: both;
	height: 0;
	line-height: 0;
	font-size: 0
}
/*圆角*/
.cp-menu-radius {
	width: auto;
	overflow: visible;
	font-size: 12px;
	height: 14px;
	line-height: 14px;
	cursor: pointer;
	background-image: url(#);
	_background-image: url(#);
	background-position: right -15px;
	background-repeat: no-repeat
}

.cp-menu-radius .cp-menu-radius-num {
	padding-left: 7px;
	margin-right: 6px;
	color: #fff;
	white-space: nowrap;
	text-align: center;
	line-height: 14px;
	_line-height: 15px;
	font-size: 12px;
	min-width: 6px;
	max-width: 48px;
	background-image: url(#);
	background-image: url(#) \9;
	background-position: 0 0;
	background-repeat: no-repeat
}
/*小ICON，new hot 人气 箭头 奖 灯泡*/
.cp-menu-ico-new {
	width: 9px;
	height: 16px;
	display: block;
	font-size: 0;
	line-height: 0;
	overflow: hidden;
	background: url(#) 0 0 no-repeat
}

.cp-menu-ico-hot {
	width: 9px;
	height: 12px;
	display: block;
	font-size: 0;
	line-height: 0;
	overflow: hidden;
	background: url(#) 0 -270px no-repeat
}

.cp-menu-ico-popularity {
	width: 23px;
	height: 17px;
	display: block;
	font-size: 0;
	line-height: 0;
	overflow: hidden;
	background: url(#) 0 0 no-repeat
}

.cp-menu-ico-specials {
	width: 23px;
	height: 17px;
	display: block;
	font-size: 0;
	line-height: 0;
	overflow: hidden;
	background: url(#) 0 0 no-repeat
}

.cp-menu-ico-official {
	width: 23px;
	height: 17px;
	display: block;
	font-size: 0;
	line-height: 0;
	overflow: hidden;
	background: url(#) 0 0 no-repeat
}

.cp-menu-ico-bulb {
	width: 15px;
	height: 17px;
	display: block;
	font-size: 0;
	line-height: 0;
	overflow: hidden;
	background: url(#) 0 -303px no-repeat;
	_background: url(#) 0 -303px no-repeat
}

.cp-menu-ico-arrow {
	width: 7px;
	height: 13px;
	font-size: 0;
	line-height: 12px;
	overflow: hidden;
	background: url(#) 0 -139px no-repeat;
	_background: url(#) 0 -139px no-repeat
}
/*服务图标*/
.cp-menu-service-ico {
	width: 30px;
	height: 25px;
	display: block;
	cursor: pointer;
	background: url(#) no-repeat 0 0;
	_background: url(#) no-repeat 0 0
}

.cp-menu-ico-zuanshi {
	background-position: 0 0
} /*钻石会员*/
.cp-menu-ico-kanxin {
	background-position: 0 -25px
} /*看信包月*/
.cp-menu-ico-juguang {
	background-position: 0 -50px
} /*聚光灯*/
.cp-menu-ico-paiming {
	background-position: 0 -75px
} /*排名提前*/
.cp-menu-ico-vip {
	background-position: 0 -100px
} /*VIP会员*/
.cp-menu-ico-gift {
	background-position: 0 -125px
} /*礼物商城*/
.cp-menu-ico-paycenter {
	background-position: 0 -150px
} /*购买邮票*/
.cp-menu-ico-account {
	background-position: 0 -175px
} /*邮票账户*/
.cp-menu-ico-paoxue {
	background-position: 0 -200px
} /*恋爱课堂*/
.cp-menu-ico-more {
	background-position: 0 -225px
} /*更多应用*/
.cp-menu-ico-lianai {
	background-position: 0 -250px
} /*恋爱宝*/
.cp-menu-ico-yue {
	background-position: 0 -278px
} /*约会吧*/
.cp-menu-ico-shuang {
	background-position: 0 -309px
} /*缘分期*/
/*卡片区：头像*/
.cp-menu-card-user {
	border: solid 1px #d9d9d9;
	background: #fff;
	margin-bottom: 15px;
	font: 12px/1.5 tahoma, arial, \5b8b\4f53;
	padding-top: 20px
}

.cp-menu-card-user .menu-avatar {
	width: 168px;
	height: 168px;
	overflow: hidden;
	position: relative;
	margin: 0 auto 7px
}

.cp-menu-card-user .menu-avatar .menu-avatar-mask {
	width: 168px;
	height: 35px;
	background: #000;
	-moz-opacity: 0.5;
	opacity: .50;
	filter: alpha(opacity = 50);
	position: absolute;
	left: 0;
	bottom: 0;
	z-index: 10
}

.cp-menu-card-user .menu-avatar-110x168 {
	width: 110px;
	height: 135px
}

.cp-menu-card-user .menu-avatar-110x168 .menu-avatar-mask {
	width: 110px;
	height: 24px
}

.cp-menu-card-user .menu-avatar a.modify-infos:link, .cp-menu-card-user .menu-avatar a.modify-infos:hover,
	.cp-menu-card-user .menu-avatar a.modify-infos:visited,
	.cp-menu-card-user .menu-avatar a.modify-infos:active {
	width: 110px;
	height: 24px;
	line-height: 24px;
	text-align: center;
	text-decoration: none;
	color: #aaa;
	display: block;
	position: absolute;
	left: 0;
	bottom: 0;
	z-index: 11
}

.cp-menu-card-user .menu-avatar a.modify-infos:hover {
	color: #fff
}
/*卡片区：链接*/
.cp-menu-card-link {
	color: #2c81d6;
	line-height: 26px;
	text-align: left;
	margin-bottom: 14px;
	padding-left: 27px
}

.cp-menu-card-link a.menu:link, .cp-menu-card-link a.menu:hover,
	.cp-menu-card-link a.menu:visited, .cp-menu-card-link a.menu:active {
	color: #2c81d6;
	text-decoration: none;
	display: inline-block;
	height: 26px;
	line-height: 26px
}

.cp-menu-card-link a.menu:hover {
	text-decoration: underline
}

.cp-menu-card-link a.cp-menu-ico-jiang:link, .cp-menu-card-link a.cp-menu-ico-jiang:hover,
	.cp-menu-card-link a.cp-menu-ico-jiang:visited, .cp-menu-card-link a.cp-menu-ico-jiang:active
	{
	background: url(#) 97px 6px no-repeat;
	display: block
}

.cp-menu-card-note {
	width: 120px;
	height: 47px;
	margin: -9px auto 15px;
	padding: 10px 14px 0;
	background: url('#') no-repeat;
	font: 12px/18px 'SimSun';
	color: #ff687b;
}

.menu-status {
	display: inline-block;
	color: #666
}

/*卡片区：收件箱谁看过我*/
.cp-menu-card-mail {
	position: relative
}

.cp-menu-card-mail span {
	font-family: Microsoft YaHei;
	font-size: 14px;
	color: #fff;
	line-height: 36px
}

.cp-menu-card-mail a.menu:link, .cp-menu-card-mail a.menu:hover,
	.cp-menu-card-mail a.menu:visited, .cp-menu-card-mail a.menu:active {
	display: block;
	background: #0098c2;
	height: 36px;
	font-family: Microsoft YaHei;
	font-size: 14px;
	color: #fff;
	line-height: 36px;
	text-align: center;
	text-decoration: none;
	position: relative
}

.cp-menu-card-mail a.menu:hover {
	background: #008BB1;
	text-decoration: none
}

.cp-menu-card-mail a.menu-left {
	width: 83px;
	float: left
}

.cp-menu-card-mail a.menu-right {
	width: 84px;
	float: right
}

.cp-menu-card-mail .menu-bulb {
	width: 15px;
	height: 17px;
	position: absolute;
	cursor: pointer;
	left: 5px;
	top: -10px;
	line-height: 0
} /*灯泡*/
.cp-menu-card-mail .msglayer {
	background: url(#) no-repeat 0 0;
	width: 139px;
	height: 86px;
	position: absolute;
	top: -90px;
	left: 0px;
	z-index: 31;
	display: none
} /*引导弹层*/
.cp-menu-card-mail .msglayer .sxLayer {
	width: 139px;
	height: 86px;
	display: inline-block;
	background: none
}

.cp-menu-card-mail .msglayer .sxLayerClose {
	cursor: pointer;
	position: absolute;
	top: 3px;
	right: 14px;
	width: 20px;
	height: 20px;
	background: none;
	z-index: 50
}

.cp-menu-card-mail .number {
	font-family: \5b8b\4f53, simsun, '宋体', 'Hiragino Sans GB';
	font-size: 12px;
	height: 14px;
	line-height: 14px;
	position: absolute;
	right: 0;
	top: -7px;
	cursor: pointer
}
/*我的佳缘左侧栏目导航*/
.cp-menus {
	border: solid 1px #d9d9d9;
	background: #fff;
	padding-bottom: 10px;
	font-family: \5b8b\4f53, simsun, '宋体', 'Hiragino Sans GB', Arial,
		Helvetica, sans-serif
} /*菜单外框*/
/*菜单头，我的佳缘首页链接*/
.cp-menu-index {
	height: 40px;
	border-bottom: solid 1px #d9d9d9;
	margin-bottom: 9px
}

.cp-menu-index a.menu:link, .cp-menu-index a.menu:hover, .cp-menu-index a.menu:visited,
	.cp-menu-index a.menu:active {
	height: 40px;
	display: block;
	font-family: Microsoft YaHei;
	font-size: 14px;
	line-height: 40px;
	color: #333;
	padding: 0 0 0 55px;
	text-decoration: none;
	background: url(#) 29px -48px no-repeat
}

.cp-menu-index a.menu:hover {
	background-position: 29px -88px;
	color: #ff546a
}
/*顶级菜单样式*/
.cp-menu-items .cp-menu-title {
	display: block;
	height: 34px
}

.cp-menu-items .cp-menu-title a.menu:link, .cp-menu-items .cp-menu-title a.menu:hover,
	.cp-menu-items .cp-menu-title a.menu:visited, .cp-menu-items .cp-menu-title a.menu:active
	{
	display: block;
	height: 34px;
	color: #333;
	text-decoration: none
}

.cp-menu-items .cp-menu-title a.menu:hover {
	background: #eee
}

.cp-menu-items .cp-menu-title span.menuname {
	padding-left: 24px;
	height: 34px;
	float: left;
	display: inline-block;
	font-size: 14px;
	line-height: 34px;
	color: #333;
	font-weight: bold;
	font-family: Microsoft YaHei
}

.cp-menu-items .cp-menu-title span.namecur {
	cursor: pointer
}

.cp-menus .cp-menu-title a.menu .cp-menu-ico-arrow {
	display: inline-block;
	margin: 11px 0 0 8px;
	_margin-top: 10px
}
/*二级菜单样式，默认效果（文本类型）*/
.cp-menu-items {
	padding-top: 10px;
	margin-bottom: 8px
}

.cp-menu-items li {
	float: left;
	width: 168px;
	height: 32px;
	font-size: 12px;
	line-height: 32px
}

.cp-menu-items li.oning {
	background: #e5e5e5
}

.cp-menu-items li a.menu:link, .cp-menu-items li a.menu:hover,
	.cp-menu-items li a.menu:visited, .cp-menu-items li a.menu:active {
	height: 32px;
	line-height: 32px;
	display: block;
	padding: 0 10px 0 24px;
	color: #666;
	position: relative;
	text-decoration: none
}

.cp-menu-items li a.menu:hover {
	background: #eee
}

.cp-menu-items li .cp-menu-item-name {
	font-size: 12px;
	height: 32px;
	line-height: 32px;
	text-align: left;
	color: #666;
	cursor: pointer
}

.cp-menu-items li .cp-menu-link-place {
	position: absolute;
	bottom: 15px;
	right: 147px;
	z-index: 10
}

.cp-menu-items li .cp-menu-item-name {
	font-size: 12px;
	height: 32px;
	line-height: 32px;
	text-align: left;
	color: #666;
	cursor: pointer;
	_padding-top: 3px;
	_height: 29px;
	_line-height: 29px
}

.cp-menu-items li .cp-menu-link-place {
	position: absolute;
	bottom: 15px;
	right: 147px;
	z-index: 10;
	cursor: pointer
}

.cp-menu-items li .cp-menu-item-number {
	font-family: \5b8b\4f53, simsun, '宋体', 'Hiragino Sans GB';
	font-size: 12px;
	height: 14px;
	line-height: 14px;
	position: absolute;
	right: 10px;
	top: 9px;
	cursor: pointer
}
/*二级菜单样式，图片类型*/
.cp-menu-items ul.cp-menu-image {
	float: left;
	padding: 0 12px
}

.cp-menu-items li.cp-menu-service-img {
	width: 72px;
	height: 43px;
	text-align: center;
	background-color: #fff;
	padding: 7px 0
}

.cp-menu-items li.cp-menu-service-img a.menu:link, .cp-menu-items li.cp-menu-service-img a.menu:hover,
	.cp-menu-items li.cp-menu-service-img a.menu:visited, .cp-menu-items li.cp-menu-service-img a.menu:active
	{
	height: 43px;
	line-height: 18px;
	width: 50px;
	margin: 0 auto;
	padding-left: 0;
	padding-right: 0
}

.cp-menu-items li.cp-menu-service-img a.menu:hover {
	background: #fff
}

.cp-menu-items li.cp-menu-service-img i.cp-menu-service-ico {
	display: block;
	margin: 0 auto;
	cursor: pointer
}

.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-zuanshi
	{
	background-position: -30px 0
}

.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-kanxin
	{
	background-position: -30px -25px
}

.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-juguang
	{
	background-position: -30px -50px
}

.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-paiming
	{
	background-position: -30px -75px
}

.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-vip {
	background-position: -30px -100px
}

.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-gift {
	background-position: -30px -125px
}

.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-paycenter
	{
	background-position: -30px -150px
}

.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-account
	{
	background-position: -30px -175px
}

.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-paoxue
	{
	background-position: -30px -200px
}

.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-more {
	background-position: -30px -225px
}

.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-lianai
	{
	background-position: -30px -250px
}

.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-zuanshi
	{
	background-position: -60px 0
}

.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-kanxin
	{
	background-position: -60px -25px
}

.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-juguang
	{
	background-position: -60px -50px
}

.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-paiming
	{
	background-position: -60px -75px
}

.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-vip {
	background-position: -60px -100px
}

.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-gift {
	background-position: -60px -125px
}

.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-paycenter
	{
	background-position: -60px -150px
}

.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-account
	{
	background-position: -60px -175px
}

.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-paoxue
	{
	background-position: -60px -200px
}

.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-more {
	background-position: -60px -225px
}

.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-lianai
	{
	background-position: -60px -250px
}

.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-yue {
	background-position: -30px -278px
}

.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-yue {
	background-position: -60px -278px
}

.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-shuang
	{
	background-position: -32px -309px
}

.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-shuang
	{
	background-position: -60px -309px
}

.cp-menu-items li.cp-menu-service-img .cp-menu-item-name {
	width: 50px;
	font-size: 12px;
	height: 18px;
	line-height: 18px;
	text-align: center;
	color: #666;
	margin: 0 auto;
	cursor: pointer
}

.cp-menu-items li.cp-menu-service-img .cp-menu-link-place {
	position: absolute;
	top: -8px;
	left: -4px;
	z-index: 10;
	cursor: pointer
}

.cp-menu-items li.cp-menu-service-img .cp-menu-item-number {
	font-family: \5b8b\4f53, simsun, '宋体', 'Hiragino Sans GB';
	font-size: 12px;
	height: 14px;
	line-height: 14px;
	position: absolute;
	right: 0px;
	top: -9px;
	cursor: pointer;
	display: none
}
/*左侧样式代码结束*/
/*左侧推荐完善资料文字样式开始*/
.cp-menu-card-notes {
	width: 120px;
	margin: -9px auto 15px;
	padding: 10px 14px;
	background: #f7f7f7;
	font: 12px/18px 'SimSun';
	color: #ff687b;
	border-radius: 3px;
}

/*左侧推荐完善资料文字样式结束*/
</style>

	<script type="text/javascript">
		//初始化Ajax对象
		function initAjax() {
			var ajax = false;
			if (window.XMLHttpRequest) {
				ajax = new XMLHttpRequest();
			} else {
				try {
					ajax = new ActiveXObject('Msxml2.XMLHTTP');
				} catch (e) {
					ajax = new ActiveXObject('Microsoft.XMLHTTP');
				}
			}
			return ajax;
		}
		//获取Ajax文件的路径
		function get_ajax_path() {
			var path = window.location.pathname;
			var path_array = new Array();
			var path_length = path.split("/").length;
			var paths = './';
			if (path_length > 3) {
				paths = '';
				for (var i = 0; i < path_length - 3; i++) {
					paths += '../'
				}
			}
			return paths;
		}
		//应用统计数据
		function get_app_num() {
			var xmlHttp = initAjax();
			if (typeof (xmlHttp) != "object") {
				return;
			}
			var url = get_ajax_path() + "dynmatch/ajax/get_app_num.php";
			xmlHttp.onreadystatechange = function() {
				if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
					var datas = xmlHttp.responseText;
					if (datas != '') {
						var objData = eval("(" + datas + ")"); //接收返回的数据
						var top_lookedme = 0; //初始化谁看过我数据
						for ( var key in objData) {
							if (document.getElementById(objData[key].id)) {
								if (objData[key].hasOwnProperty('tips')) { //存在提示KEY就将提示信息显示在数字前
									document.getElementById(objData[key].id).innerHTML = objData[key].tips
											+ objData[key].val;
								} else {
									document.getElementById(objData[key].id).innerHTML = objData[key].val;
								}
								document.getElementById(objData[key].id).style.display = '';
								if (objData[key].id == 'visitor_new'
										|| objData[key].id == 'praise_me_new'
										|| objData[key].id == 'fans_new') {
									top_lookedme += parseInt(objData[key].val); //累加谁看过我，关注我等
									if (top_lookedme > 99) {
										top_lookedme = '99+';
									}
								}
								document.getElementById('menu_looked_me').innerHTML = top_lookedme;
								document.getElementById('menu_looked_me_box').style.display = '';
							}
						}
					}
				}
			}
			//xmlHttp.open("GET", url, true);
			//xmlHttp.send(null);
		}
	</script>
	<!--左侧栏目 开始-->
	<div class="cp-menu">
		<!--会员介绍-->
		<div class="cp-menu-card-user">
			<div class="menu-avatar menu-avatar-110x168">
				<a href="#" onmousedown="javascript:void(0);" target="_blank"><img
					src="./images/myTrueLove/portrait.jpg" width="110" height="135"
					id="user_avatar"></a>
			</div>
			<div class="cp-menu-card-link">
				<a class="menu" href="##cp_kpd" title="立刻提升" target="_blank"
					onmousedown="javascript:void(0);">靠谱度综合评分:2.7分</a> <a
					class="menu cp-menu-ico-jiang" href="#" target="_blank"
					onclick="javascript:void(0);">婚恋个性匹配问答</a> <a class="menu" href="#"
					onmousedown="javascript:void(0);" target="_blank">我的资料45.5分</a> [<a
					class="menu" href="#" onmousedown="javascript:void(0);"
					target="_blank">预览</a>]
			</div>
			<div class="cp-menu-card-mail fn-clear">
				<a class="menu menu-left" href="#" onmousedown="javascript:void(0);"
					title="未读信件2封"> <span>收件箱</span>
					<div class="cp-menu-radius number fn-right">
						<div class="cp-menu-radius-num">2</div>
					</div>
				</a> <a class="menu menu-right" href="#"
					onmousedown="send_jy_pv2(cp_menu_area_lookedme|158806191);"> <span>谁看过我</span>
					<div class="cp-menu-radius number" id="menu_looked_me_box" style="">
						<div class="cp-menu-radius-num" id="menu_looked_me">0</div>
					</div>
				</a>
				<div class="menu-clear"></div>
			</div>
		</div>
		<!--会员介绍 结束-->

		<div class="cp-menus">
			<div class="cp-menu-index">
				<a class="menu" href="#" onmousedown="javascript:void(0);">我的佳缘首页</a>
			</div>
			<div class="cp-menu-items fn-clear">
				<div class="cp-menu-title fn-clear">
					<a class="menu" href="#" target="_blank"
						onmousedown="javascript:void(0);"> <span
						class="menuname namecur">服务中心</span> <i class="cp-menu-ico-arrow"></i>
					</a>
				</div>
				<ul class="cp-menu-image">
					<li class=" cp-menu-service-img fn-left"><a class="menu"
						id="service_1_a_1" target="_blank" href="#"
						onmousedown="javascript:void(0);"> <i
							class="cp-menu-service-ico cp-menu-ico-zuanshi"></i>
							<div class="cp-menu-item-name">钻石会员</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="s41" class="cp-menu-radius-num" style="display: none"></div>
								</div>
							</div> <i class="cp-menu-ico-specials cp-menu-link-place"></i>
					</a></li>
					<li class=" cp-menu-service-img fn-left"><a class="menu"
						id="service_1_a_2" target="_blank" href="#"
						onmousedown="javascript:void(0);"> <i
							class="cp-menu-service-ico cp-menu-ico-kanxin"></i>
							<div class="cp-menu-item-name">看信包月</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="s37" class="cp-menu-radius-num" style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" cp-menu-service-img fn-left"><a class="menu"
						id="service_4" target="_blank" href="#"
						onmousedown="javascript:void(0);"> <i
							class="cp-menu-service-ico cp-menu-ico-juguang"></i>
							<div class="cp-menu-item-name">
								<cite style="padding-right: 6px">聚</cite><cite
									style="padding-right: 6px">光</cite><cite>灯</cite>
							</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="fate" class="cp-menu-radius-num" style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" cp-menu-service-img fn-left"><a class="menu"
						id="service_1_a_4" target="_blank" href="#"
						onmousedown="javascript:void(0);"> <i
							class="cp-menu-service-ico cp-menu-ico-paiming"></i>
							<div class="cp-menu-item-name">排名提前</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="s5" class="cp-menu-radius-num" style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" cp-menu-service-img fn-left"><a class="menu"
						id="service_1_a_3" target="_blank" href="#"
						onmousedown="javascript:void(0);"> <i
							class="cp-menu-service-ico cp-menu-ico-vip"></i>
							<div class="cp-menu-item-name">VIP 会员</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="s31" class="cp-menu-radius-num" style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" cp-menu-service-img fn-left"><a class="menu"
						id="service_3" target="_blank" href="#"
						onmousedown="javascript:void(0);"> <i
							class="cp-menu-service-ico cp-menu-ico-gift"></i>
							<div class="cp-menu-item-name">礼物商城</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="giftmall" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" cp-menu-service-img fn-left"><a class="menu"
						id="service_1_a_6" target="_blank" href="##author_wp"
						onmousedown="javascript:void(0);"> <i
							class="cp-menu-service-ico cp-menu-ico-paycenter"></i>
							<div class="cp-menu-item-name">充佳缘宝</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="23" class="cp-menu-radius-num" style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" cp-menu-service-img fn-left"><a class="menu"
						id="service_2" target="_blank" href="#"
						onmousedown="javascript:void(0);"> <i
							class="cp-menu-service-ico cp-menu-ico-account"></i>
							<div class="cp-menu-item-name">我的账户</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="stamps" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" cp-menu-service-img fn-left"><a class="menu"
						id="menu_id_insurance" target="_blank" href="#"
						onmousedown="javascript:void(0);"> <i
							class="cp-menu-service-ico cp-menu-ico-lianai"></i>
							<div class="cp-menu-item-name">佳缘金融</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="app_id_insurance" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div> <i class="cp-menu-ico-official cp-menu-link-place"></i>
					</a></li>
					<li class=" cp-menu-service-img fn-left"><a class="menu"
						id="menu_id_coolpay" target="_blank" href="#"
						onmousedown="javascript:void(0);"> <i
							class="cp-menu-service-ico cp-menu-ico-shuang"></i>
							<div class="cp-menu-item-name">缘分期</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="app_id_coolpay" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div> <i class="cp-menu-ico-official cp-menu-link-place"></i>
					</a></li>
				</ul>
			</div>
			<div class="cp-menu-items fn-clear">
				<div class="cp-menu-title fn-clear">
					<span class="menuname">佳缘应用</span>
				</div>
				<ul>
					<li class=" "><a class="menu" id="jy_club_id" target="_blank"
						href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">佳缘俱乐部</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="mission_gold" class="cp-menu-radius-num">金豆50</div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="menu_id_taohuayuan"
						target="_blank" href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">桃花源</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="app_id_taohuayuan" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div> <i class="cp-menu-ico-new cp-menu-link-place"></i>
					</a></li>
					<li class=" "><a class="menu" id="dafuweng_m" target="_blank"
						href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">爱情大富翁</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="dafuweng_flag" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div> <i class="cp-menu-ico-hot cp-menu-link-place"></i>
					</a></li>
					<li class=" "><a class="menu" id="app_fishingjoy"
						target="_blank" href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">捕鱼寻缘</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="app_fishingjoy_id" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="app_11" target="_blank"
						href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">暴走的金蛋</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="app11" class="cp-menu-radius-num">3</div>
								</div>
							</div> <i class="cp-menu-ico-hot cp-menu-link-place"></i>
					</a></li>
					<li class=" "><a class="menu" id="app_1" target="_blank"
						href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">心电感应</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="app_telepathy" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="menu_id_hongbao"
						target="_blank" href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">领红包</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="app_id_hongbao" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div> <i class="cp-menu-ico-hot cp-menu-link-place"></i>
					</a></li>
					<li class=" "><a class="menu" id="Usercp_app_flowerball"
						target="_blank" href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">猜你喜欢</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="Usercp_apps_guesslike" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="menu_id_wenda"
						target="_blank" href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">个性匹配问答</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="app_id_wenda" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="app_0" target="_blank"
						href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">地图搜索</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="app0" class="cp-menu-radius-num">新版</div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="menu_id_app_id_face"
						target="_blank" href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">人脸搜索</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="app_id_face" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="menu_id_xianshi"
						target="_blank" href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">0元购会员</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="app_id_xianshi" class="cp-menu-radius-num">限时</div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="menu_id_fate_master"
						target="_blank" href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">缘分圈</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="app_id_fate_master" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
				</ul>
			</div>
			<div class="cp-menu-items fn-clear">
				<div class="cp-menu-title fn-clear">
					<span class="menuname">交友记录</span>
				</div>
				<ul>
					<li class=" "><a class="menu" id="friends_1" target="_self"
						href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">好友与联系人</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="friends" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="visitor_new_id"
						target="_self" href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">谁看过我</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="visitor_new" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="click_new_id" target="_self"
						href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">我看过谁</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="click_new" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="praise_me_new_id"
						target="_self" href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">谁赞过我</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="praise_me_new" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="fans_new_id" target="_self"
						href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">谁关注我</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="fans_new" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
				</ul>
			</div>
			<div class="cp-menu-items fn-clear">
				<div class="cp-menu-title fn-clear">
					<span class="menuname">完善资料</span>
				</div>
				<ul>
					<div
						style="width: 120px; height: 47px; margin: 0px auto 10px; padding: 10px 14px 0; background: url(#) no-repeat; font: 12px/18px; color: #ff687b; line-height: 150%">资料越完善同等条件我们将优先推荐您</div>
					<li class=" "><a class="menu" id="info_1" target="_blank"
						href="#" onmousedown="send_jy_pv2(Usercpn_info_0);">
							<div class="cp-menu-item-name">我的资料</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="0" class="cp-menu-radius-num" style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="info_1_1" target="_blank"
						href="#" onmousedown="send_jy_pv2(Usercpn_info_0_0);">
							<div class="cp-menu-item-name">我的相册</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="0" class="cp-menu-radius-num" style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="info_1_2" target="_blank"
						href="#" onmousedown="send_jy_pv2(Usercpn_info_0_2);">
							<div class="cp-menu-item-name">我的缘分圈</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="111" class="cp-menu-radius-num" style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="info_2" target="_self"
						href="#" onmousedown="send_jy_pv2(Usercpn_info_1);">
							<div class="cp-menu-item-name">身份验证</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="certify" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="info_2_1" target="_self"
						href="#" onmousedown="send_jy_pv2(Usercpn_info_1_0);">
							<div class="cp-menu-item-name">手机验证</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="phone" class="cp-menu-radius-num">有奖</div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="menu_id_zmxyentity"
						target="_blank" href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">芝麻认证</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="zmxyentity" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="info_2_2" target="_self"
						href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">邮箱认证</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="email" class="cp-menu-radius-num"
										style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="info_3" target="_self"
						href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">修改择友条件</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="13" class="cp-menu-radius-num" style="display: none"></div>
								</div>
							</div>
					</a></li>
					<li class=" "><a class="menu" id="info_4" target="_self"
						href="#" onmousedown="javascript:void(0);">
							<div class="cp-menu-item-name">发表成功故事</div>
							<div class="cp-menu-item-number">
								<div class="cp-menu-radius fn-right">
									<div id="15" class="cp-menu-radius-num" style="display: none"></div>
								</div>
							</div>
					</a></li>
				</ul>
			</div>

		</div>
	</div>
	<script type="text/javascript">
		/*
		 */
		var ads = "";
		var porurait = document.getElementById("user_avatar");
		porurait.onmouseover = function() {
			//this.src = ads+"portrait-1.jpg"
		}, porurait.onmouseout = function() {
			//this.src = ads+"portrait.jpg"
		};
		/*
		 */
		get_app_num(); //获取佳缘应用的数字
	</script>

	<!--右侧栏目 开始-->
	<div id="bgdiv"
		style="position: absolute; display: none; left: 0px; top: 0px; width: 100%; height: 100%; filter: alpha(opacity = 30); -moz-opacity: 0.3; opacity: 0.3; background-color: #000000; z-index: 111115;"></div>
	<div id="zshutj_pop_div" style="display: none"></div>
	<div id="zshutj_pop_div_2" style="display: none"></div>
	<div class="my-jiayuan-doc815 fn-right fn-marginTop15">

		<div>
			<!--中间部分-->
			<div class="my-jiayuan-doc560">
				<div class="my-jiayuan-border">
					<!--照片 B-->
					<div class="mydata-uploadPhotos" style="display: block;">
						<a class="mydata-uploadPhotos-close" href="javascript:;"
							title="关闭">&nbsp;</a> <a href="#" target="_blank"
							class="upbutton" onmousedown="javascript:void(0);">立即上传</a>
					</div>
					<script type="text/javascript">
						/*$(function(){
							$(".mydata-uploadPhotos").slideDown(1500);
							$(".mydata-uploadPhotos-close").click(function(){
								$(".mydata-uploadPhotos").hide();
								$('.mydata-specials').slideDown(1500);
							});
						});*/
						//展示统计
						//send_jy_pv2('|1012535_2|');
					</script>


					<div class="mydata-specials" style="display: none">
						<span class="channel_25">
							<h3 class="mydata-specials-title">会员签到有礼</h3>
							<div class="mydata-specials-icon">
								<i class="today-specials-icon "><img
									src="./images/myTrueLove/today-specials-icon.gif" alt="">
								</i>
							</div>
							<div class="mydata-specials-text">
								<p>今天，你签了吗？签到越勤奋，奖励越丰厚。</p>
								<br>
								<p>
									明天再来，领取<span style="color: rgb(255, 102, 0);">看信宝1个+50金豆</span>！<a
										href="javascript:;" onclick="showClubFuli(1);"
										class="fn-public">查看规则</a>
								</p>
							</div>
						</span>
					</div>



					<!--今日提醒 结束-->
					<!--今日佳缘速配-->




					<div id="usercp_good_user">
						<div class="mydata-member">
							<div class="mydata-memberTop">
								<h2 class="mydata-memberH2">白富美</h2>
							</div>
							<div class="fn-clear mydata-memberMain">
								<div class="mydata-mLeft">
									<a href="#" target="_blank" class="mydata-memberImg"> <img
										src="./images/myTrueLove/8af76181d_avatar_p.jpg" alt="">
									</a>
								</div>
								<div class="mydata-mRight">
									<div class="mydata-mRone">
										<span class="mydata-memberTxt"> <a href="#"
											target="_blank">母猴子</a><a></a>
										</span> <span class="mydata-memberLabel"> <span
											class="mydata-memberLico"></span> <span
											class="mydata-memberLtxt"> 高薪、高诚信、高魅力值 </span>
										</span>
									</div>
									<div class="mydata-mRtwo">
										<p class="member_ico_box ">
											<span class="fn-left">诚信等级：</span> <span
												class="star_ico fn-clear"> <img
												src="./images/myTrueLove/star_icon.gif"
												title="佳缘的星级用户为国家承认的实名用户，具有比非星级用户更高的可信度与真实性。"><img
												src="./images/myTrueLove/star_icon.gif"
												title="佳缘的星级用户为国家承认的实名用户，具有比非星级用户更高的可信度与真实性。"><img
												src="./images/myTrueLove/star_icon.gif"
												title="佳缘的星级用户为国家承认的实名用户，具有比非星级用户更高的可信度与真实性。"><img
												src="./images/myTrueLove/star_icon.gif"
												title="佳缘的星级用户为国家承认的实名用户，具有比非星级用户更高的可信度与真实性。">
											</span> <span class="member_ico fn-clear"> <a
												title="身份证 户口本 工作证 " href="#"
												onmousedown="javascript:void(0);" target="_blank"><i
													class="member_ico3"></i></a><a title="邮箱认证" href="#"
												onmousedown="javascript:void(0);" target="_blank"><i
													class="member_ico11"></i></a><a title="学历证件" href="#"
												onmousedown="javascript:void(0);" target="_blank"><i
													class="member_ico14"></i></a><a title="手机认证" href="#"
												onmousedown="javascript:void(0);" target="_blank"><i
													class="member_ico18"></i></a><a title="财产证件" href="#"
												onmousedown="javascript:void(0);" target="_blank"><i
													class="member_ico20"></i></a><a title="视频认证" href="#"
												onmousedown="javascript:void(0);" target="_blank"><i
													class="member_ico21"></i></a><a title="离异证件" href="#"
												onmousedown="javascript:void(0);" target="_blank"><i
													class="member_ico23"></i></a><a title="芝麻信用" href="#"
												onmousedown="javascript:void(0);" target="_blank"><i
													class="member_ico24"></i></a>
											</span>
										</p>
										<p class="col_999">28岁，长沙，158cm，本科，2000～5000元</p>
									</div>
									<div class="mydata-mRthree">
										<a class="member_btn4" target="_blank" href="javascript:;"
											onmousedown="jy_head_function.lbg_show(usercp_good_user_tc)">联系TA</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div style="display: none;" id="usercp_good_user_tc">
						<div class="mydata-memberAlert">
							<a href="javascript:jy_head_function.lbg_hide();"
								class="mydata-memberClose"></a>
							<div class="mydata-memberAh2">开通钻石会员</div>
							<div class="mydata-memberAtxt">开通钻石会员即可联系优质热门用户，获得更多恋爱机会。</div>
							<div class="mydata-memberAbtns">
								<a href="#" class="contact-btn">联系</a> <a
									href="javascript:jy_head_function.lbg_hide();"
									class="continue-btn m-l20">继续单身</a>
							</div>
						</div>
					</div>

					<!--优质会员结束-->
					<!--佳缘服务-->
					<div id="ad_pos_74" class="interimH278" style="display: block">
						<div class="mydata-limited">
							<div class="mydata-limited-top fn-clear">
								<h3>限时特惠</h3>
								<div class="time" id="countdown" style="width: 160px;">
									<span id="hour">05</span><strong>小时</strong><span id="minute">09</span><strong>分</strong><span
										id="second">00.6</span><strong>秒</strong>
								</div>
							</div>
							<div class="mydata-limited-note">
								<i class="mydata-limited-zshy"></i>
								<p>购买全年钻石会员立减700！可免费看信，发信对方免费看，含VIP特权！</p>
							</div>
							<div class="mydata-limited-body fn-clear">
								<div class="mydata-limited-advL">
									<div class="mydata-limited-title">
										<div class="mydata-limited-name">钻石会员</div>
										<div class="mydata-limited-num">12</div>
										<div class="mydata-limited-gy">个月</div>
									</div>
									<div class="mydata-limited-yh">
										<div class="mydata-limited-yhdiv">
											<p>2.9折</p>
										</div>
									</div>
									<div class="mydata-limited-thj">
										特惠价&nbsp;<span class="mydata-limited-color">299</span>佳缘宝<span
											class="mydata-limited-yjg"
											style="text-decoration: none; color: #FE8723;">减700佳缘宝</span>
									</div>
									<a href="#" target="_blank"
										class="mydata-limited-open mydata-limited-leftbutton">马上开通</a>
								</div>
								<div class="mydata-limited-advR">
									<div class="mydata-limited-titleR">
										<div class="mydata-limited-name">钻石会员</div>
										<div class="mydata-limited-num">1</div>
										<div class="mydata-limited-gy">个月</div>
									</div>
									<div class="mydata-limited-tehui">
										特惠价&nbsp;<span class="mydata-limited-color">199</span>佳缘宝
										<!--<span class="mydata-limited-yjg" style="text-decoration: none;color: #FE8723;">立减100-->
									</div>
									<a href="#" target="_blank"
										class="mydata-limited-open mydata-limited-rightbutton">马上开通</a>
								</div>
							</div>
						</div>
					</div>


					<!--<iframe id="tuangou_iframe" width="558" allowTransparency="true" height="0" frameborder="0" scrolling="no" src=""></iframe>-->
					<!--佳缘服务结束-->
					<div class="clear_line"></div>
					<!--谁看过我-->
					<div class="mydata-interest fn-clear">
						<div class="mydata-interest-top">
							<h3>
								<a target="_blank" onmousedown="javascript:void(0);" href="#"
									id="skgw" class="fn-public">哪些人对我感兴趣</a>
							</h3>
							<a target="_blank" onmousedown="javascript:void(0);" href="#"
								class="mydata-interest-more">新60人 &gt;</a>
						</div>
						<div class="whoBox fn-clear" id="person">
							<a href="#" onmousedown="javascript:void(0);"
								class="fn-public person_1 onshow">谁看过我</a><a href="javascript:;"
								class="fn-public person_2 " onmousedown="javascript:void(0);">谁赞过我</a><a
								href="javascript:;" class="fn-public person_3"
								onmousedown="javascript:void(0);">谁关注我</a>
						</div>
						<div id="whoMatch" class="todayMatch">
							<div class="tabCon" style="display: block;">
								<ul>
									<div class="mydata-interest-nobody">
										<p class="mydata-interest-note">还没有人发现如此优秀的你？去主动搭讪吧！</p>
										<a href="#" target="_blank" class="mydata-interest-tijiao">搜索伴侣</a>
									</div>
								</ul>
							</div>
							<div class="tabCon personHide" style="display: none;">
								<ul>
									<div class="mydata-interest-nobody">
										<p class="mydata-interest-note">求高品质生活照~每日得赞，感情不断！</p>
										<a href="#" target="_blank" onmousedown="javascript:void(0);"
											class="mydata-interest-tijiao">马上上传</a>
										<p class="mydata-interest-good">平均每张照片获得8个异性称赞</p>
									</div>
								</ul>
							</div>
							<div class="tabCon personHide" style="display: none;">
								<ul>
									<div class="mydata-interest-nobody">
										<p class="mydata-interest-note">一大波关注者还在路上，与其等待，不如出击！</p>
										<a href="#" target="_blank" onmousedown="javascript:void(0);"
											class="mydata-interest-tijiao">搜索伴侣</a>
									</div>
								</ul>
							</div>
						</div>
					</div>

					<!-- 
								<script type="text/javascript">$(function(){var $div_li =$("#person a");$div_li.hover(function(){$(this).addClass("onshow").siblings().removeClass("onshow");var index =  $div_li.index(this);$("#whoMatch .tabCon").eq(index).show().siblings().hide();});});</script> 
								-->
					<!--谁看过我结束-->
					<!--缘分速递 开始-->


					<div>
						<div class="mydata-lamp">
							<div class="mydata-lamp-top fn-clear">
								<h3>
									<a onmousedown="javascript:void(0);" href="#" target="_blank">超级聚光灯</a>
								</h3>
								<a href="#" class="mydata-lamp-more"
									onmousedown="javascript:void(0);">我也要出现在这里 &gt;</a>
							</div>
							<div class="mydata-lamp-body">
								<ul>
									<li>
										<div class="mydata-lamp-pic">
											<a target="_blank" href="#" onmousedown="javascript:void(0);"
												class="fn-public"><img
												src="./images/myTrueLove/473c244b1_1_avatar_n.jpg"></a>
										</div>
										<div class="mydata-lamp-name">
											<a target="_blank" href="#" onmousedown="javascript:void(0);"
												class="fn-public">絮雨</a>
										</div>
										<div class="mydata-lamp-area">26岁，湖南</div>
									</li>
									<li>
										<div class="mydata-lamp-pic">
											<a target="_blank" href="#" onmousedown="javascript:void(0);"
												class="fn-public"><img
												src="./images/myTrueLove/ca7d969f2_7_avatar_n.jpg"></a>
										</div>
										<div class="mydata-lamp-name">
											<a target="_blank" href="#" onmousedown="javascript:void(0);"
												class="fn-public">...</a>
										</div>
										<div class="mydata-lamp-area">25岁，湖南</div>
									</li>
									<li>
										<div class="mydata-lamp-pic">
											<a target="_blank" href="#" onmousedown="javascript:void(0);"
												class="fn-public"><img
												src="./images/myTrueLove/90006b61b_9_avatar_n.jpg"></a>
										</div>
										<div class="mydata-lamp-name">
											<a target="_blank" href="#" onmousedown="javascript:void(0);"
												class="fn-public">甜甜</a>
										</div>
										<div class="mydata-lamp-area">26岁，湖南</div>
									</li>
									<li>
										<div class="mydata-lamp-pic">
											<a target="_blank" href="#" onmousedown="javascript:void(0);"
												class="fn-public"><img
												src="./images/myTrueLove/052629160_4_avatar_n.jpg"></a>
										</div>
										<div class="mydata-lamp-name">
											<a target="_blank" href="#" onmousedown="javascript:void(0);"
												class="fn-public">爱恨分明</a>
										</div>
										<div class="mydata-lamp-area">26岁，湖南</div>
									</li>
									<li>
										<div class="mydata-lamp-pic">
											<a target="_blank" href="#" onmousedown="javascript:void(0);"
												class="fn-public"><img
												src="./images/myTrueLove/2894b7fd9_2_avatar_n.jpg"></a>
										</div>
										<div class="mydata-lamp-name">
											<a target="_blank" href="#" onmousedown="javascript:void(0);"
												class="fn-public">国子敏</a>
										</div>
										<div class="mydata-lamp-area">25岁，湖南</div>
									</li>
									<li>
										<div class="mydata-lamp-pic">
											<a target="_blank" href="#" onmousedown="javascript:void(0);"
												class="fn-public"><img
												src="./images/myTrueLove/22c95d161_3_avatar_n.jpg"></a>
										</div>
										<div class="mydata-lamp-name">
											<a target="_blank" href="#" onmousedown="javascript:void(0);"
												class="fn-public">白色最爱～</a>
										</div>
										<div class="mydata-lamp-area">21岁，湖南</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!--缘分速递 结束-->
					<!--第一印象-->

					<div id="c_dyyx">
						<div class="mydata-Impression">
							<div class="mydata-Impression-top fn-clear">
								<h3>
									<a onmousedown="javascript:void(0);" class="fn-public">第一印象</a>
								</h3>
								<!-- <a onmousedown="javascript:void(0);"  href="#" target="_blank" class="mydata-Impression-more">对我的评价 &gt;</a> -->
							</div>
							<div class="mydata-Impression-main fn-clear">
								<div class="mydata-Impression-info">
									<div class="mydata-Impression-pic">
										<a onmousedown="javascript:void(0);" href="#" target="_blank"><img
											src="./images/myTrueLove/2b452466d_1_avatar_p.jpg"></a>
										<div class="mydata-Impression-mail">
											<input id="faxin" onclick="set_faxin();" type="checkbox"
												checked="checked" name="faxin"> <label for="faxin">把评价以信件形式发送给她</label>
										</div>
									</div>
									<div class="mydata-Impression-Text">
										<a onmousedown="javascript:void(0);" href="#" target="_blank"
											class="fn-public">猪猪</a>
										<p>27岁 163厘米</p>
										<p>湖南长沙</p>
										<p class="money-value">2000～5000元</p>
									</div>
								</div>
								<div class="mydata-Impression-links">
									<div class="mydata-Impression-tabtitle">
										你对<a onmousedown="javascript:void(0);" href="#"
											target="_blank" class="fn-public">猪猪</a>的第一印象是：
									</div>
									<div class="mydata-Impression-tab fn-clear">
										<a class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,1);"><span>清纯可爱</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,2);"><span>古灵精怪</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,3);"><span>气质佳</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,4);"><span>妩媚</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,5);"><span>成熟大气</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,6);"><span>性感风情</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,7);"><span>时尚</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="ijavascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,8);"><span>骨感</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,9);"><span>端庄大方</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,10);"><span>笑得很甜</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,11);"><span>冰雪聪明</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,12);"><span>文静</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,13);"><span>羞涩</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,14);"><span>绝佳身材</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,15);"><span>潮人范</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,16);"><span>高挑</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,17);"><span>秀外慧中</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,18);"><span>乖乖女</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,19);"><span>个性</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,20);"><span>知性有才</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,21);"><span>楚楚动人</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,22);"><span>睿智高雅</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,23);"><span>超凡脱俗</span></a> <a
											class="mydata-Impression-radius"
											onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,1,91481387,24);"><span>活泼开朗</span></a>
									</div>
									<div class="mydata-Impression-submit">
										<a onmousedown="javascript:void(0);" href="javascript:"
											onclick="pingjia(2,0,91481387,24);" class="fn-public">没感觉，下一个</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--第一印象结束-->
				</div>

			</div>



			<!--中间部分结束-->
			<div class="my-jiayuan-doc240">
				<div class="my-jiayuan-border">

					<div id="bg" style="z-index: 100000"></div>
					<!--领取弹窗 开始-->
					<div class="op_box op_clubTip" id="taskTipPop"
						style="z-index: 100001;">
						<div class="op_subbg">
							<h4>
								<a class="op_close" href="javascript:;"
									onclick="closeWin(taskTipPop);club_reload(1);"></a>
							</h4>
							<div class="op_main">
								<div class="club_tipPopMain">
									<div class="tipBox">
										<p class="f_gray_666"></p>
										<br>
										<p>
											<a href="#" target="_blank" onmousedown="javascript:void(0);"
												style="font-size: 13px; color: #F03B85; text-decoration: underline;">去佳缘俱乐部玩金豆抽奖</a>
										</p>
									</div>
									<div class="btnBox">
										<a href="javascript:;"
											onclick="closeWin(taskTipPop);club_reload(1);"
											class="btnBg orangeBtn_7932">确定</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--领取弹窗 结束-->
					<!--新会员签到弹窗 开始-->
					<div class="op_box op_clubTip" id="newUserFuliPop"
						style="z-index: 100001; width: 776px;">
						<div class="op_subbg">
							<h3>
								<a class="op_close" href="javascript:;"
									onclick="closeWin(newUserFuliPop);"></a>新会员签到奖励
							</h3>
							<div class="op_main"></div>
						</div>
					</div>

					<!-- 金豆换礼警告弹层开始 -->
					<div class="op_box jddhpopup" style="display: none"
						id="jddhpopup_2">
						<div class="op_subbg">
							<h4>
								<a href="javascript:;" class="op_close"
									onclick="closeWin(jddhpopup_2);"></a>世纪佳缘温馨提示
							</h4>
							<div class="op_main">
								<div class="club_tipPopMain">
									<div class="formBox">
										<p class="formBoxTitle">
											<span class="head1"></span>
										</p>
										<p class="Pp1 pb15" id="alert_con"></p>
										<p class="PBtn fn-clear mt10">
											<a href="#" class="Aa1_2 ml139 fn-left"
												onclick="closeWin(jddhpopup_2);" id="btn"></a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 金豆换礼警告弹层结束 -->
					<!-- 金豆换礼成功弹层开始 -->
					<div class="op_box jddhpopup" style="display: none"
						id="jddhpopup_0">
						<div class="op_subbg">
							<h4>
								<a href="javascript:;" class="op_close"
									onclick="closeWin(jddhpopup_0);window.location.reload();"></a>世纪佳缘温馨提示
							</h4>
							<div class="op_main">
								<div class="club_tipPopMain">
									<div class="formBox">
										<p class="formBoxTitle">
											<span class="head1">兑换成功!</span>
										</p>
										<p class="Pp1 pb15" id="alert_con_new">
											本次消费<span class="f_pink">0</span>金豆，您的金豆余额为<span
												class="f_pink">450</span>
										</p>
										<p class="PBtn fn-clear mt10">
											<a href="javascript:;" class="Aa1_1 ml154 fn-left"
												onclick="closeWin(jddhpopup_0);window.location.reload();">确定</a>
											<a href="#$qkk_link%7D%3E" class="Aa2_2 ml24 fn-left"
												target="_blank">去看看</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 金豆换礼成功弹层结束 -->
					<div class="JY_new_club" style="display: block;">
						<!--佳缘入口焦点图111-->
						<div id="ad_pos_116">
							<div id="jy_ad_1038">
								<ul>
									<li style="display: block;"><a href="#" target="_blank"><img
											src="./images/myTrueLove/20160727022648573.jpg" alt=""></a></li>
									<li style="display: none;"><a href="#" target="_blank"><img
											src="./images/myTrueLove/20161025032206960.jpg" alt=""></a></li>
									<li style="display: none;"><a href="#" target="_blank"><img
											src="./images/myTrueLove/20161121045337153.jpg" alt=""></a></li>
								</ul>
							</div>
							<!--  -->
							<script></script>
						</div>
						<!----
           ---->


						<h5 id="JY_new_clubTabIndex " class=" fn-clear">
							<!--JY_vipClubTabIndex-->
							<a href="#" target="_blank" id="club_cp" class="curr">佳缘俱乐部</a>
							<!--<a id="shf_title_cp" class="" style="display:none">买服务送话费</a>注释wangleilei 4/29-->
						</h5>
						<div id="JY_new_club_content">

							<!--start引用club签到日历-->

							<div id="calendar-box" style="display: none">
								<div class="calendar-box">
									<h1 class="calendar-title">
										签到日历<em class="calendar-close fixPNG"></em>
									</h1>
									<div class="calendar-main">
										<div class="calendar-up fn-clear">
											<div class="calendar-up-left fn-left">
												<h3 class="calendar-world">2016-11-27 星期日</h3>
												<!--当前日期年月日-->
												<p class="calendar-china">十月廿八 丙申年[猴年]</p>
												<!--当前农历日期-->
												<div class="fn-clear">
													<div class="calendar-good fixPNG fn-left">
														<p class="calendar-word">
															<span>交友</span><span>充值</span><span>发信</span><span>送礼</span><span>签到</span>
														</p>
														<p>
															<span>塑绘</span><span>会亲友</span><span>安机械</span><span>塞穴</span><span>结网</span>
														</p>
													</div>
													<div class="calendar-bad fixPNG fn-left">
														<p class="calendar-word">
															<span>宅家</span><span>搞基</span><span>熬夜</span><span>剁手</span><span>看片</span>
														</p>
														<p>
															<span>嫁娶</span><span>开市</span><span>祈福</span><span>斋醮</span><span>安葬</span>
														</p>
													</div>
												</div>
											</div>
											<div class="calendar-up-right fn-right">
												<a class="calendar-signBtn"
													onclick="ajaxSignIn(19);return false;"
													onmousedown="javascript:void(0);" href="javascript:;">立即签到</a>
											</div>
										</div>
										<div class="calendar-down">
											<h3 class="calendar-date">
												<span>2016</span>年<span class="fb">11</span>月
												<!--日历表头箭头 <i class="arrow-left fixPNG"></i><i class="arrow-right fixPNG"></i>-->
											</h3>
											<!--当前日期年月-->
											<div class="calendar-body">
												<div class="calendar-week fn-clear">
													<p class="red-word">星期日</p>
													<p>星期一</p>
													<p>星期二</p>
													<p>星期三</p>
													<p>星期四</p>
													<p>星期五</p>
													<p class="red-word">星期六</p>
												</div>
												<ul class="calendar-num fn-clear">
													<li class="null"></li>
													<li class="null"></li>
													<li>
														<p class="big-num">1</p>
														<p class="small-num ">初二</p>
													</li>
													<li>
														<p class="big-num">2</p>
														<p class="small-num ">初三</p>
													</li>
													<li>
														<p class="big-num">3</p>
														<p class="small-num ">初四</p>
													</li>
													<li>
														<p class="big-num">4</p>
														<p class="small-num ">初五</p>
													</li>
													<li>
														<p class="big-num">5</p>
														<p class="small-num ">初六</p>
													</li>
													<li>
														<p class="big-num">6</p>
														<p class="small-num ">初七</p>
													</li>
													<li>
														<p class="big-num">7</p>
														<p class="small-num ">初八</p>
													</li>
													<li>
														<p class="big-num">8</p>
														<p class="small-num ">初九</p>
													</li>
													<li>
														<p class="big-num">9</p>
														<p class="small-num ">初十</p>
													</li>
													<li>
														<p class="big-num">10</p>
														<p class="small-num ">十一</p>
													</li>
													<li>
														<p class="big-num">11</p>
														<p class="small-num red-word">光棍节</p>
													</li>
													<li>
														<p class="big-num">12</p>
														<p class="small-num ">十三</p>
													</li>
													<li>
														<p class="big-num">13</p>
														<p class="small-num ">十四</p>
													</li>
													<li>
														<p class="big-num">14</p>
														<p class="small-num ">十五</p>
													</li>
													<li>
														<p class="big-num">15</p>
														<p class="small-num ">十六</p>
													</li>
													<li>
														<p class="big-num">16</p>
														<p class="small-num ">十七</p>
													</li>
													<li>
														<p class="big-num">17</p>
														<p class="small-num ">十八</p>
													</li>
													<li>
														<p class="big-num">18</p>
														<p class="small-num ">十九</p>
													</li>
													<li>
														<p class="big-num">19</p>
														<p class="small-num ">二十</p>
													</li>
													<li>
														<p class="big-num">20</p>
														<p class="small-num ">廿一</p>
													</li>
													<li>
														<p class="big-num">21</p>
														<p class="small-num ">廿二</p>
													</li>
													<li>
														<p class="big-num">22</p>
														<p class="small-num ">廿三</p>
													</li>
													<li>
														<p class="big-num">23</p>
														<p class="small-num ">廿四</p>
													</li>
													<li>
														<p class="big-num">24</p>
														<p class="small-num ">廿五</p>
													</li>
													<li>
														<p class="big-num">25</p>
														<p class="small-num ">廿六</p>
													</li>
													<li>
														<p class="big-num">26</p>
														<p class="small-num ">廿七</p>
													</li>
													<li id="sign_today" class="">
														<p class="big-num">今天</p>
														<p class="small-num ">廿八</p>
													</li>
													<li>
														<p class="big-num">28</p>
														<p class="small-num ">廿九</p>
													</li>
													<li>
														<p class="big-num">29</p>
														<p class="small-num ">初一</p>
													</li>
													<li>
														<p class="big-num">30</p>
														<p class="small-num ">初二</p>
													</li>
													<li class="null"></li>
													<li class="null"></li>
													<li class="null"></li>
													<li class="null"></li>
													<li class="null"></li>
													<li class="null"></li>
													<li class="null"></li>
													<li class="null"></li>
													<li class="null"></li>
													<li class="null"></li>
												</ul>
											</div>
											<p class="calendar-notice">
												<span class="fixPNG">表示已签到</span>本月已累计签到<em
													class="sign_day_count">0</em>天
											</p>
											<!--em放入签到天数-->
										</div>
									</div>
								</div>
							</div>
							<!--end引用club签到日历-->
							<div class="JY_new_club_btn" id="club_con_cp"
								style="display: block;">
								<div id="sign_plus" class="JY_new_club_jd55" style="left: 50px;">+50
									金豆，+1 抽奖机会</div>
								<div class="JY_btn_box fn-clear">
									<a class="imm fn-left" href="javascript:;"
										onmousedown="javascript:void(0);"
										onclick="ajaxSignIn(19);return false;">立即签到领金豆</a> <a
										class="calendar_btned fixPNG fn-left"
										onmousedown="javascript:void(0);"
										onclick="ajaxSignIn(19);return false;"></a>
								</div>
							</div>

							<!--佳缘俱乐部tab-->
							<div class="JY_new_club_task" style="display: block;">
								<div class="JY_new_club_task_exc">
									<p class="t1">新人专享礼包</p>
									<p class="t2">领取条件：完成新手任务(0/6)</p>
								</div>
								<ul id="new_club_page" class="fn-clear">
									<li class="cur">
										<table class="club_table task_35 club_cnc">
											<tbody>
												<tr>
													<td width="75"><a href="##task_info_35"
														target="_blank" class="name" title=""
														onmousedown="javascript:void(0);""> 签到3天 </a></td>
													<td><a class="do"
														href="javascript:try { club_global_obj.club_sign_fn(cb); } catch (e) {}">做任务</a>
														<i class="club_table_jindou dou" num="200" title="200金豆"></i></td>
												</tr>
											</tbody>
										</table>
										<table class="club_table task_16 club_cnc">
											<tbody>
												<tr>
													<td width="75"><a href="##task_info_16"
														target="_blank" class="name" title=""
														onmousedown="javascript:void(0);""> 上传头像 </a></td>
													<td><a class="do" target="_blank" href="#">做任务</a> <i
														class="club_table_stamp" title="1个看信宝"></i> <i
														class="club_table_jindou dou" num="100" title="100金豆"></i></td>
												</tr>
											</tbody>
										</table>
										<table class="club_table task_18 club_cnc">
											<tbody>
												<tr>
													<td width="75"><a href="##task_info_18"
														target="_blank" class="name" title=""
														onmousedown="javascript:void(0);""> 完成手机认证 </a></td>
													<td><a class="do" target="_blank" href="#">做任务</a> <i
														class="club_table_stamp" title="1个看信宝"></i> <i
														class="club_table_mail_notice" title="来信提醒31天"></i> <i
														class="club_table_jindou dou" num="300" title="300金豆"></i></td>
												</tr>
											</tbody>
										</table>
									</li>
									<li>
										<table class="club_table task_24 club_cnc">
											<tbody>
												<tr>
													<td width="75"><a href="##task_info_24"
														target="_blank" class="name" title=""
														onmousedown="javascript:void(0);""> 独白达100字 </a></td>
													<td><a class="do" target="_blank" href="#">做任务</a> <i
														class="club_table_stamp" title="1个看信宝"></i> <i
														class="club_table_jindou dou" num="50" title="50金豆"></i></td>
												</tr>
											</tbody>
										</table>
										<table class="club_table task_32 club_cnc">
											<tbody>
												<tr>
													<td width="75"><a href="##task_info_32"
														target="_blank" class="name" title=""
														onmousedown="javascript:void(0);""> 发信15封 </a></td>
													<td><a class="do" target="_blank" href="#">做任务</a> <i
														class="club_table_jindou dou" num="50" title="50金豆"></i></td>
												</tr>
											</tbody>
										</table>
										<table class="club_table task_39 club_cnc">
											<tbody>
												<tr>
													<td width="75"><a href="##task_info_39"
														target="_blank" class="name" title=""
														onmousedown="javascript:void(0);""> 回信2封 </a></td>
													<td><a class="do" target="_blank" href="#">做任务</a> <i
														class="club_table_jindou dou" num="200" title="200金豆"></i></td>
												</tr>
											</tbody>
										</table>
									</li>
								</ul>
								<h6 class="fn-clear">
									<a id="new_club_right" href="#" class="tr">&nbsp;</a> <a
										id="new_club_left" href="#" class="tl gtl">&nbsp;</a>
								</h6>
								<div class="JY_new_club_xslq">限时领取：还有6天5小时10分钟</div>
							</div>
						</div>

						<!--送话费部分-->
						<div class="shf_div" id="shf_div" style="display: none;"></div>
					</div>
					<!-- 右侧搜索-->
					<div id="search_interface" class="fn-marginBottom25">
						<div class="rightSearch search_i" onmouseover="si_onmouseover();"
							onmouseout="si_onmouseout();">
							<img id="submitBtn" class="searchBtn"
								src="./images/myTrueLove/searchIcon_04.jpg"
								onclick="btn_onclick();">
							<form target="_blank" action="#" id="search_interface_form"
								style="display: none;">
								<input type="hidden" name="key" id="search_interface_key"
									value=""> <input type="hidden" name="select"
									id="search_interface_search" value="search"> <input
									type="hidden" name="sex" value="" id="search_interface_get_sex">
								<input type="hidden" name="channel" value="1"
									id="search_interface_channel"> <input type="submit"
									id="submit" name="submit" value="">
							</form>
							<input class="keyword" maxlength="20" value="请输入要搜索的条件"
								type="text" onfocus="k_onfocus(this);" onkeyup="k_onkeyup();"
								onblur="k_onblur(this);" onkeydown="k_onkeydown();"> <i></i>
							<input value="" name="searchCache" id="searchCache" type="hidden">
							<input value="" name="searchAutoComplete" id="searchAutoComplete"
								type="hidden"> <input value="f"
								name="search_interface_sex" id="search_interface_sex"
								type="hidden">
							<div class="search_drop_down" id="search_drop_down"
								style="display: none;">
								<input type="hidden" name="search_tip_json" value=""
									class="search_tip_json"> <input type="hidden"
									name="searchUser_tip_json" value="" class="searchUser_tip_json">
								<dl style="display: none;" id="search_history">
									<dt class="fn-clear" onclick="dt_onclick();">
										<span>历史搜索</span><b id="search_history_remove"
											onclick="remove_onclick();"
											onmouseover="remove_onmouseover(this);"
											onmouseout="remove_onmouseout(this);">清除</b>
									</dt>
								</dl>
								<dl style="display: block;" id="search_hot" class="search_hot">
									<dt class="search_hot_dt" onclick="dt_onclick();">热门搜索</dt>
								</dl>
								<dl style="display: none;" id="search_user" class="search_user">
									<dt class="autoCompleteSearch" onclick="dt_onclick();"></dt>
								</dl>
							</div>
						</div>
					</div>
					<!--right search begin-->


					<!-- 一键钟情-->
					<div id="r_yjzq">
						<div class="mydataR-yjzq">
							<div class="mydataR-yjzq-top fn-clear">
								<!-- <h3><a onmousedown="if(typeof(send_jy_pv2)=='function'){send_jy_pv2('|1018095_19|');}"  href="#" target="_blank" class="fn-public">一键钟情</a></h3> -->
								<h3>
									<a href="javascript:;" class="fn-public">一键钟情</a>
								</h3>
								<!-- <a onmousedown="if(typeof(send_jy_pv2)=='function'){send_jy_pv2('|1018095_19|');}"  href="#" target="_blank" class="mydataR-yjzq-more">更多 ></a> -->
							</div>
							<div class="mydataR-yjzq-note">提示：点击“不错哦”，你的问候会发送至对方信箱。</div>
							<div class="mydataR-yjzq-info fn-clear">
								<div class="mydataR-yjzq-pic">
									<a onmousedown="javascript:void(0);" href="#" target="_blank"
										class="fn-public"><img
										src="./images/myTrueLove/59c965211_3_avatar_n.jpg"></a>
								</div>
								<div class="mydataR-yjzq-text">
									<ul>
										<li class="mydataR-yjzq-name"><a
											onmousedown="javascript:void(0);" href="#" target="_blank"
											class="fn-public">春暖花开</a></li>
										<li>26岁 164厘米</li>
										<li>湖南长沙</li>
										<li>5000～10000元</li>
									</ul>
								</div>
							</div>
							<div class="mydataR-yjzq-soliloquy">内心独白:
								爱一个人意味着什么呢？这意味着为他的幸福而高兴，为使他能够幸福而去做需要做 ...</div>
							<div class="mydataR-yjzq-button fn-clear">
								<a onmousedown="javascript:void(0);"
									href="javascript:onekey(2,0,154646372);"
									class="mydataR-yjzq-next fn-right ">没兴趣</a> <a
									onmousedown="javascript:void(0);"
									href="javascript:onekey(2,1,154646372);"
									class="mydataR-yjzq-well fn-right">不错哦</a>
							</div>
						</div>
						<script type="text/javascript">
							var jy_skip_real_name = true; // 实名认证弹窗 ：true:跳过 | false:拦截
						</script>
					</div>
					<!-- 一键钟情 结束-->
					<div class="adv230x230 fn-marginBottom25" id="ad_vouchers"
						style="overflow: hidden">
						<div id="ad_pos_73">
							<div id="jy_ad_940">
								<ul>
									<li style="display: none;"><a href="#" target="_blank"><img
											src="./images/myTrueLove/20161110054227809.jpg" alt=""></a></li>
									<li style="display: block;"><a href="#" target="_blank"><img
											src="./images/myTrueLove/20161012044414825.jpg" alt=""></a></li>
									<li style="display: none;"><a href="#" target="_blank"><img
											src="./images/myTrueLove/20161012043922817.gif" alt=""></a></li>
								</ul>
							</div>

						</div>
					</div>
					<!--地图搜索-->
					<div class="clear_line"></div>
					<div class="mydataR-map fn-clear">
						<div class="mydataR-map-top">
							<h3>
								<a href="#" target="_blank" class="fn-public">地图搜索</a>
							</h3>
							<a href="#" target="_blank" class="mydataR-map-more">进入爱情地图
								&gt;</a>
						</div>
						<div class="mydataR-map230x250">
							<iframe src="#" scrolling="no" frameborder="0" height="250px"
								width="230px"></iframe>
						</div>
					</div>
					<!--地图搜索 结束-->
					<!--佳缘邮票快速充值-->
					<!--右侧支付-->
					<style>
/*快充 验证码添加*/
.newpay_yanzheng {
	color: #333;
	line-height: 22px;
	padding: 0 0 15px;
	display: none
}

.newPay_yanzhengnum {
	border-color: #abadb3 #dbdfe6 #e3e9ef #e2e3ea;
	border-style: solid;
	border-width: 1px;
	color: #888;
	height: 20px;
	margin: 0 0 0 5px;
	padding: 0 5px;
	width: 108px;
	outline: none
}

.newpay_yzgh {
	padding: 5px 0 0
}

.newpay_yzgh a {
	margin: 0 15px 0 0;
	color: #2b81d4
}
/*快充 验证码添加*/
</style>
					<div class="mydataR-pay" style="position: relative;">
						<div class="mydataR-pay-top">
							<h3>
								<a href="####" class="fn-public">快速充值</a>
							</h3>
							<a href="#" target="_blank" onmousedown="javascript:void(0);"
								class="mydataR-pay-more">更多支付方式 &gt;</a>
						</div>
						<div class="recharge_content">
							<ul class="list">
								<li onmouseover="tab(recharge,1,2)" id="recharge1"
									class="mydataR-pay-liA on">移动</li>
								<li onmouseover="tab(recharge,2,2)" id="recharge2"
									class="mydataR-pay-liB">联通</li>
							</ul>
							<div id="rechargeCon1" class="recharge_tab"
								style="display: block;">
								<form name="form_1" id="form_1" method="POST" action="#"
									target="_blank">
									<input type="hidden" value="charge" name="use_type"> <input
										type="hidden" name="orderid" id="orderid" value=""> <input
										type="hidden" name="is_yd_pay" value="1">
									<div class="newPay_gmyp paddingB5">
										<font style="float: right;">1佳缘宝=1元</font>购买佳缘宝：
									</div>
									<div class="newPay_select paddingB5 fn-clear">
										<label class="newPay_selectAll"> <input type="radio"
											name="amount" value="30"> 30
										</label> <label class="newPay_select8"> <input type="radio"
											name="amount" pid="332" value="20" checked=""> 20
										</label> <label class="newPay_selectAll"> <input type="radio"
											name="amount" value="4"> 4
										</label>
									</div>
									<div class="newPay_noteText paddingB5">暂不支持河南、青海</div>
									<div class="newpay_mobileNum" id="chinamobile"
										style="display: block; padding-bottom: 15px">
										手机号码： <input type="text" class="newPay_telnumber"
											value="请输入您的手机号" id="mobile1" name="mobile">
									</div>
									<div class="newpay_yanzheng" id="chinamobile_yanzheng">
										输入验证码： <input type="text" class="newPay_yanzhengnum"
											value="请输入收到的验证码" name="yd_code" id="yd_code">
										<div style="width: auto; display: none" class="f2">*请正确输入您的验证码</div>
										<div class="newpay_yzgh">
											<a href="javascript:void(0);" onclick="sendMessage_yd(1)">重新发送短信</a><a
												href="javascript:void(0);" onclick="changeMobile_yd()">更换手机号</a>
										</div>
									</div>
									<div class="newpay_yzmnext" id="newpay_yzmnext_yd">
										<a class="newpay_next marginB10" onclick="sendMessage_yd(1)">下一步</a>
									</div>
									<div class="newpay_sjnext" id="newpay_sjnext_yd"
										style="display: none">
										<a class="newpay_next marginB10" id="anniu_1"
											onclick="subphone_new_yd(1);">下一步</a>
									</div>

									<!--验证码结束-->
									<div class="newPay_oldLink paddingB5">
										<a href="#" target="_blank" onmousedown="javascript:void(0);">网上银行</a>、<a
											href="#" target="_blank" onmousedown="javascript:void(0);">支付宝</a>、<a
											href="#" target="_blank" onmousedown="javascript:void(0);">信用卡支付</a>
									</div>
								</form>
							</div>
							<!--联通-->
							<div id="rechargeCon2" class="recharge_tab"
								style="display: none;">
								<div id="lt_new_div">
									<form name="form_2_new" id="form_2_new" method="POST"
										action="#" target="_blank">
										<input type="hidden" value="charge" name="use_type"> <input
											type="hidden" name="orderid2" id="orderid_lt" value="">
										<input type="hidden" name="is_lt_pay" value="1">
										<div class="newPay_gmyp paddingB5">
											<font style="float: right;">1佳缘宝=1元</font>购买佳缘宝：
										</div>
										<div class="newPay_select paddingB5 fn-clear">
											<label class="newPay_selectAll"> <input type="radio"
												name="amount" value="30"> 30
											</label> <label class="newPay_select8"> <input type="radio"
												name="amount" pid="332" value="20" checked=""> 20
											</label> <label class="newPay_selectAll"> <input type="radio"
												name="amount" value="4"> 4
											</label>
										</div>
										<div class="newPay_noteText paddingB5">暂不支持北京、河北、重庆、陕西、广东、天津、上海、河南、江苏、吉林、辽宁、湖北、安徽</div>
										<div class="newpay_mobileNum" id="chinamobile_lt"
											style="display: block; padding-bottom: 15px">
											手机号码： <input type="text" class="newPay_telnumber"
												value="请输入您的手机号" id="mobile1_lt" name="mobile">
										</div>
										<div class="newpay_yanzheng" id="chinamobile_yanzheng_lt">
											输入验证码： <input type="text" class="newPay_yanzhengnum"
												value="请输入收到的验证码" name="lt_code" id="lt_code">
											<div style="width: auto; display: none" class="f2">*请正确输入您的验证码</div>
											<div class="newpay_yzgh">
												<a href="javascript:void(0);" onclick="javascript:void(0);">重新发送短信</a><a
													href="javascript:void(0);" onclick="changeMobile_lt()">更换手机号</a>
											</div>
										</div>
										<div class="newpay_yzmnext" id="newpay_yzmnext_lt">
											<a class="newpay_next marginB10"
												onclick="javascript:void(0);">下一步</a>
										</div>
										<div class="newpay_sjnext" id="newpay_sjnext_lt"
											style="display: none">
											<a class="newpay_next marginB10" id="anniu_2_new"
												onclick="javascript:void(0);">下一步</a>
										</div>

										<div class="newPay_oldLink paddingB5">
											<a href="#" target="_blank" onmousedown="javascript:void(0);">网上银行</a>、<a
												href="#" target="_blank" onmousedown="javascript:void(0);">支付宝</a>、<a
												href="#" target="_blank" onmousedown="javascript:void(0);">信用卡支付</a>
										</div>
									</form>
								</div>
								<div id="lt_old_div" style="display: none;">
									<form action="#" method="POST" id="form_2" name="form_2"
										target="_blank">
										<input type="hidden" value="charge" name="use_type">
										<div class="newPay_gmyp paddingB5">
											<font style="float: right;">1佳缘宝=1元</font>购买佳缘宝：
										</div>
										<div class="newPay_select paddingB5 fn-clear">
											<label> <input type="radio" name="amount" value="2"
												checked=""> 2
											</label>
										</div>
										<div class="newPay_sendSms paddingB5">
											发送短信<span>4</span>到<span>10655556011</span>
										</div>
										<div class="newPay_noteText paddingB5">暂不支持陕西、山西、云南、山东、内蒙古、江西、河北、北京、湖北、天津</div>
										<div class="newpay_mobileNum paddingB15">
											充值密码： <input type="text" class="newPay_telnumber" id="code_2"
												name="code" value="请输入收到的密码">
										</div>
										<div>
											<a class="newpay_next marginB10" onclick="mysub(2);"
												id="anniu_2">确定</a>
										</div>
										<div class="newPay_oldLink paddingB5">
											<a href="#" target="_blank" onmousedown="javascript:void(0);">网上银行</a>、<a
												href="#" target="_blank" onmousedown="javascript:void(0);">支付宝</a>、<a
												href="#" target="_blank" onmousedown="javascript:void(0);">信用卡支付</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<script type="text/javascript" src="js/jquery.js">
						$(document)
								.ready(
										function() {
											$('#form_3 input[type=radio]')
													.each(
															function() {
																$(this)
																		.click(
																				function() {
																					var amount_value = $(
																							this)
																							.val();
																					if (amount_value == 30) {
																						$(
																								'#form_3 .newPay_sendSms')
																								.html(
																										'发送短信<span>125</span>到<span>1066916508</span>');
																					} else if (amount_value == 20) {
																						$(
																								'#form_3 .newPay_sendSms')
																								.html(
																										'发送短信<span>138</span>到<span>1066916506</span>');
																					} else if (amount_value == 4) {
																						$(
																								'#form_3 .newPay_sendSms')
																								.html(
																										'发送短信<span>104</span>到<span>1066916534</span>');
																					} else {
																						$(
																								'#form_3 .newPay_sendSms')
																								.html(
																										'发送短信<span>114</span>到<span>1066916503</span>');
																					}
																				})
															});
											$('#mobile')
													.click(
															function() {
																document
																		.getElementById('phone_wrong').style.display = 'none';
																if ($(this)
																		.val() == '请输入您的手机号') {
																	$(this)
																			.val(
																					'');
																}
															});
											$('#mobile').blur(function() {
												if ($(this).val() == '') {
													$(this).val('请输入您的手机号');
												}
											});
											$('#code_2')
													.click(
															function() {
																if ($(this)
																		.val() == '请输入收到的密码') {
																	$(this)
																			.val(
																					'');
																}
															});
											$('#code_2').blur(function() {
												if ($(this).val() == '') {
													$(this).val('请输入收到的密码');
												}
											});
											$('#code_3')
													.click(
															function() {
																if ($(this)
																		.val() == '请输入收到的密码') {
																	$(this)
																			.val(
																					'');
																}
															});
											$('#code_3').blur(function() {
												if ($(this).val() == '') {
													$(this).val('请输入收到的密码');
												}
											});
										});
						function mysub(f_id) {
							var textt = document.getElementById('code_' + f_id).value;
							var charlist = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
							for (var i = 0; i < textt.length; i++) {
								var c = textt.charAt(i);
								if (charlist.indexOf(c) == -1) {
									alert("请正确填写密码，密码为数字和字母组合");
									return false;
								}
							}
							var obj = document.getElementById('form_' + f_id);
							//if(typeof(parent.closeMaskDiv)!=='undefined'){
							//	parent.closeMaskDiv('test_iframe');
							//}
							obj.submit();
							//统计开始
							var price = $(
									'#form_' + f_id
											+ ' input[type=radio]:checked')
									.val();
							if (f_id == 2 && price == 2) {
								//alert('联通2个');
								send_jy_pv2('|1018338_7|');
							} else if (f_id == 3 && price == 30) {
								//alert('电信30个');
								send_jy_pv2('|1018338_8|');
							} else if (f_id == 3 && price == 20) {
								//alert('电信20个');
								send_jy_pv2('|1018338_9|');
							} else if (f_id == 3 && price == 2) {
								//alert('电信2个');
								send_jy_pv2('|1018338_10|');
							}
							var bangding = $(
									'#form_' + f_id
											+ ' input[name=bangding_shouji]')
									.attr('checked');
							if (bangding == true && f_id == 2) {
								//alert('联通已经绑定');
								send_jy_pv2('|1018338_12|');
							}
							if (bangding == true && f_id == 3) {
								//alert('电信已经绑定');
								send_jy_pv2('|1018338_13|');
							}
							//统计结束
							try {
								if (document.getElementById('anniu_' + f_id))
									document.getElementById('anniu_' + f_id).disabled = true;
							} catch (e) {
							}
							;
						}
						function subphone(f_id) {
							var obj = document.getElementById('form_' + f_id);
							var mobile = document.getElementById('mobile').value;
							if (!(/^1(34|35|36|37|38|39|47|50|51|52|57|58|59|82|83|84|87|88)\d{8}$/
									.test(mobile))) {
								document.getElementById('phone_wrong').style.display = '';
								document.getElementById('phone_wrong').innerHTML = '*请正确输入您的手机号码';
								return false;
							}
							var bangding = $(
									'#form_' + f_id
											+ ' input[name=bangding_shouji]')
									.attr('checked');
							var price = $(
									'#form_' + f_id
											+ ' input[type=radio]:checked')
									.val();
							obj.submit();
							//统计开始
							if (f_id == 1 && price == 30) {
								//alert('移动30个');
								send_jy_pv2('|1018338_4|');
							} else if (f_id == 1 && price == 20) {
								//alert('移动20个');
								send_jy_pv2('|1018338_5|');
							} else if (f_id == 1 && price == 2) {
								//alert('移动2个');
								send_jy_pv2('|1018338_6|');
							}
							//统计结束
							try {
								if (document.getElementById('anniu_' + f_id))
									document.getElementById('anniu_' + f_id).disabled = true;
							} catch (e) {
							}
							;
						}
					</script>
					<!--佳缘邮票快速充值 结束-->
				</div>
			</div>
			<!--右侧 结束-->
			<!--弹层-->
			<script type="text/javascript">
				function show_div_now_v2(url, width, height) {
					//弹出层
					jy_head_function.lbg_tpl = '<div style="width:'+width+'px;height:'+height+'px"><iframe id="login_layer" width="'+width+'" allowTransparency="true" height="'+height+'" frameborder="0" scrolling="no" src="" style="display:none;"></iframe><div>';
					jy_head_function.lbg_show({
						lbg_z_index : '1000'
					});
					$("#login_layer").attr('src', "#" + url);
					setTimeout('$("#login_layer").show();', 500);
					$('select').hide();
				}
				//关闭层
				function zshytjCloseDiv_v2(type) {
					if (type == 1) {
						jy_head_function.lbg_hide();
					} else {
						setTimeout(function() {
							jy_head_function.lbg_hide();
						}, 300);
					}
					$('select').show();
				}
			</script>
			<!--弹层-->

		</div>

		<!-- ==============================框架内内容========================================= -->
	</div>
	<img style="display: none;">
	<div class="clear_line"></div>
	<div id="ad_pos_56" class="advcenter"
		style="width: 970px; margin: 0 auto">
		<div style="overflow: hidden; width: 970; height: 90;"
			id="jy_advert_714">
			<a href="#" target="_blank"><img style="border: none;"
				width="970" height="90"
				src="./images/myTrueLove/20160901113152381.jpg"
				id="jy_advert_714_img"></a>
		</div>
	</div>
	<!-- 主体 结束 two div-->
	<!-- 标准尾 开始-->

	<style type="text/css">
div#jy_common_foot * {
	padding: 0px;
	margin: 0px;
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
	color: #636363;
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

	<!-- 今日推荐开始 -->
	<div
		style="clear: both; margin-top: 1290px; margin-left: 200px; position: absolute;">
		<link rel=stylesheet type=text/css
			href="css/auto_dynamic_pic_down/zzsc.css">
		<!-- 导入头文件 -->
		<jsp:include page="WEB-INF/page/auto_Dynamic_Pic_Down.jsp"></jsp:include>
		<!--今日佳缘速配结束-->
	</div>
	<!-- 今日推荐结束 -->



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
			<a class="fixPNG guide_bt">直接使用这些账号登录</a> <a class="fixPNG guide_qq"
				href="####"></a> <a class="fixPNG guide_wb" href="####"></a> <a
				class="fixPNG guide_wx" href="####"></a> <a class="fixPNG guide_bd"
				href="####"></a> <a class="fixPNG guide_zf" href="####"></a> <a
				class="fixPNG guide_kx" href="####"></a> <a class="guide_zc"
				href="####" target="_blank"></a> <a class="guide_dl" href="####"></a>
		</div>
		<a class="fixPNG guide_close" href="javascript:void(0)"></a>
	</div>

	<style type="text/css">
.user-pop-bg {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: black;
	opacity: 0.6;
	z-index: 120005;
	display: none;
	filter: alpha(opacity = 60);
}

.user-pop {
	width: 310px;
	height: 150px;
	position: absolute;
	z-index: 120006;
	top: 210px;
	left: 50%;
	margin-left: -320px;
	background: url(#) no-repeat;
	display: none;
}

.user-pop .t {
	position: absolute;
	top: 74px;
	left: -152px;
	background-color: #f7f7f7;
	width: 136px;
	height: 35px;
	line-height: 35px;
	text-align: center;
}

.user-pop .t a {
	color: #2C81D6;
	text-decoration: underline;
}

.user-pop .t span {
	margin-right: 8px;
}

.user-pop .t a:hover {
	color: #dd1764;
}

.user-pop a.ease {
	position: absolute;
	top: 96px;
	left: 90px;
	width: 165px;
	height: 39px;
	color: white;
	text-align: center;
	background: url(#) no-repeat;
	font: bold 14px/39px "宋体";
}

.countdown {
	font: 30px/50px Arail;
	color: white;
	position: absolute;
	top: 28px;
	right: -30px;
	width: 50px;
	height: 50px;
	text-align: center;
}
</style>
	<div class="user-pop-bg"></div>
	<div class="user-pop">
		<div class="t">
			<span>我的资料45.5分</span> <a href="#" target="_blank">预览</a>
		</div>
		<a href="#" class="ease" target="_blank" onclick="javascript:void(0);">超简单，马上去填</a>
		<span class="countdown">10</span>
	</div>


	<div id="jy_common_foot"
		style="position: absolute; margin-top: 1790px; margin-left: 0px;">
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
			<div id="jy_translate_tpl" style="display: none">
				<div id="jy_translate_box" class="jy_translate_box">
					<a class="jy_translate jy_translate_ft" href="javascript:void(0);"
						onclick="javascript:jy_translate.gogo(ft, 0);javascript:void(0);"></a>
					<a class="jy_translate jy_translate_jt" href="javascript:void(0);"
						onclick="javascript:void(0);"></a>
				</div>
			</div>
			<div id="jy_mobile_tpl" style="display: none">
				<a id="jy_mobile_authentication" class="jy_mobile_authentication"
					onmousedown="javascript:void(0);" href="#" target="_blank"></a>
			</div>
			<div id="jy_yuehuiba_tpl" style="display: none">
				<a id="yuehuiba_url" onmousedown="javascript:void(0);" href="#"
					target="_blank"><img src="./images/myTrueLove/date_cfl1.png"
					alt="约会吧" class="fixPNG"></a>
			</div>
			<div id="jr_finance_redBox" style="display: none">
				<a href="#" onmousedown="javascript:void(0);" target="_blank"
					class="finance_redBox_img"></a>
			</div>

			<!--[if lte IE 6]>
<style type="text/css">*html{background-image:url(about:blank);background-attachment:fixed}</style>
<script>
DD_belatedPNG.fix('.fixPNG');
</script>
<![endif]-->
			<div id="page_bottom_info"
				style="text-align: center; margin-bottom: 10px"></div>
		</div>
	</div>

	</body>

	</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>金豆换礼_佳缘俱乐部_世纪佳缘交友网</title>
<link href="css/clubGoods_gift_files/base.css" rel="stylesheet" type="text/css">
<link href="css/clubGoods_gift_files/nav.css" rel="stylesheet" type="text/css">
<link href="css/clubGoods_gift_files/jlb_pop.css" rel="stylesheet"
	type="text/css">
<link type="text/css" rel="stylesheet"
	href="css/clubGoods_gift_files/module_open.css">
<link rel="stylesheet" type="text/css"
	href="css/clubGoods_gift_files/vipclub.css">
<link type="text/css" rel="stylesheet" href="css/clubGoods_gift_files/jy_ad.css">
<link rel="stylesheet" type="text/css" href="css/clubGoods_gift_files/jddh.css">

</head>
<body id="club_body_c">
	<style type="text/css">
@charset "utf-8";

#head_white_css {
	height: 50px;
	background:
		url(http://images1.jyimg.com/w4/common/i/head/jycm_zt_nav.png)
		repeat-x left top
}

#head_white_css .jycm_zt_nav_main {
	width: 970px;
	margin: 0px auto
}

#head_white_css .jycm_zt_logo {
	margin: 0;
	padding: 0;
	width: 153px;
	display: inline;
	float: left;
	background:
		url(http://images1.jyimg.com/w4/common/i/head/jycm_zt_vline.png)
		no-repeat top right
}

#head_white_css .jycm_zt_logo img {
	border: none
}

#head_white_css ul.jycm_zt_nav_list {
	margin: 0;
	padding: 0;
	list-style-type: none;
	display: inline;
	float: left;
	padding: 18px 0 0 6px
}

#head_white_css ul.jycm_zt_nav_list li {
	display: inline;
	float: left;
	padding: 0 7px 0 8px;
	line-height: 14px;
	background:
		url(http://images1.jyimg.com/w4/common/i/head/jycm_zt_vline2.png)
		no-repeat left 2px
}

#head_white_css ul.jycm_zt_nav_list li.first {
	background: none
}

#head_white_css ul.jycm_zt_nav_list li a {
	font-size: 12px;
	color: #666;
	text-decoration: none
}

#head_white_css ul.jycm_zt_nav_list li a:hover {
	text-decoration: underline
}

#head_white_css ul.jycm_zt_nav_list li.head_nav_cur a {
	font-weight: bold
}

#head_white_css ul.jycm_zt_nav_list li a:hover {
	text-decoration: underline
}

#head_white_css div.jycm_zt_login {
	display: inline;
	float: right;
	padding: 18px 0 0 0;
	font-size: 12px;
	line-height: 14px;
	color: #666
}

#head_white_css div.jycm_zt_login a {
	font-size: 12px;
	color: #0066cc;
	text-decoration: none
}

#head_white_css .head_white_css {
	_text-align: center
}

#head_white_css .head_white_css .jycm_zt_nav_main {
	_text-align: center
}

#head_white_user span.head_nick {
	display: block;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	float: left;
	width: 100px;
	text-align: right
}
/*全站广告*/
.ad_common_icon {
	position: absolute;
	display: block;
	width: 24px;
	height: 14px;
	overflow: hidden;
	font-size: 12px;
	line-height: 14px;
	background: url(http://images1.jyimg.com/w4/common/i/ad_common_icon.png)
		no-repeat;
	_background:
		url(http://images1.jyimg.com/w4/common/i/ad_common_icon.jpg) no-repeat
}

.ad_common_lt {
	top: 0;
	left: 0;
}

.ad_common_rt {
	top: 0;
	right: 0;
}

.ad_common_lb {
	bottom: 0;
	left: 0;
}

.ad_common_rb {
	bottom: 0;
	right: 0;
}
</style>

<!-- 导入头文件 -->
<jsp:include page="WEB-INF/page/head.jsp"></jsp:include>
	<div class="nav-wrap" id="navmod">
		<div class="nav-mod fn-clear">
			<h2 class="nav-title">
				<strong class="pngfix">会员俱乐部</strong>
			</h2>
			<ul class="nav-list fn-clear" id="nav">
				<li><a class="nav-list-item" href="club.jsp">首页</a> <span
					class="tarr-select"></span></li>
				<li><a class="nav-list-item" href="#club/mytask.html"
					onmousedown="send_jy_pv2('|1006770_0|')">金豆任务</a> <span
					class="tarr-select"></span></li>
				<li><a class="nav-list-item" href="#club/draw.html"
					onmousedown="send_jy_pv2('|1006770_5|')">海底宝藏</a> <span
					class="tarr-select"></span></li>
				<li class="active"><a class="nav-list-item"
					href="goldern_gift.jsp">金豆换礼</a>
					<span class="tarr-select"></span></li>
				<li><a class="nav-list-item" href="#club/tehui.html"
					onmousedown="send_jy_pv2('|1006770_2|')">限时抢兑</a> <span
					class="tarr-select"></span></li>
				<!--
			<li>
                <a class="nav-list-item" href="">玩转佳缘</a>
                <span class="tarr-select"></span>
            </li>
        -->
				<li class="bg-none"><span class="tarr-select"></span>
					<div class="nav-list-item-f">
						<a href="#club/grade.html">个人中心<i class="tarr"></i></a>
						<div class="nav-list-s">
							<dl>
								<a href="#club/grade.html"
									onmousedown="send_jy_pv2('|1006770_3|')">我的等级信息</a>
							</dl>
							<dl>
								<a href="#club/grade.html?info=gold_record">我的金豆记录</a>
							</dl>
							<dl>
								<a href="#club/trade.html">我的礼品</a>
							</dl>
							<dl>
								<a href="#club/faq.html">常见问题</a>
							</dl>
						</div>
					</div></li>
			</ul>
			<a class="go-back" href="myTrueLove.jsp">返回我的真缘</a>
		</div>
	</div>
	<div class="placeholder" style="display: none;"></div>
	<!--导航 E-->
	<div class="middleWrap">
		<div class="vipClubBox">
			<div class="vipClubMain fn-clear">

				<div class="vipClubCon">
					<div class="thcTitleBar fn-clear">
						<span class="thcTitle">金豆换礼</span>
						<div class="thcMemberInfo fn-clear">
							<a target="_blank" href="#158682077" class="headPic"><img
								src="images/clubGoods_gift_files/lksczp_m_n.jpg" width="38" height="46"></a>
							<div class="memDes userDesc">
								<span class="memName"><a href="#158682077"
									target="_blank">游客</a></span><br> <a href="#club/grade.html"><span
									class="myGrade s1"></span></a> <span class="memGoldB">金豆：</span> <a
									class="w_dd" href="#club/grade.html?info=gold_record"><span
									class="goldBNum">0</span> <img src="images/clubGoods_gift_files/ico_ys.jpg">
								</a>
							</div>
						</div>
					</div>
					<div class="goldBToGift">
						<ul class="tehuiList" id="tehuilist">
							<li><span class="zhuanxiang">S4以上会员专享</span> <!-- <span class="rexiao"></span> -->
								<div id="divCon" class="divCon">
									<div class="popup" style="display: none"></div>
									<p class="popupp" style="display: none">
										想知道谁仔细浏览了你的资料？想知道谁默默对你关注？“谁看过我”给你答案！<br>
										<a target="_blank"
											href="#usercp/clicked_new.html?src_key=myjy_lookedme"
											class="a_yellow" onclick="">我的佳缘-谁看过我&gt;&gt;</a>
									</p>
									<div class="tehuipic" id="thpic0" style="position: relative">
										<img src="images/clubGoods_gift_files/20131115114117123.jpg" width="220"
											height="168">
									</div>
								</div>
								<p class="btgTitle">查看谁看过我</p>
								<div class="btgDes fn-clear">
									<span class="btgGNum"><strong class="f_pink">1600</strong>金豆</span>
									<span class="btgDetail">使用期限<strong class="f_pink">1</strong>天
									</span>
								</div>
								<div class="btnBox">
									<a href="javascript:;" class="btnBg orangeBtn_8927"
										onclick="doexchange(1);">立即兑换</a>
								</div></li>
							<li class="">
								<!-- <span class="rexiao"></span> -->
								<div id="divCon" class="divCon">
									<div class="popup" style="display: none;"></div>
									<p class="popupp" style="display: none;">
										提升信件量的最有捷径，在搜索页面置顶展示。<br>
									</p>
									<div class="tehuipic" id="thpic0" style="position: relative">
										<img src="images/clubGoods_gift_files/20150112032337668.jpg" width="220"
											height="168">
									</div>
								</div>
								<p class="btgTitle">排名提前（价值20元）</p>
								<div class="btgDes fn-clear">
									<span class="btgGNum"><strong class="f_pink">8000</strong>金豆</span>
									<span class="btgDetail">使用期限<strong class="f_pink">1</strong>天
									</span>
								</div>
								<div class="btnBox">
									<a href="javascript:;" class="btnBg orangeBtn_8927"
										onclick="doexchange(186);">立即兑换</a>
								</div>
							</li>
							<li class="">
								<!-- <span class="rexiao"></span> -->
								<div id="divCon" class="divCon">
									<div class="popup" style="display: none;"></div>
									<p class="popupp" style="display: none;">
										<br>
										<a target="_blank"
											href="http://www.xihuanqian.com/activity/ty/jiayuan"
											class="a_yellow" onclick="">玺欢钱注册即送500元红包，首充任意金额送5888体验金&gt;&gt;</a>
									</p>
									<div class="tehuipic" id="thpic0" style="position: relative">
										<img src="images/clubGoods_gift_files/20160908040823218.png" width="220"
											height="168">
									</div>
								</div>
								<p class="btgTitle">玺欢钱注册即送</p>
								<div class="btgDes fn-clear">
									<span class="btgGNum"><strong class="f_pink">200</strong>金豆</span>
									<span class="btgDetail"></span>
								</div>
								<div class="btnBox">
									<a href="javascript:;" class="btnBg orangeBtn_8927"
										onclick="doexchange(270);">立即兑换</a>
								</div>
							</li>
							<li class="">
								<!-- <span class="rexiao"></span> -->
								<div id="divCon" class="divCon">
									<div class="popup" style="display: none;"></div>
									<p class="popupp" style="display: none;">
										2016年9月30日前购买红娘一对一服务享受8折优惠，<br>
										<a target="_blank"
											href="http://vip.jiayuan.com/landing_page.html?source=120001041"
											class="a_yellow" onclick="">立即申请服务&gt;&gt;</a>
									</p>
									<div class="tehuipic" id="thpic0" style="position: relative">
										<img src="images/clubGoods_gift_files/20160914013237274.png" width="220"
											height="168">
									</div>
								</div>
								<p class="btgTitle">红娘一对一8折券</p>
								<div class="btgDes fn-clear">
									<span class="btgGNum"><strong class="f_pink">200</strong>金豆</span>
									<span class="btgDetail"></span>
								</div>
								<div class="btnBox">
									<a href="javascript:;" class="btnBg orangeBtn_8927"
										onclick="doexchange(271);">立即兑换</a>
								</div>
							</li>
							<li>
								<!-- <span class="rexiao"></span> -->
								<div id="divCon" class="divCon">
									<div class="popup" style="display: none"></div>
									<p class="popupp" style="display: none">
										价值2888元红娘一对一情感咨询体验券，<br>
										<a target="_blank" href="http://vip.jiayuan.com/signup.html"
											class="a_yellow" onclick="">立即申请服务&gt;&gt;</a>
									</p>
									<div class="tehuipic" id="thpic0" style="position: relative">
										<img src="images/clubGoods_gift_files/20160914014206422.png" width="220"
											height="168">
									</div>
								</div>
								<p class="btgTitle">红娘服务情感咨询体验券</p>
								<div class="btgDes fn-clear">
									<span class="btgGNum"><strong class="f_pink">50</strong>金豆</span>
									<span class="btgDetail"></span>
								</div>
								<div class="btnBox">
									<a href="javascript:;" class="btnBg orangeBtn_8927"
										onclick="doexchange(272);">立即兑换</a>
								</div>
							</li>
							<li class="">
								<!-- <span class="rexiao"></span> -->
								<div id="divCon" class="divCon">
									<div class="popup" style="display: none;"></div>
									<p class="popupp" style="display: none;">
										<span style="margin-right: 10px">兑换50MB手机流量，移动联通电信通用</span><br>
									</p>
									<div class="tehuipic" id="thpic0" style="position: relative">
										<img src="images/clubGoods_gift_files/20161116062312471.png" width="220"
											height="168">
									</div>
								</div>
								<p class="btgTitle">金豆换流量</p>
								<div class="btgDes fn-clear">
									<span class="btgGNum"><strong class="f_pink">150</strong>金豆</span>
									<span class="btgDetail"></span>
								</div>
								<div class="btnBox">
									<a href="javascript:;" class="btnBg orangeBtn_8927"
										onclick="doexchange(273);">立即兑换</a>
								</div>
							</li>
							<li class="">
								<!-- <span class="rexiao"></span> -->
								<div id="divCon" class="divCon">
									<div class="popup" style="display: none;"></div>
									<p class="popupp" style="display: none;">
										<span style="margin-right: 10px">佳缘旗下金融平台，完成安全认证送50元新手礼包</span><br>
									</p>
									<div class="tehuipic" id="thpic0" style="position: relative">
										<img src="images/clubGoods_gift_files/20161118105720794.jpg" width="220"
											height="168">
									</div>
								</div>
								<p class="btgTitle">佳缘金融平台50元新手礼包</p>
								<div class="btgDes fn-clear">
									<span class="btgGNum"><strong class="f_pink">10</strong>金豆</span>
									<span class="btgDetail"></span>
								</div>
								<div class="btnBox">
									<a href="javascript:;" class="btnBg orangeBtn_8927"
										onclick="doexchange(274);">立即兑换</a>
								</div>
								<div class="remainNum">
									仅剩<span class="f_pink">9311</span>个
								</div>
							</li>
						</ul>
					</div>
					<link href="css/clubGoods_gift_files/beans.css" type="text/css"
						rel="stylesheet">
					<style>
.jddhpopup .club_tipPopMain {
	height: 165px;
}
</style>
					<div class="jy-beans-winlist2 fn-clear" style="margin-top: 50px;">
						<div class="fn-left tit">兑换名单：</div>
						<div class="fn-left dl-w2">
							<div class="dl-s fn-clear winners" style="left: -94.9477px;">

								<dl>
									<dt>
										<a target="_blank" href="#155134739"><img
											src="images/clubGoods_gift_files/90f49bcbd_1_avatar_n.jpg" alt=""
											width="38" height="46"></a>
									</dt>
									<dd>
										<p class="t1">
											<a target="_blank" href="#155134739">无忌</a>
										</p>
										<p>
											兑换了<span class="t2">金豆换流量</span>
										</p>
									</dd>
								</dl>
								<dl>
									<dt>
										<a target="_blank" href="#152392898"><img
											src="images/clubGoods_gift_files/1b90599e9_3_avatar_n.jpg" alt=""
											width="38" height="46"></a>
									</dt>
									<dd>
										<p class="t1">
											<a target="_blank" href="#152392898">ken</a>
										</p>
										<p>
											兑换了<span class="t2">金豆换流量</span>
										</p>
									</dd>
								</dl>
								<dl>
									<dt>
										<a target="_blank" href="#147551053"><img
											src="images/clubGoods_gift_files/33843c58e_4_avatar_n.jpg" alt=""
											width="38" height="46"></a>
									</dt>
									<dd>
										<p class="t1">
											<a target="_blank" href="#147551053">孤独的影子</a>
										</p>
										<p>
											兑换了<span class="t2">金豆换流量</span>
										</p>
									</dd>
								</dl>
								<dl>
									<dt>
										<a target="_blank" href="#147551053"><img
											src="images/clubGoods_gift_files/33843c58e_4_avatar_n.jpg" alt=""
											width="38" height="46"></a>
									</dt>
									<dd>
										<p class="t1">
											<a target="_blank" href="#147551053">孤独的影子</a>
										</p>
										<p>
											兑换了<span class="t2"></span>
										</p>
									</dd>
								</dl>
								<dl>
									<dt>
										<a target="_blank" href="#136374833"><img
											src="images/clubGoods_gift_files/11727e401_1_avatar_n.jpg" alt=""
											width="38" height="46"></a>
									</dt>
									<dd>
										<p class="t1">
											<a target="_blank" href="#136374833">肉丸子</a>
										</p>
										<p>
											兑换了<span class="t2">金豆换流量</span>
										</p>
									</dd>
								</dl>
								<dl>
									<dt>
										<a target="_blank" href="#158686107"><img
											src="images/clubGoods_gift_files/1647d9c16_1_avatar_n.jpg" alt=""
											width="38" height="46"></a>
									</dt>
									<dd>
										<p class="t1">
											<a target="_blank" href="#158686107">那后来呢</a>
										</p>
										<p>
											兑换了<span class="t2">佳缘金融平台5</span>
										</p>
									</dd>
								</dl>
								<dl>
									<dt>
										<a target="_blank" href="#18865019"><img
											src="images/clubGoods_gift_files/96d958f0e_1_avatar_n.jpg" alt=""
											width="38" height="46"></a>
									</dt>
									<dd>
										<p class="t1">
											<a target="_blank" href="#18865019">zzz</a>
										</p>
										<p>
											兑换了<span class="t2">金豆换流量</span>
										</p>
									</dd>
								</dl>
								<dl>
									<dt>
										<a target="_blank" href="#145747663"><img
											src="images/clubGoods_gift_files/ea3d5b6b3_1_avatar_n.jpg" alt=""
											width="38" height="46"></a>
									</dt>
									<dd>
										<p class="t1">
											<a target="_blank" href="#145747663">金枝玉叶</a>
										</p>
										<p>
											兑换了<span class="t2">查看谁看过我</span>
										</p>
									</dd>
								</dl>
								<dl>
									<dt>
										<a target="_blank" href="#54964523"><img
											src="images/clubGoods_gift_files/98c766fe8_avatar_n.jpg" alt=""
											width="38" height="46"></a>
									</dt>
									<dd>
										<p class="t1">
											<a target="_blank" href="#54964523">书娴</a>
										</p>
										<p>
											兑换了<span class="t2">红娘服务情感咨</span>
										</p>
									</dd>
								</dl>
								<dl>
									<dt>
										<a target="_blank" href="#133340457"><img
											src="images/clubGoods_gift_files/16e973bf4_1_avatar_n.jpg" alt=""
											width="38" height="46"></a>
									</dt>
									<dd>
										<p class="t1">
											<a target="_blank" href="#133340457">雷迪克</a>
										</p>
										<p>
											兑换了<span class="t2">查看谁看过我</span>
										</p>
									</dd>
								</dl>
							</div>
						</div>
					</div>
				</div>
				<!-- 金豆换礼警告弹层开始 -->
				<div class="op_box jddhpopup" style="display: none" id="jddhpopup_2">
					<div class="op_subbg">
						<h4>
							<a href="javascript:;" class="op_close"
								onclick="closeWin('jddhpopup_2');"></a>世纪佳缘温馨提示
						</h4>
						<div class="op_main">
							<div class="club_tipPopMain">
								<div class="formBox">
									<p class="Hhead1 ml15 pl55 pt10 mt10 h35">
										<span class="head1"></span>
									</p>
									<p class="Pp1 ml15 pl55 pr20" id="alert_con"></p>
									<p class="PBtn fn-clear mt10">
										<a href="" class="Aa1_2 ml139 fn-left"
											onclick="closeWin('jddhpopup_2');" id="btn"></a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 金豆换礼警告弹层结束 -->
				<!-- 金豆换礼成功弹层开始 -->
				<div class="op_box jddhpopup" style="display: none" id="jddhpopup_0">
					<div class="op_subbg">
						<h4>
							<a href="javascript:;" class="op_close"
								onclick="closeWin('jddhpopup_0');window.location.reload();"></a>世纪佳缘温馨提示
						</h4>
						<div class="op_main">
							<div class="club_tipPopMain">
								<div class="formBox">
									<p class="Hhead2 ml65 pl55 pt10 mt10 h35">
										<span class="head1">兑换成功!</span>
									</p>
									<p class="Pp1 ml65 pl55 pb15" id="alert_con_new">
										本次消费<span class="f_pink">0</span>金豆，您的金豆余额为<span
											class="f_pink">450</span>
									</p>
									<p class="PBtn fn-clear mt10">
										<a href="javascript:;" class="Aa1_1 ml154 fn-left"
											onclick="closeWin('jddhpopup_0');window.location.reload();">确定</a>
										<a href="" class="Aa2_2 ml24 fn-left" target="_blank">去看看</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 金豆换礼成功弹层结束 -->
				<!-- 皮肤预览弹层开始 -->
				<div class="jy_pop" id="dress_view"
					style="display: none; z-index: 999">
					<div class="pop_bg">
						<div class="pop_colsed" onclick="closeWin('dress_view');"></div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="op_box op_clubTip" id="exchangePop4">
		<div class="op_subbg">
			<h4>
				<a class="op_close" href="javascript:;"
					onclick="closwWin('exchangePop4');"></a>兑换失败
			</h4>
			<div class="op_main">
				<div class="club_tipPopMain">
					<div class="tipBox">
						<p class="picText">
							<span class="fail"></span><strong class="f_pink">兑换失败！</strong>
						</p>
						<br>
						<p class="f_gray_666" id="fail_con">兑换VIP会员1个月操作失败</p>
						<br>
					</div>
					<div class="btnBox">
						<a href="javascript:void(0)" class="btnBg orangeBtn_7932"
							onclick="closeWin('exchangePop4')">确定</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 皮肤预览弹层结束 -->
	<div id="bg"></div>
	<!--领取弹窗  开始-->
	<div class="op_box op_clubTip" id="taskTipPop">
		<div class="op_subbg">
			<h4>
				<a class="op_close" href="javascript:;"
					onclick="closeWin('taskTipPop');window.location.reload();"></a>
			</h4>
			<div class="op_main">
				<div class="club_tipPopMain">
					<div class="tipBox">
						<br>
						<br>
						<p class="f_gray_666"></p>
						<br>
						<br>
					</div>
					<div class="btnBox">
						<a href="javascript:;"
							onclick="closeWin('taskTipPop');window.location.reload();"
							class="btnBg orangeBtn_7932">确定</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--领取弹窗 结束-->
	<!--升级 start -->
	<div style="display: none;" class="op_box" id="upgrade_pop">
		<div class="op_subbg">
			<h4>
				<a href="javascript:;" class="op_close"
					onclick="closeWin('upgrade_pop');"></a>提示
			</h4>
			<div class="op_level">
				<h5 class="f_gray_333 f_22">
					恭喜，您已经升级到<span class="pop_col">S2</span>会员
				</h5>

				<p class="f_16 pt10">您解锁了以下等级特权：</p>
				<dl class="op_con clearfix">
					<ul class="pop_tq">
						<li class="tq2_cur"><a href="#club/grade.html#detail"></a><span
							class="tq_text">限时抢兑</span></li>
						<span class="f_gray_666"> 在佳缘俱乐部获得更多的超值任务，完成超值任务，可获得更多奖励 </span>
					</ul>
				</dl>
			</div>
			<a class="pop_btn4 m_auto" onclick="closeWin('upgrade_pop');"
				href="javascript:;">知道了</a>
		</div>
	</div>
	<!--升级 end -->
	<!-- vip提示弹层 开始 -->
	<div class="op_box width570" id="JYclub_VipPop" style="display: none">
		<div class="op_subbg">
			<h4>
				<a href="javascript:void(0);" class="op_close"
					onclick="window.location.reload();"></a>世纪佳缘温馨提示
			</h4>
			<div class="degrees-layer">
				<div class="deg-box">
					<div class="deg-icon">
						<span class="vip-icon"></span>
					</div>
					<div class="deg-intro">
						<a href="#usercp/service/upgrade.html?src_key=vip_club"
							target="_blank" onmousedown="send_jy_pv2('|1011196_4|')">开通VIP会员</a>完成此项任务，可获得<strong
							class="pink" id="vipgold"></strong>金豆奖励，比普通会员多<strong
							class="pink" id="addgold"></strong>金豆，会员等级升级更快速！
					</div>
				</div>
			</div>

			<div class="degrees-layer btn-center">
				<a class="btn" href="#usercp/service/upgrade.html?src_key=vip_club"
					target="_blank" onmousedown="send_jy_pv2('|1011196_4|')"><i></i><em>开通VIP会员服务</em></a>
			</div>
			<div class="intro-member">
				<h5 class="vip-member">
					<a class="blue"
						href="#usercp/service/upgrade.html?src_key=vip_club"
						target="_blank" onmousedown="send_jy_pv2('|1011196_4|')">查看更多特权</a>VIP给力特权：
				</h5>
				<ul class="vip-detail fn-clear">
					<li><i class="f-icon"></i>查看谁看过我</li>
					<li><i class="s-icon"></i>符合对方择友要求</li>
					<li><i class="t-icon"></i>查看最近登录时间</li>
					<li><i class="c-icon"></i>搜索看信/钻石会员</li>
					<li><i class="m-icon"></i>发出信件置顶</li>
					<li><i class="q-icon"></i>限定择偶条件</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 登录弹出开始 -->



	<link type="text/css" href="images/clubGoods_gift_files/popupLogin_20110321.css"
		rel="stylesheet">

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
				<a name="foot_nav_link" href="#helpcenter/postmail.html"
					target="_blank">联系客服</a> <a name="foot_nav_link"
					href="#bottom/index.html" target="_blank">关于我们</a> <a
					name="foot_nav_link" href="#bottom/connect.html" target="_blank">联系我们</a>
				<a name="foot_nav_link" href="#bottom/business.html" target="_blank">无线业务</a>
				<a name="foot_nav_link" href="#bottom/declare.html" target="_blank">注册条款</a>
				<a name="foot_nav_link" href="#bottom/links.html" target="_blank">友情链接</a>
				<a name="foot_nav_link" href="#bottom/jobs.html" target="_blank">招聘信息</a>
				<a name="foot_nav_link" href="#bottom/notice.html" target="_blank">交友信息</a>
				<a name="foot_nav_link" href="#bottom/private.html" target="_blank">隐私保护</a>
				<a name="foot_nav_link" href="#helpcenter/" target="_blank">帮助中心</a>
				<a name="foot_nav_link" href="#guard/" target="_blank">安全中心</a>
			</p>
			<p id="bottom_site_copyright" style="">
				<a class="bot_link_none">中文实名：世纪佳缘</a> <a class="bot_link_none">ICP证书：沪B2-20100074</a>
				<a class="bot_link_none">增值电信业务经营许可证：沪B2-20070313</a> <a
					href="#certificate/iso.html" target="_blank">ISO9001质量体系认证</a>
			</p>
			<p>
				©&nbsp;2003-2016&nbsp;版权所有&nbsp;&nbsp;&nbsp;&nbsp;京公网安备110105002124号&nbsp;&nbsp;&nbsp;&nbsp;不良和违法信息举报专线：0316-5266032
			</p>
			<img src="images/clubGoods_gift_files/a.gif" style="display: none">
			<style type="text/css">
html, body {
	*overflow-x: hidden
}
/*简繁转换浮层*/
.jy_translate_box {
	height: 83px;
	width: 63px;
	background: url(http://images1.jyimg.com/w4/common/i/translate_bg.png)
		no-repeat 0 0;
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
	background: url(http://images1.jyimg.com/w4/common/i/translate_bg.png)
		no-repeat -24px 0
}

.jy_translate_ft:hover {
	background: url(http://images1.jyimg.com/w4/common/i/translate_bg.png)
		no-repeat -67px 0
}

.jy_translate_jt {
	border-bottom: 1px solid #d9d9d9;
	background: url(http://images1.jyimg.com/w4/common/i/translate_bg.png)
		no-repeat -24px -43px
}

.jy_translate_jt:hover {
	background: url(http://images1.jyimg.com/w4/common/i/translate_bg.png)
		no-repeat -67px -43px
}
/*手机验证浮层*/
#jy_mobile_authentication {
	display: block;
	width: 103px;
	height: 140px;
	background:
		url(http://images1.jyimg.com/w4/common/i/jy_mobile_safety.png)
		no-repeat 0 0
}

#jy_mobile_authentication:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/jy_mobile_safety.png)
		no-repeat 0 -150px
}
/*金融浮层*/
#finance_redBox {
	position: relative;
}

.finance_redBox_img {
	display: block;
	width: 154px;
	height: 131px;
	background: url(http://images1.jyimg.com/w4/common/i/jr_fc1.png);
	_background: url(http://images1.jyimg.com/w4/common/i/jr_fc1.gif);
}
</style>
			<div id="jy_translate_tpl" style="display: none"></div>
			<div id="jy_mobile_tpl" style="display: none">
				<a id="jy_mobile_authentication" class="jy_mobile_authentication"
					onmousedown="javascript:jy_head_function.click_pv('|jy_mobile_authentication|');"
					href="#usercp/approve/index.html" target="_blank"></a>
			</div>
			<div id="jy_yuehuiba_tpl" style="display: none">
				<a id="yuehuiba_url"
					onmousedown="javascript:jy_head_function.click_pv('|date_pc_cfl_click|'+HEAD_USER.uid);"
					href="http://date.jiayuan.com/parties/party_1111.html?from=qixifuceng"
					target="_blank"><img src="images/clubGoods_gift_files/date_cfl1.png"
					alt="约会吧" class="fixPNG"></a>
			</div>
			<div id="jr_finance_redBox" style="display: none">
				<a
					href="#jinrong/jrpassport.html?f=33&amp;next_url=https://jr.jiayuan.com/regular/index"
					onmousedown="javascript:jy_head_function.click_pv('|jr_jrfc_click|');"
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
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat 0 0
}

#common_footer_guide .guide_layer .guide_qq:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat 0 -31px
}

#common_footer_guide .guide_layer .guide_wb {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -31px 0
}

#common_footer_guide .guide_layer .guide_wb:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -31px -31px
}

#common_footer_guide .guide_layer .guide_bd {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -62px 0
}

#common_footer_guide .guide_layer .guide_bd:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -62px -31px
}

#common_footer_guide .guide_layer .guide_zf {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -93px 0
}

#common_footer_guide .guide_layer .guide_zf:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -93px -31px
}

#common_footer_guide .guide_layer .guide_rr {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -124px 0
}

#common_footer_guide .guide_layer .guide_rr:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -124px -31px
}

#common_footer_guide .guide_layer .guide_kx {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -155px 0
}

#common_footer_guide .guide_layer .guide_kx:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -155px -31px
}

#common_footer_guide .guide_layer .guide_db {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -186px 0
}

#common_footer_guide .guide_layer .guide_db:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -186px -31px
}

#common_footer_guide .guide_layer .guide_zc {
	margin-left: 105px;
	width: 128px;
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat 0 -62px
}

#common_footer_guide .guide_layer .guide_zc:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat 0 -92px
}

#common_footer_guide .guide_layer .guide_dl {
	width: 128px;
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat 0 -122px
}

#common_footer_guide .guide_layer .guide_dl:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat 0 -152px
}

#common_footer_guide .guide_layer .guide_wx {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_wx.png)
		no-repeat
}

#common_footer_guide .guide_layer .guide_wx:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_wxh.png)
		no-repeat
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
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat 0 -183px
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
				href="###"></a> <a class="fixPNG guide_wb" href="###"></a> <a
				class="fixPNG guide_wx" href="###"></a> <a class="fixPNG guide_bd"
				href="###"></a> <a class="fixPNG guide_zf" href="###"></a> <a
				class="fixPNG guide_kx" href="###"></a> <a class="guide_zc"
				href="###" target="_blank"></a> <a class="guide_dl" href="###"></a>
		</div>
		<a class="fixPNG guide_close" href="javascript:void(0)"></a>
	</div>
</body>
</html>
<!-- 登录弹出结束 -->
<!-- vip提示弹层 结束 -->
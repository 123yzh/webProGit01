<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>佳缘俱乐部_世纪佳缘交友网</title>
<link href="css/club_files/base.css" rel="stylesheet" type="text/css">
<!-- -->
<link href="css/club_files/nav.css" rel="stylesheet" type="text/css"> 
<link href="css/club_files/jlb_pop.css" rel="stylesheet" type="text/css">
<link type="text/css" rel="stylesheet" href="css/club_files/module_open.css">
<link rel="stylesheet" type="text/css" href="css/club_files/vipclub.css">
<link type="text/css" rel="stylesheet" href="css/club_files/jy_ad.css">
<link href="css/club_files/jlb.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/club_files/jddh.css">
<link rel="stylesheet" type="text/css" id="linkidforpop" href="css/club_files/popupLogin_20110321.css">
'

<!-- 选项卡 样式和js-->
<link rel="stylesheet" href="css/selectCard/zzsc.css" type="text/css">
<script type="text/javascript" src="js/selectCard/jquery.min.js"></script>
<script type="text/javascript" src="js/selectCard/zzsc.js"></script>


<!-- 轮播css --> 
<link rel="stylesheet" href="css/ClubDynamicPicDeal/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/ClubDynamicPicDeal/style.css" type="text/css" media="screen" />

</head>
<body id="club_body_c" bgColor="#FFF">
<style type="text/css">
@charset "utf-8";

#head_white_css {
	height: 50px;
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

#jy_head_box {
	height: 0;
	font-size: 0;
	line-height: 0
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
	<jsp:include page="WEB-INF/page/head02.jsp"></jsp:include>
	<div id="jy_head_box">
		<div id="jy_cpfl_1"
			style="position: fixed; right: 0px; top: 310px; width: 23px; height: 83px; z-index: 9000;">
			<div id="jy_cpfl_1_box">
				<div id="jy_translate_box" class="jy_translate_box">
					<a class="jy_translate jy_translate_ft" href="javascript:void(0);"
						onclick="javascript:jy_translate.gogo('ft', 0);jy_head_function.click_pv('|translate_bottom_ft|');"></a>
					<a class="jy_translate jy_translate_jt" href="javascript:void(0);"
						onclick="javascript:jy_translate.gogo('jt', 0);jy_head_function.click_pv('|translate_bottom_jt|');"></a>
				</div>
			</div>
		</div>
	</div>
	<!--
	<div id="head_white_css">
		<div class="jycm_zt_nav_main">
			<h1 class="jycm_zt_logo" id="head_white_logo">
				<a href="#"><img src="images/club_files/jycm_zt_logo.png"></a>
			</h1>
			<ul class="jycm_zt_nav_list" id="head_white_nav" style="">
				<li class="first"><a href="#"
					onclick="jy_head_function.click_pv('|head_navigation_www|0');"
					target="_blank">首页</a></li>
				<li><a href="http://usercp.jiayuan.com/"
					onclick="jy_head_function.click_pv('|head_navigation_usercp|0');"
					target="_blank">我的佳缘</a></li>
				<li><a href="#club/"
					onclick="jy_head_function.click_pv('|head_navigation_club|0');"
					target="_blank">俱乐部</a></li>
				<li><a href="#jinrong/jrpassport.html?f=1"
					onclick="jy_head_function.click_pv('|head_navigation_jinrong|0');"
					target="_blank">佳缘金融</a></li>
				<li><a href="http://search.jiayuan.com/v2/"
					onclick="jy_head_function.click_pv('|head_navigation_search|0');"
					target="_blank">搜索</a></li>
				<li><a href="http://date.jiayuan.com/?from=daohang"
					onclick="jy_head_function.click_pv('|head_navigation_date|0');"
					target="_blank">约会吧</a></li>
				<li><a href="http://search.jiayuan.com/v2/new.html"
					onclick="jy_head_function.click_pv('|head_navigation_new|0');"
					target="_blank">新会员</a></li>
				<li><a href="http://search.jiayuan.com/v2/online.html"
					onclick="jy_head_function.click_pv('|head_navigation_online|0');"
					target="_blank">聊天</a></li>
				<li><a href="http://party.jiayuan.com/"
					onclick="jy_head_function.click_pv('|head_navigation_party|0');"
					target="_blank">活动</a></li>
				<li><a href="http://love.jiayuan.com/"
					onclick="jy_head_function.click_pv('|head_navigation_love|0');"
					target="_blank">晒幸福</a></li>
				<li><a href="http://vip.jiayuan.com/"
					onclick="jy_head_function.click_pv('|head_navigation_liehun|0');"
					target="_blank">红娘一对一</a></li>
			</ul>
			<div class="jycm_zt_login" id="head_white_user">
				<a href="" target="_blank">注册</a>
			</div>
		</div>
	</div>
-->

	<!--导航 B
	<div class="nav-wrap nav-wrap-fixed" id="navmod">
		<div class="nav-mod fn-clear">
			
			<ul class="nav-list fn-clear" id="nav">
				<li class="active"><a class="nav-list-item"
					href="#club/index.html" onmousedown="send_jy_pv2('|1006770_1|')">首页</a>
					<span class="tarr-select"></span></li>
				<li><a class="nav-list-item" href="#club/mytask.html"
					onmousedown="send_jy_pv2('|1006770_0|')">金豆任务</a> <span
					class="tarr-select"></span></li>
				<li><a class="nav-list-item" href="#club/draw.html"
					onmousedown="send_jy_pv2('|1006770_5|')">海底宝藏</a> <span
					class="tarr-select"></span></li>
				<li><a class="nav-list-item" href="#club/gift.html"
					onmousedown="send_jy_pv2('|1006770_4|')">金豆换礼</a> <span
					class="tarr-select"></span></li>
				<li><a class="nav-list-item" href="#club/tehui.html"
					onmousedown="send_jy_pv2('|1006770_2|')">限时抢兑</a> <span
					class="tarr-select"></span></li>
				<!--
			<li>
                <a class="nav-list-item" href="">玩转佳缘</a>
                <span class="tarr-select"></span>
            </li>
     
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
			<a class="go-back" href="http://usercp.jiayuan.com/">返回我的佳缘</a>
		</div>
	</div>
	<div class="placeholder" style="display: block;"></div>
	-->
	<!-- 
	<div style="width:1060px;clear:both;margin-top:15px;" >
	<table style="width:800px;color:#666;font-family:'仿宋'">
	<tr>
		<td><a href="#">首页</a></td>
		<td><a href="#">金豆任务</a></td>
		<td><a href="#">海底宝藏</a></td>
		<td><a href="#">金豆换礼</a></td>
		<td><a href="#">限时抢兑</a></td>
		<td><a href="#">个人中心</a></td>
		<td><a href="#">我的等级信息</a></td>
		<td><a href="#">我的金豆记录</a></td>
		<td><a href="#">我的礼品</a></td>
		<td><a href="#">常见问题</a></td>
		<td><a href="#">返回我的真缘</a></td>
	</tr>
	</table>
</div>

 -->

<div style="width:1080px;border-radius:30px;background-color:#F5F5F5">
 <div style="width:950px;clear:both;margin-top:15px;color:#666;font-family:'仿宋'" >
 <div class="case" style="width:910px;">
    <div class="title cf">
	
      <ul class="title-list fr cf" style="margin-left:-75px;">
        <li style="width:80px;"><a href="club.jsp">首页</a></li>
        <li style="width:80px;"><a href="#">金豆任务</a></li>
        <li style="width:80px;"><a href="#">海底宝藏</a></li>
        <li style="width:80px;"><a href="goldern_gift.jsp">金豆换礼</a></li>
        <li style="width:80px;"><a href="#">限时抢兑</a></li>
		<li style="width:80px;"><a href="#">个人中心</a></li>
        <li style="width:80px;font-size:10px"><a href="#">我的等级信息</a></li>
        <li style="width:80px;font-size:10px"><a href="#">我的金豆记录</a></li>
        <li style="width:80px;"><a href="#">我的礼品</a></li>
		<li style="width:80px;"><a href="#">常见问题</a></li>
        <li style="width:80px;font-size:10px"><a href="myTrueLove.jsp">返回我的真缘</a></li>
        <p><b></b></p>
      </ul>
    </div>
  </div>
 </div>
 

  <!--导航 E-->
  <div>
	<div class="top_bg">
		<div class="main">
			<div class="clearfix">
				<!--我的金豆 start -->
				<!--立刻登录start -->
				<div class="qd_box" style="display: block;">
					<h4 class="f_14  pt7">HI！欢迎来到佳缘俱乐部</h4>
					<!-- 改 -->
					<div class="no_box">
						做任务，勤登录，可以获得金豆、看信邮票等更多额外奖励！金豆越多会员等级越高，可以享受更多优惠！</div>
					<a class="qd_btn1 login_hook" href="javascript:;">立即登录！查看我的等级信息</a>
					<h6>我的特权：</h6>
					<ul class="tq">
						<li class="tq1"><a href="#club/grade.html#detail"></a></li>
						<li class="tq2"><a href="#club/grade.html#detail"></a></li>
						<li class="tq3"><a href="#club/grade.html#detail"></a></li>
						<li class="tq4"><a href="#club/grade.html#detail"></a></li>
						<li class="tq5"><a href="#club/grade.html#detail"></a></li>
					</ul>
				</div>
				<!--立刻登录end -->
				<!--我的金豆end -->
				
			
				<!--轮播图start -->
				<!--<div class="slide_box ml20" id="slide_box"
					style="position: relative">
					<ul class="slide clearfix" style="left: -707px;">
						<li><a
							href="http://date.jiayuan.com/parties/wx_hb_16_10.html?from=qixijuleshou"
							target="_blank" onmousedown="send_jy_pv2('|1020080_10|usercp');">
								<img src="images/club_files/20161121025607913.jpg" alt="">
						</a></li>
						<li><a href="#parties/app/freebuy/index.html?src_key=club"
							target="_blank"
							onmousedown="send_jy_pv2('|club_foucs_2|usercp');"> <img
								src="images/club_files/20161121045246884.jpg" alt=""></a></li>
						<li><a href="#club/draw.html" target="_blank"
							onmousedown="send_jy_pv2('|1020080_9|usercp');"> <img
								src="images/club_files/20160905013854686.jpg" alt=""></a></li>
						<li><a
							href="#jinrong/jrpassport.html?f=27&amp;next_url=https://jr.jiayuan.com/zeroBuy"
							target="_blank" onmousedown="send_jy_pv2('|1020080_15|usercp');">
								<img src="images/club_files/20160905013917386.jpg" alt="">
						</a></li>
					</ul>
					<ul class="slide_btn clearfix">
						<li class=""></li>
						<li class="btn_cur"></li>
						<li class=""></li>
						<li class=""></li>
					</ul>

				</div>-->
				<!--轮播图end -->
				
				
				<!--开始创建新的轮播图-->
				    <!--<div id="wrapper">-->
					<div style="margin-left:315px;">
						<div id="slider-wrapper">
							<div id="slider" class="nivoSlider">
								<img width="655px" height="255px" src="images/club_files/20160905013854686.jpg" alt="" /> <a
									href="#">
								<img width="624px" height="255px"src="images/club_files/20160905013917386.jpg" alt=""
									title="This is an example of a caption" /></a> 
								<img width="624px" height="255px" src="images/club_files/20161121025607913.jpg" alt="" /> 
								<img width="624px" height="255px" src="images/club_files/20161121045246884.jpg" alt=""
									title="#htmlcaption" />
							</div>
						</div>

						<!-- </div>-->
						<script type="text/javascript"
							src="js/ClubDynamicPicDeal/scripts/jquery-1.4.3.min.js"></script>
						<script type="text/javascript"
							src="js/ClubDynamicPicDeal/scripts/jquery.nivo.slider.pack.js"></script>
						<script type="text/javascript">
							$(window).load(function() {
								$('#slider').nivoSlider();
							});
						</script>

					</div>
				<!-- 轮播图结束 -->
			</div>
		</div>
	</div>
	<div class="main pt15 clearfix">
		<!--俱乐部播报start -->
		<div class="fl bb_left">
			<h4 class="bb_tit">俱乐部播报</h4>
			<div class="bb_box clearfix">
				<div class="today_box clearfix">
					<div class="today">今天</div>
					<div class="qd_member">
						已有<span id="today_sign">54,170</span>人签到<br> <span
							id="today_mission">63,154</span>人完成了任务 
					</div>
				</div>
				<!--滚动start -->
				<div class="jlb_box clearfix">
					<div class="scrollpic">
						<ul style="margin-top: 0px;">
							<li class="clearfix" style="display: block; opacity: 0.929569;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#154886525"><img
												src="images/club_files/3034e5059_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#154886525">candy<br><span
													class="color_888">28,广东广州</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了浏览资料</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#55427375"><img
												src="images/club_files/cf2627406_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#55427375">俊<br><span
													class="color_888">34,上海长宁</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了补充资料页I</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#55427375"><img
												src="images/club_files/cf2627406_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#55427375">俊<br><span
													class="color_888">34,上海长宁</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了补资料II</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#157590319"><img
												src="images/club_files/efd59b65e_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#157590319">梦之蓝<br><span
													class="color_888">47,广东深圳</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了读信</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#55427375"><img
												src="images/club_files/cf2627406_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#55427375">俊<br><span
													class="color_888">34,上海长宁</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了传照片I</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#49554693"><img
												src="images/club_files/5ed86d1f6_3_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#49554693">瓦特艾伦<br><span
													class="color_888">52,广东佛山</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了看信15封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158500626"><img
												src="images/club_files/62ba433d5_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158500626">辉紫<br><span
													class="color_888">31,上海黄浦</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了回信10封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#150425520"><img
												src="images/club_files/25f12135f_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#150425520">蓝色的缘分<br><span
													class="color_888">35,吉林长春</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了看信5封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#45533917"><img
												src="images/club_files/yzphykj_m_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#45533917">等待<br><span
													class="color_888">52,黑龙江哈尔滨</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了浏览资料</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#87366108"><img
												src="images/club_files/a030130ef_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#87366108">如意<br><span
													class="color_888">71,重庆渝中</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="blue_bg">签到了</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158736798"><img
												src="images/club_files/14b01c750_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158736798">皇昌<br><span
													class="color_888">33,江西南昌</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了看信5封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#154889618"><img
												src="images/club_files/zchykj_m_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#154889618">kobeyeh<br><span
													class="color_888">34,广东深圳</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了看信5封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#127829528"><img
												src="images/club_files/zwzp_f_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#127829528">紫叶子<br><span
													class="color_888">24,北京海淀</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="blue_bg">签到了</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#93637241"><img
												src="images/club_files/zwzp_m_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#93637241">飘<br><span
													class="color_888">56,湖北武汉</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了浏览资料</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#15714448"><img
												src="images/club_files/zchykj_m_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#15714448">pylizhe<br><span
													class="color_888">33,浙江丽水</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了浏览资料</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#102988562"><img
												src="images/club_files/7a42f1634_4_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#102988562">真诚的我<br><span
													class="color_888">39,辽宁盘锦</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了浏览资料</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#150357224"><img
												src="images/club_files/86e6f2400_4_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#150357224">Miss<br><span
													class="color_888">28,云南玉溪</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了回信10封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158734409"><img
												src="images/club_files/312b26fa5_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158734409">无为<br><span
													class="color_888">23,北京东城</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了上传头像</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158734409"><img
												src="images/club_files/312b26fa5_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158734409">无为<br><span
													class="color_888">23,北京东城</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了完成手机认证</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158734409"><img
												src="images/club_files/312b26fa5_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158734409">无为<br><span
													class="color_888">23,北京东城</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了独白达100字</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158734409"><img
												src="images/club_files/312b26fa5_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158734409">无为<br><span
													class="color_888">23,北京东城</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了传照片I</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158740941"><img
												src="images/club_files/4d8a3339b_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158740941">似水流年<br><span
													class="color_888">41,浙江金华</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了回信2封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#149048061"><img
												src="images/club_files/b3948e5e7_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#149048061">风<br><span
													class="color_888">45,浙江温州</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="blue_bg">签到了</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158739473"><img
												src="images/club_files/22ee04cc9_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158739473">寻找她<br><span
													class="color_888">47,安徽合肥</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了回信5封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#91899816"><img
												src="images/club_files/zwzp_m_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#91899816">3165<br><span
													class="color_888">50,北京朝阳</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了填写择偶要求</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#108079284"><img
												src="images/club_files/1023de6c3_6_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#108079284">当幸福来敲门<br><span
													class="color_888">40,广西南宁</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了浏览资料</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158639536"><img
												src="images/club_files/7715e83ba_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158639536">转<br><span
													class="color_888">25,山东济南</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了上传头像</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158639536"><img
												src="images/club_files/7715e83ba_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158639536">转<br><span
													class="color_888">25,山东济南</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了传照片I</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#153466918"><img
												src="images/club_files/zwzp_m_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#153466918">juneove<br><span
													class="color_888">27,河南郑州</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了看信5封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#40878677"><img
												src="images/club_files/zchykj_m_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#40878677">凉风有信<br><span
													class="color_888">49,广东佛山</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="blue_bg">签到了</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#112526577"><img
												src="images/club_files/f0f1a430d_4_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#112526577">风格<br><span
													class="color_888">40,广东深圳</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了回信5封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#157023474"><img
												src="images/club_files/zwzp_m_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#157023474">佳缘会员<br><span
													class="color_888">27,北京东城</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了填写择偶要求</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#112337301"><img
												src="images/club_files/21edd863e_2_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#112337301">一如既往<br><span
													class="color_888">33,北京朝阳</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了看信5封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#19132270"><img
												src="images/club_files/yzphykj_m_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#19132270">安田<br><span
													class="color_888">38,天津河东</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了回信30封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#116802353"><img
												src="images/club_files/zchykj_m_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#116802353">鹤鸣<br><span
													class="color_888">52,四川广安</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了回信10封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#151063011"><img
												src="images/club_files/300bcfcc5_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#151063011">空壳<br><span
													class="color_888">46,北京石景山</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="blue_bg">签到了</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158743210"><img
												src="images/club_files/zwzpytx_f_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158743210">huan<br><span
													class="color_888">31,安徽巢湖</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了发信10封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#108320829"><img
												src="images/club_files/yzphykj_f_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#108320829">原上草<br><span
													class="color_888">60,北京海淀</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了回信15封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#19818087"><img
												src="images/club_files/yzphykj_m_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#19818087">清风绅士<br><span
													class="color_888">32,北京海淀</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了看信5封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#15068804"><img
												src="images/club_files/zchykj_f_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#15068804">敲打太阳<br><span
													class="color_888">34,黑龙江哈尔滨</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了浏览资料</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#142021876"><img
												src="images/club_files/yzphykj_m_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#142021876">三庆<br><span
													class="color_888">37,山东济南</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="blue_bg">签到了</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158734408"><img
												src="images/club_files/zwzp_f_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158734408">110<br><span
													class="color_888">27,江苏南京</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了完成手机认证</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#155136631"><img
												src="images/club_files/a55de51be_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#155136631">李墨轩<br><span
													class="color_888">27,河南郑州</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了回信10封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158742954"><img
												src="images/club_files/0065c65dc_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158742954">我是谁的他<br><span
													class="color_888">29,河南信阳</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了发信15封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#55152351"><img
												src="images/club_files/863f19efb_5_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#55152351">爱家的女人<br><span
													class="color_888">54,山东淄博</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="blue_bg">签到了</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158465730"><img
												src="images/club_files/zchykj_f_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158465730">Kitty<br><span
													class="color_888">33,广东东莞</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了回信15封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#38667160"><img
												src="images/club_files/yzphykj_f_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#38667160">冰月秋水<br><span
													class="color_888">43,河南商丘</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了回信5封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#141932229"><img
												src="images/club_files/zwzp_f_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#141932229">CJ<br><span
													class="color_888">52,国外其他</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="blue_bg">签到了</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158285471"><img
												src="images/club_files/417214590_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158285471">小妞子<br><span
													class="color_888">23,内蒙古呼和浩特</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了同意分享资料</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#119466984"><img
												src="images/club_files/ddc84ceea_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#119466984">园春<br><span
													class="color_888">48,湖南衡阳</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了回信5封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#108318670"><img
												src="images/club_files/40c843df2_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#108318670">小泥<br><span
													class="color_888">27,云南玉溪</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了回信5封</p>
									</div>
								</div></li>
							<li class="clearfix" style="display: block;"><div
									class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#21481560"><img
												src="images/club_files/yzphykj_m_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#21481560">freedom air<br><span
													class="color_888">33,河北保定</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了浏览资料</p>
									</div>
								</div></li>
							<li class="clearfix"><div class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#15714448"><img
												src="images/club_files/zchykj_m_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#15714448">pylizhe<br><span
													class="color_888">33,浙江丽水</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="blue_bg">签到了</p>
									</div>
								</div></li>
							<li class="clearfix"><div class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#157803418"><img
												src="images/club_files/ab1d43575_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#157803418">lucy<br><span
													class="color_888">23,北京海淀</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了回信5封</p>
									</div>
								</div></li>
							<li class="clearfix"><div class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158743299"><img
												src="images/club_files/zwzp_m_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158743299">佳缘会员<br><span
													class="color_888">48,湖南邵阳</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了独白达100字</p>
									</div>
								</div></li>
							<li class="clearfix"><div class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158743266"><img
												src="images/club_files/zwzp_f_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158743266">河海清晏<br><span
													class="color_888">36,新疆奎屯</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了发信10封</p>
									</div>
								</div></li>
							<li class="clearfix"><div class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#157773661"><img
												src="images/club_files/c2f1a0d07_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#157773661">梦梦<br><span
													class="color_888">25,重庆涪陵</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了回信15封</p>
									</div>
								</div></li>
							<li class="clearfix"><div class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158734428"><img
												src="images/club_files/ff447ffce_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158734428">随风<br><span
													class="color_888">27,北京东城</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了上传头像</p>
									</div>
								</div></li>
							<li class="clearfix"><div class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158734428"><img
												src="images/club_files/ff447ffce_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158734428">随风<br><span
													class="color_888">27,北京东城</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了完成手机认证</p>
									</div>
								</div></li>
							<li class="clearfix"><div class="just">刚刚</div>
								<div class="member_info clearfix">
									<div class="arrow_ico"></div>
									<div class="fn-clear">
										<div class="pic4048 fl">
											<a target="_blank" href="#158734428"><img
												src="images/club_files/ff447ffce_1_avatar_n.jpg"></a>
										</div>
										<h6 class="p_details">
											<a target="_blank" href="#158734428">随风<br><span
													class="color_888">27,北京东城</span></a>
										</h6>
									</div>
									<div class="info">
										<p class="green_bg">完成了传照片I</p>
									</div>
								</div></li>
						</ul>
					</div>
				</div>
				<!--滚动 end -->
			</div>
			<!--交友讲堂 start-->
			<div style="position: relative">
				<h4 class="rw_tit mt30">佳缘交友课堂</h4>
				<div class="ad_common_icon ad_common_rb" style="bottom: 5px"></div>
			</div>
			<ul class="new_list" style="position: relative">
				<li class="clearfix">
					<div class="pic10265 fl">
						<a href="#bmcenter/"><img
							src="images/club_files/20140903020307960.jpg"></a>
					</div>
					<div class="sc_text">
						<h6>
							<a href="#bmcenter/" target="_blank" class="a_gray_333 fb">懂你交友数据中心</a>
						</h6>
						<p>
							<a href="#bmcenter/" target="_blank" class="a_gray_999">通过分析您的交友行为，帮你提升交友效率</a>
						</p>
					</div>
				</li>
				<li class="clearfix">
					<div class="pic10265 fl">
						<a href="http://diary.jiayuan.com/subject/zhuantihuizong.html#2"><img
							src="images/club_files/20140811054901918.jpg"></a>
					</div>
					<div class="sc_text">
						<h6>
							<a href="http://diary.jiayuan.com/subject/zhuantihuizong.html#2"
								target="_blank" class="a_gray_333 fb">婚恋情感研究院</a>
						</h6>
						<p>
							<a href="http://diary.jiayuan.com/subject/zhuantihuizong.html#2"
								target="_blank" class="a_gray_999">官方出品情感研究，解读单身心态</a>
						</p>
					</div>
				</li>
				<li class="clearfix">
					<div class="pic10265 fl">
						<a href="http://diary.jiayuan.com/subject/jiaoyoubaike.html"><img
							src="images/club_files/20140624035346814.png"></a>
					</div>
					<div class="sc_text">
						<h6>
							<a href="http://diary.jiayuan.com/subject/jiaoyoubaike.html"
								target="_blank" class="a_gray_333 fb">新会员实战手册</a>
						</h6>
						<p>
							<a href="http://diary.jiayuan.com/subject/jiaoyoubaike.html"
								target="_blank" class="a_gray_999">为你全面讲解网络交友攻略，马上学习一下</a>
						</p>
					</div>
				</li>
			</ul>
			<!--交友讲堂 end -->
			<!--常见问题 start-->
			<h4 class="rw_tit mt10">常见问题</h4>
			<ul class="col_blue question_list">
				<li><a href="#club/faq.html#40232">如何提升会员等级？会不会降级？</a></li>
				<li><a href="#club/faq.html#40231">会员升级会消耗金豆吗？</a></li>
				<li><a href="#club/faq.html#40230">如何获得金豆？大家得到的金豆一样多吗？</a></li>
				<li><a href="#club/faq.html#40228">金豆有什么用？会不会过期？</a></li>
			</ul>
			<!--常见问题 end -->

			<!-- released time 2016-09-08 16:10:10 -->
		</div>
		<!--俱乐部播报 end -->

		<div class="right_main">
			<!--做任务赚金豆start -->
			<div class="clearfix">
				<h4 class="rw_tit fl">
					<a href="#club/mytask.html">做任务赚金豆</a>
				</h4>
				<a class="fr rw_more a_gray_666 lh40" href="#club/mytask.html"
					onmousedown="send_jy_pv2('|1006770_13|');">更多&gt;</a>
			</div>
			<div class="list_bg">
				<div class="cz_ico" style="z-index: 1000"></div>
				<ul>
					<li class="">
						<div style="position: relative">
							<img src="images/club_files/rw_bjwz.jpg">
						</div>
						<div class="clearfix pt10 pl8 pr10">
							<div class="fl col_black lh18">
								<a href="#club/mytask.html#task_info_29" title="在地图搜索中标注位置">标注位置</a>
							</div>
							<a class="fr btn_7632" target="_blank"
								href="#map/map_v2/set.html" tid="29">做任务</a>
						</div>
						<div class="num_box">
							<p class="f_gray_999">4040940人已完成</p>
							<p class="f_gray_666 ico_mid" id="award_29">
								任务奖励： <span class="col_pink">50</span><img
									src="images/club_files/ico2.png" title="50金豆">
							</p>
						</div>
					</li>
					<li class="">
						<div style="position: relative">
							<img src="images/club_files/rw_xdgy.jpg">
						</div>
						<div class="clearfix pt10 pl8 pr10">
							<div class="fl col_black lh18">
								<a href="#club/mytask.html#task_info_44" title="心电感应">心电感应</a>
							</div>
							<a class="fr btn_7632" target="_blank"
								href="#parties/2012/telepathy/index.html" tid="44">做任务</a>
						</div>
						<div class="num_box">
							<p class="f_gray_999">4169576人已完成</p>
							<p class="f_gray_666 ico_mid" id="award_44">
								任务奖励： <span class="col_pink">80</span><img
									src="images/club_files/ico2.png" title="80金豆">
							</p>
						</div>
					</li>
					<li class="">
						<div style="position: relative">
							<img src="images/club_files/rw_fxzl.jpg">
						</div>
						<div class="clearfix pt10 pl8 pr10">
							<div class="fl col_black lh18">
								<a href="#club/mytask.html#task_info_9" title="同意分享资料">同意分享资料</a>
							</div>
							<a class="fr btn_7632" target="_blank"
								href="#usercp/profile.html?action=base" tid="9">做任务</a>
						</div>
						<div class="num_box">
							<p class="f_gray_999">2065142人已完成</p>
							<p class="f_gray_666 ico_mid" id="award_9">
								任务奖励： <span class="col_pink">20</span><img
									src="images/club_files/ico2.png" title="20金豆">
							</p>
						</div>
					</li>
				</ul>
			</div>
			<!--做任务赚金豆 end -->
			<!--金豆换礼start -->
			<div class="clearfix mt15">
				<h4 class="rw_tit fl">
					<a href="#club/gift.html">金豆换礼</a>
				</h4>
				<a class="fr rw_more a_gray_666 lh40" href="#club/gift.html"
					onmousedown="send_jy_pv2('|1006770_14|');">更多&gt;</a>
			</div>
			<div class="list_bg1">
				<ul class="clearfix">
					<li>
						<div style="position: relative">
							<img src="images/club_files/zsdjq.jpg" alt="">
						</div>
						<div class="clearfix pt10 pl8 pr10">
							<div class="fl lh18">
								<p class=" f_gray_333"></p>
								<p class="ico_mid f_gray_999">
									<del class="pr10">￥6元</del>
									<span class=" col_pink">300</span><img
										src="images/club_files/ico2.png">
								</p>
							</div>
							<a href="#club/tehui.html#goods989266"
								onmousedown="send_jy_pv2('|1006770_10|');"
								class="fr btn_7632_ljl">兑换</a>
						</div>
						<div class="num_box">
							<p class="f_gray_999">仅剩98个</p>
							<p class="col_pink lxftime" endtime="11/25/2016 17:00:00"
								lxfday="no">
								<i>本场还剩：</i><span>1</span>时<span>13</span>分<span>36</span>秒
							</p>
						</div>
					</li>
					<li>
						<div style="position: relative">
							<img src="images/club_files/kxyp.jpg" alt="">
						</div>
						<div class="clearfix pt10 pl8 pr10">
							<div class="fl lh18">
								<p class=" f_gray_333"></p>
								<p class="ico_mid f_gray_999">
									<del class="pr10">￥2元</del>
									<span class=" col_pink">200</span><img
										src="images/club_files/ico2.png">
								</p>
							</div>
							<a href="#club/tehui.html#goods989265"
								onmousedown="send_jy_pv2('|1006770_10|');"
								class="fr btn_7632_ljl">兑换</a>
						</div>
						<div class="num_box">
							<p class="f_gray_999">仅剩234个</p>
							<p class="col_pink lxftime" endtime="11/25/2016 17:00:00"
								lxfday="no">
								<i>本场还剩：</i><span>1</span>时<span>13</span>分<span>36</span>秒
							</p>
						</div>
					</li>
					<li>
						<div style="position: relative">
							<img src="images/club_files/lq.jpg" alt="">
						</div>
						<div class="clearfix pt10 pl8 pr10">
							<div class="fl lh18">
								<p class=" f_gray_333"></p>
								<p class="ico_mid f_gray_999">
									<del class="pr10">￥1元</del>
									<span class=" col_pink">150</span><img
										src="images/club_files/ico2.png">
								</p>
							</div>
							<a href="#club/tehui.html#goods989261"
								onmousedown="send_jy_pv2('|1006770_10|');"
								class="fr btn_7632_ljl">兑换</a>
						</div>
						<div class="num_box">
							<p class="f_gray_999">仅剩175个</p>
							<p class="col_pink lxftime" endtime="11/25/2016 17:00:00"
								lxfday="no">
								<i>本场还剩：</i><span>1</span>时<span>13</span>分<span>36</span>秒
							</p>
						</div>
					</li>
				</ul>
			</div>

			<div class="list_bg1 mt15">
				<ul class="clearfix">
				</ul>
			</div>
			<!--金豆换礼 end-->

			<!--刮奖start -->
			<ul class="cj_list clearfix">
				<li class="">
					<div style="position: relative">
						<a href="#club/draw.html"><img src="images/club_files/cj_pic1.png"></a>
					</div>
					<div class="btm_bg"></div>
					<div class="btm_text clearfix">
						<p class="fl">
							<span class="">72794639</span>人参与
						</p>
						<a class="fr" href="#club/draw.html">试试手气&gt;</a>
					</div>
				</li>
				<li class="r">
					<div style="position: relative">
						<a href="#club/draw.html?v=3"><img
							src="images/club_files/cj_pic2.png"></a>
					</div>
					<div class="btm_bg"></div>
					<div class="btm_text clearfix">
						<p class="fl">
							<span class="">5380968</span>人参与
						</p>
						<a class="fr" href="#club/draw.html?v=3">试试手气&gt;</a>
					</div>
				</li>
			</ul>
			<!--刮奖end -->
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
								本次消费<span class="f_pink">0</span>金豆，您的金豆余额为<span class="f_pink">450</span>
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
						<br><br>
								<p class="f_gray_666"></p> <br><br>
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
					恭喜，您已经升级到<span class="pop_col">S1</span>会员
				</h5>

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

<!--  

	<link type="text/css" href="css/club_files/popupLogin_20110321_002.css"
		rel="stylesheet">
		<script src="js/club_files/popupLogin_v2.js" type="text/javascript"></script>
		<script src="is/club_files/pv.js" type="text/javascript"></script>
	<script src="js/club_files/a_009.htm" type="text/javascript"></script>



	<script type="text/javascript" src="js/club_files/foot.js"></script>
	<script type="text/javascript" src="js/club_files/w4-simple.js"></script>
	-->
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
			<!--  <img src="images/club_files/a.gif" style="display: none">-->
				<style type="text/css">
html, body {
	*overflow-x: hidden
}
/*简繁转换浮层*/
.jy_translate_box {
	height: 83px;
	width: 63px;
	/*background: url(http://images1.jyimg.com/w4/common/i/translate_bg.png)
		no-repeat 0 0;*/
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
	/*background: url(http://images1.jyimg.com/w4/common/i/translate_bg.png)
		no-repeat -24px 0*/
}

.jy_translate_ft:hover {
	/*background: url(http://images1.jyimg.com/w4/common/i/translate_bg.png)
		no-repeat -67px 0*/
}

.jy_translate_jt {
	border-bottom: 1px solid #d9d9d9;
	/*background: url(http://images1.jyimg.com/w4/common/i/translate_bg.png)
		no-repeat -24px -43px*/
}

.jy_translate_jt:hover {
	/*background: url(http://images1.jyimg.com/w4/common/i/translate_bg.png)
		no-repeat -67px -43px*/
}
/*手机验证浮层*/
#jy_mobile_authentication {
	display: block;
	width: 103px;
	height: 140px;
	/*background:
		url(http://images1.jyimg.com/w4/common/i/jy_mobile_safety.png)
		no-repeat 0 0*/
}

#jy_mobile_authentication:hover {
	background:
	/*	url(http://images1.jyimg.com/w4/common/i/jy_mobile_safety.png)
		no-repeat 0 -150px*/
}
/*金融浮层*/
#finance_redBox {
	position: relative;
}

.finance_redBox_img {
	display: block;
	width: 154px;
	height: 131px;
/*	background: url(http://images1.jyimg.com/w4/common/i/jr_fc1.png);
	_background: url(http://images1.jyimg.com/w4/common/i/jr_fc1.gif);*/
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
						target="_blank"><img src="images/club_files/date_cfl1.png" alt="约会吧"
						class="fixPNG"></a>
				</div>
				<div id="jr_finance_redBox" style="display: none">
					<a
						href="#jinrong/jrpassport.html?f=33&amp;next_url=https://jr.jiayuan.com/regular/index"
						onmousedown="javascript:jy_head_function.click_pv('|jr_jrfc_click|');"
						target="_blank" class="finance_redBox_img"></a>
				</div> <!--[if lte IE 6]>
<style type="text/css">*html{background-image:url(about:blank);background-attachment:fixed}</style>
<script>
DD_belatedPNG.fix('.fixPNG');
</script>
<![endif]-->
				<div id="page_bottom_info"
					style="text-align: center; margin-bottom: 10px"></div>
		</div>
	</div>
</div>




</div>

<style type="text/css">
body {
	padding: 0;
	margin: 0
}
</style>
</body>
</html>
<!-- 登录弹出结束 -->
<!-- vip提示弹层 结束 -->
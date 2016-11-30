<%@page import="com.love.utils.RandomArrayClass"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	int[] newObjArr=new int[100];//定义一个新数组，存放当前随机非重复数组的取值
	RandomArrayClass rac = new RandomArrayClass();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>真缘网首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Slicebox - 3D Image Slider with Fallback" />
        <meta name="keywords" content="jquery, css3, 3d, webkit, fallback, slider, css3, 3d transforms, slices, rotate, box, automatic" />
		<meta name="author" content="Pedro Botelho for Codrops" />
		
		<!-- 取消3D轮播 的文件-->
		<!-- <link rel="stylesheet" type="text/css" href="css/demo.css" />-->
		<!--<link rel="stylesheet" href="css/init.css">-->
		<!--轮播css文件-->
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="css/slicebox.css" />
		<link rel="stylesheet" type="text/css" href="css/custom.css"/>
		<link href="css/style.css" type="text/css" rel="stylesheet" />
		
		<!-- 3D轮播css start 
		<link rel="stylesheet" href="css/DynamicPicture/style.css" type="text/css" media="screen">-->
		<link rel="stylesheet" type="text/css" href="js/engine/style.css" media="screen" />
		<!--  HEAD -->
		<link rel="stylesheet" type="text/css" href="css/DynamicPicture/style.css" media="screen" />
		<script type="text/javascript" src="js/ThreeDengine/jquery.js"></script>
		<!--  HEAD. -->
		<!-- 3D轮播css end -->
		
		
		<!--多图片翻转-->
		<link href="css/zzsc.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/zzsc.js"></script>
		
		<!--给标题栏添加图标-->
		<link rel="SHORTCUT ICON" href="images/title.ico" style="background-color:#0FC"/>
		
		<link rel='stylesheet' href='css/mainCss/main.css' />
		
</head>
<!-- 弹出层导入文件 -->
<!--start-->
<link rel="stylesheet" type="text/css" href="css/window/css/style.css">
<script src="js/window/js/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="js/window/js/lightbox/themes/default/jquery.lightbox.css" />
<!--[if IE 6]>
  <link rel="stylesheet" type="text/css" href="js/window/js/lightbox/themes/default/jquery.lightbox.ie6.css" />
  <![endif]-->
<script type="text/javascript" src="js/window/js/lightbox/jquery.lightbox.min.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function($){
      $('.lightbox').lightbox();
    });
  </script>
<!-- end -->

<!--显示图片轮播所需的js文件-->
<script type="text/javascript" src="js/modernizr.custom.46884.js"></script>
<!--导入jQuery所需要的js文件
<script type="text/javascript" src="jQuery1.9.1.js"></script>-->
<!--背景音乐所需要的js文件-->
<script src="js/jquery-1.7.2.min.js"></script>

<body>
<!--播放背景音乐
 <audio src="music/The Clientele - (I Can’t Seem To) Make You Mine.mp3" controls="controls" preload="auto" autoplay="autoplay" loop="loop">
 您浏览器不支持HTML5音频播放器
</audio> -->
<!--<embed src="music/The Clientele - (I Can’t Seem To) Make You Mine.mp3" width="333" height="333" autostart="true" loop="true" hidden="true"></embed>-->



<!--播放器引进-->
<div id="player" hidden="true"></div>
<!--背景音乐所需要的js文件，一定要放在div播放器之后-->
<script src="js/jquery-ui-1.8.17.custom.min.js"></script>
<script src="js/script.js"></script>

<!--这个div不设置为百分比的原因是，防止破坏整体布局，这个效果好比是绝对定位
<div class="index_page_top" align="center" style="width:1380px;height:8%;">
		<table align="center">
			<tr align="center">
				<td align="right" valign="middle">账号:</td>
				<td>
					<form name="form1" method="post" action="">
							<label for="textfield"></label>
							<input name="textfield" type="text" id="textfield" value="" placeholder="邮箱/手机/ID">
					</form>
				</td>
				<td align="right" valign="middle">密码:</td>
				<td>
					<form name="form2" method="post" action="">
							<label for="textfield2"></label>
							<input type="text" name="textfield2" id="textfield2" placeholder="请输入密码">
					</form>
				</td>
				<td align="left">
					<form name="form3" method="post" action="">
							<input class="index_page_top_button" type="submit" name="button" id="button" value="提交">
					</form>
				</td>
				<td valign="middle" align="right" style="width:80px;">使用QQ登录?</td>
				<td valign="middle" align="left"><img style="margin-top:2px;" src="images/qq.PNG" width="20" height="20"></td>
				<td>
					<form name="form4" method="post" action="">
						<input class="index_page_top_button" type="submit" name="button2" id="button2" value="忘记密码?">
					</form>
				</td>
				<td>
					<form name="form5" method="post" action="">
							<input class="index_page_top_button" type="submit" name="button3" id="button3" value="免费注册">
					</form>
				</td>
			</tr>
		</table>
</div>-->
<!--<div class="index_page_div">
	<div class="love_web_head_page">
		<div class="love_web_head_page">
			<div class="love_web_head_page_left">
				<img src="images/BK.PNG" width="161" height="66">
			</div>
			<div class="love_web_head_page_right">
				<img src="images/logo_1474453201.gif" width="215" height="70">	
			</div>
		</div>
	</div>

	
	<div class="love_web_navi_page" >
		<div class="love_web_navi_page_left">
			<table width="120%" border="0" align="center">
					<tr align="center">
						<td><a href="#">首页</a></td>
						<td><a href="#">我的真缘</a></td>
						<td><a href="#">俱乐部</a></td>
						<td><a href="#">搜索</a></td>
						<td><a href="#">聊天吧</a></td>
						<td><a href="#">新会员</a></td>
						<td><a href="#">约会吧</a></td>
						<td><a href="#">晒幸福</a></td>
						<td><a href="#">真缘故事</a></td>
						<td><a href="#">缘分测试</a></td>
						</tr>
			</table>
		</div>
			
		<div class="love_web_navi_page_right">
			<table width="230px" border="0">
				<tr align="center">
					<td><a href="#">红娘一对一</a></td>
					<td><a href="#">真心话大冒险</a></td>
				</tr>
			</table>
		</div>

	</div>
	-->
	<!-- 导入头文件 -->
	<jsp:include page="WEB-INF/page/head.jsp"></jsp:include>
	<div class="love_user_login_div">
		<div class="love_user_login_left_div">
			<img src="images/Index_img01.gif" /><br /><br /><br /><br />
			<div align="center" class="user_login">
				<form action="register.jsp">
				<input class="login_input" type="submit" value="免费注册"/>
				</form><br /><br />
				<a style="font-size:14px;" href="#">我是会员,立即登录？</a> 
			</div>
		</div>
	
				<div class="love_user_login_right_div">
				<div class="container">




		<!-- 开始取消3D轮播 -->
		<!-- 
			<div class="wrapper" style="width:780px;height:230px;">

				<ul id="sb-slider" class="sb-slider">
					<li>
						<a href="#" target="_self"><img src="images/alt_pic01.jpg" alt="image1"/></a>
						<div class="sb-description">
							<h3>Creative Lifesaver</h3>
						</div>
					</li>
					<li>
						<a href="#" target="_self"><img src="images/alt_pic02.jpg" alt="image2"/></a>
						<div class="sb-description">
							<h3>Honest Entertainer</h3>
						</div>
					</li>
					<li>
						<a href="#" target="_self"><img src="images/alt_pic03.jpg" alt="image1"/></a>
						<div class="sb-description">
							<h3>Brave Astronaut</h3>
						</div>
					</li>
					<li>
						<a href="#" target="_self"><img src="images/alt_pic04.jpg" alt="image1"/></a>
						<div class="sb-description">
							<h3>Affectionate Decision Maker</h3>
						</div>
					</li>
					<li>
						<a href="#" target="_self"><img src="images/alt_pic05.jpg" alt="image1"/></a>
						<div class="sb-description">
							<h3>Faithful Investor</h3>
						</div>
					</li>
					<li>
						<a href="#" target="_self"><img src="images/alt_pic06.jpg" alt="image1"/></a>
						<div class="sb-description">
							<h3>Groundbreaking Artist</h3>
						</div>
					</li>
					<li>
						<a href="#" target="_self"><img src="images/alt_pic07.jpg" alt="image1"/></a>
						<div class="sb-description">
							<h3>Selfless Philantropist</h3>
						</div>
					</li>
				</ul>

				<div id="shadow" class="shadow"></div>

				<div id="nav-arrows" class="nav-arrows">
					<a href="#">Next</a>
					<a href="#">Previous</a>
				</div>

			</div>
			
			-->
			<!-- 开始取消3D轮播 -->
			
			
			
		<!--3D轮播开始 -->
		<div style="width:640px;height:100px;clear:both;margin-top:15px;margin-left:115px;">
		<div  style="position:relative;" class="slideshow grid_12">
			<div class="holder">
				<!-- 主体部分 -->
				<div id="wowslider-container">
					<div class="ws_images">
						<ul>
							<li><a href="#"><img src="images/ThreeDDynamicPicture/data/images/alt_pic01.jpg" alt="123" title="标题1234" /></a></li>
							<li><a href="#"><img src="images/ThreeDDynamicPicture/data/images/alt_pic02.jpg" alt="456" title="标题1234" /></a><!--标题1234--></li>
							<li><a href="#"><img src="images/ThreeDDynamicPicture/data/images/alt_pic03.jpg" alt="789" title="标题1234" /></a><!--标题1234--></li>
							<li><a href="#"><img src="images/ThreeDDynamicPicture/data/images/alt_pic04.jpg" alt="123" title="标题1234" /></a></li>
							<li><a href="#"><img src="images/ThreeDDynamicPicture/data/images/alt_pic05.jpg" alt="456" title="标题1234" /></a><!--标题1234--></li>
							<li><a href="#"><img src="images/ThreeDDynamicPicture/data/images/alt_pic06.jpg" alt="789" title="标题1234" /></a><!--标题1234--></li>
							<li><a href="#"><img src="images/ThreeDDynamicPicture/data/images/alt_pic07.jpg" alt="789" title="标题1234" /></a><!--标题1234--></li>
							<!--<li><a href="#"><img src="images/data/images/slide5new.jpg" alt="789" title="标题1234" /></a></li>-->
							<!--<li><iframe width="100%" height="100%" src="https://www.youtube.com/embed/_GOt0sMIZVY?autoplay=0&rel=0&enablejsapi=1&playerapiid=ytplayer&wmode=transparent"frameborder="0" allowfullscreen></iframe><img src="images/data/images/slide5new.jpg" alt="012" title="" /></li>-->
						</ul>
					</div>
					
					<div class="ws_bullets">
						<div>
							<a href="#"><img src="images/ThreeDDynamicPicture/data/tooltips/alt_pic01.jpg" alt="123" title="标题1234" /></a>
							<a href="#"><img src="images/ThreeDDynamicPicture/data/tooltips/alt_pic02.jpg" alt="456" title="标题1234" /></a>
							<a href="#"><img src="images/ThreeDDynamicPicture/data/tooltips/alt_pic03.jpg" alt="789" title="标题1234" /></a>
							<a href="#"><img src="images/ThreeDDynamicPicture/data/tooltips/alt_pic04.jpg" alt="123" title="标题1234" /></a>
							<a href="#"><img src="images/ThreeDDynamicPicture/data/tooltips/alt_pic05.jpg" alt="456" title="标题1234" /></a>
							<a href="#"><img src="images/ThreeDDynamicPicture/data/tooltips/alt_pic06.jpg" alt="789" title="标题1234" /></a>
							<a href="#"><img src="images/ThreeDDynamicPicture/data/tooltips/alt_pic07.jpg" alt="789" title="标题1234" /></a>
							
							<!-- 
							<a href="#"><img src="images/ThreeDDynamicPicture/data/tooltips/slide1.png" alt="CSS3 Slider" /></a>
							<a href="#"><img src="images/ThreeDDynamicPicture/data/tooltips/slide2.png" alt="CSS Slideshow" /></a>-
							<a href="#"><img src="images/ThreeDDynamicPicture/data/tooltips/slide3.png" alt="CSS Gallery" /></a>
							<a href="#"><img src="images/data/tooltips/slide5new.jpg" alt="Video Support" /></a>
							<a href="#"><img src="images/ThreeDDynamicPicture/data/tooltips/slide3.png" alt="CSS Gallery" /></a> -->
						</div>
					</div>
				</div>
				
				<script type="text/javascript" src="js/ThreeDengine/wowslider.js"></script>
				<script type="text/javascript" src="js/ThreeDengine/script.js"></script>
				<!-- 主体部分. -->
			</div>
		</div>
	</div>
	<!-- 3D轮播结束 -->	
			
			
			
			
			
			<!-- /wrapper -->
		<div class="footer-banner" style="width:728px; margin:30px auto"></div>
		</div>
		</div>
		
		<div class="happiness_hourse_div">
			<div class="happiness_hourse_div_left" style="height:42px;width:72%;">
				<table height="40px" width="775" border="0" class="common_font_size" style="font-size:13px;font-weight:bold;color:#666;">

					<tr align="center" valign="middle">
					
						<td width="130" style="color:#F69;font-style:italic;font-family:'仿宋'">
			
						
							
							<table  id="table_02" border="2px" style="position:absolute;border:2px;border-color:#F36;margin-top:-15px" >
								<tr>
									<td id="td_2" style=" border-style:solid;border-bottom:#F09;border-color:#F39; border-width:5px; color:#F09;border-bottom-color:#F09;" >
										<p style="font-size:18px;"><img src="images/bkpic01.PNG" /></p>
										<!--<a href="#" style="color:#F69">就在你身边,他们相爱啦</a>-->
										<div style="clear:both;margin-top:-55px">
											<img src="images/6g.jpg" style="width:80px; height:50px"/>
										</div>
									</td>
								</tr>
							</table>
						</td>		
					</tr>
		
					<tr>
						<table style="margin-top:-47px;">
							<tr>
								<td>
									<!--5波三轮图-->
									<!--5波三轮图片开始-->
										
									<div class="top_slider" id="pl_app_focus">
										<div class="ts_inner" node-type="slider">
											<ul class="slider_list" >
												<li class="slider_item ">
												
													<div class="column_large ">
														<div class="column_large_one" action-type="showdesc">
															<div class="column_img_container">
																<img class="column_large_img" width="390" height="260" src="images/pic_1.jpg" alt=""  />
															</div>
															<div class="column_select_layer">
																<div class="layer_content">
																	<p class="column_title">2016年4月,我们爱之花盛开了</p>
																	<div class="column_info">
																		<i class="allstar"><i style="width:84%" class="star_bar"></i></i>
																		<span class="column_play_count">执子之手，与子偕老--张三&&翠花</span>
																	</div>
																</div>
																<div class="layer_mask"></div>
															</div>
															<a class="column_item_link" href="" title="" target="_self"></a>
														</div>
													</div>
												
														<div class="column_small middle_column">
															<div class="column_small_first " action-type="showdesc">
																<div class="column_img_container">
																	<img class="column_small_img" width="195" height="130" src="images/pic_2.jpg" alt=""  />
																</div>
																<div class="column_select_layer">
																	<div class="layer_content">
																		<p class="column_title">2016年5月,我们爱之花盛开了</p>
																		<div class="column_info">
																			<i class="allstar"><i style="width:84%" class="star_bar"></i></i>
																			<span class="column_play_count">AAAAAAAA</span>
																		</div>
																	</div>
																	<div class="layer_mask"></div>
																</div>
																<a class="column_item_link" href="" title="" target="_self"></a>
															</div>

															<div class="column_small_first " action-type="showdesc">
																<div class="column_img_container">
																	<img class="column_small_img" width="195" height="130" src="images/pic_3.jpg" alt=""  />
																</div>
																<div class="column_select_layer">
																	<div class="layer_content">
																		<p class="column_title">AAAAAAAA</p>
																		<div class="column_info">
																			<i class="allstar"><i style="width:84%" class="star_bar"></i></i>
																			<span class="column_play_count">AAAAAAAA</span>
																		</div>
																	</div>
																	<div class="layer_mask"></div>
																</div>
																<a class="column_item_link" href="" title="" target="_self"></a>
															</div>
														</div>
													
														<div class="column_small ">
															<div class="column_small_first " action-type="showdesc">
																<div class="column_img_container">
																	<img class="column_small_img" width="195" height="130" src="images/pic_4.jpg" alt=""  />
																</div>
																<div class="column_select_layer">
																	<div class="layer_content">
																		<p class="column_title">AAAAAAAA</p>
																		<div class="column_info">
																			<i class="allstar"><i style="width:82%" class="star_bar"></i></i>
																			<span class="column_play_count">AAAAAAAA</span>
																		</div>
																	</div>
																	<div class="layer_mask"></div>
																</div>
																<a class="column_item_link" href="" title="" target="_self"></a>
															</div>

															<div class="column_small_first " action-type="showdesc">
																<div class="column_img_container">
																	<img class="column_small_img" width="195" height="130" src="images/pic_15.jpg" alt=""  />
																</div>
																<div class="column_select_layer">
																	<div class="layer_content">
																		<p class="column_title">AAAAAAAA</p>
																		<div class="column_info">
																			<i class="allstar"><i style="width:84%" class="star_bar"></i></i>
																			<span class="column_play_count">AAAAAAAA</span>
																		</div>
																	</div>
																	<div class="layer_mask"></div>
																</div>
																<a class="column_item_link" href="" title="" target="_self"></a>
															</div>
														
														</div>
													</li>                
													<li class="slider_item ">
														<div class="column_small ">
															<div class="column_small_first " action-type="showdesc">
																<div class="column_img_container">
																	<img class="column_small_img" width="195" height="130" src="images/pic_6.jpg" alt=""  />
																</div>
																<div class="column_select_layer">
																	<div class="layer_content">
																		<p class="column_title">AAAAAAAA</p>
																		<div class="column_info">
																			<i class="allstar"><i style="width:68%" class="star_bar"></i></i>
																			<span class="column_play_count">AAAAAAAA</span>
																		</div>
																	</div>
																	<div class="layer_mask"></div>
																</div>
																<a class="column_item_link" href="" title="" target="_self"></a>
															</div>
														
															<div class="column_small_first " action-type="showdesc">
																<div class="column_img_container">
																	<img class="column_small_img" width="195" height="130" src="images/pic_7.jpg" alt=""  />
																</div>
																<div class="column_select_layer">
																	<div class="layer_content">
																		<p class="column_title">AAAAAAAA</p>
																		<div class="column_info">
																			<i class="allstar"><i style="width:82%" class="star_bar"></i></i>
																			<span class="column_play_count">AAAAAAAA</span>
																		</div>
																	</div>
																	<div class="layer_mask"></div>
																</div>
																<a class="column_item_link" href="" title="" target="_self"></a>
															</div>
														</div>
														
														<div class="column_large middle_column">
															<div class="column_large_one" action-type="showdesc">
																<div class="column_img_container">
																	<img class="column_large_img" width="390" height="260" src="images/pic_8.jpg" alt=""  />
																</div>
																<div class="column_select_layer">
																	<div class="layer_content">
																		<p class="column_title">AAAAAAAA</p>
																		<div class="column_info">
																			<i class="allstar"><i style="width:%" class="star_bar"></i></i>
																			<span class="column_play_count"></span>
																		</div>
																	</div>
																	<div class="layer_mask"></div>
																</div>
																<a class="column_item_link" href="" title="" target="_self"></a>
															</div>
														</div>

														<div class="column_small ">
															<div class="column_small_first " action-type="showdesc">
																<div class="column_img_container">
																	<img class="column_small_img" width="195" height="130" src="images/pic_9.jpg" alt=""  />
																</div>
																<div class="column_select_layer">
																	<div class="layer_content">
																		<p class="column_title">AAAAAAAA</p>
																		<div class="column_info">
																			<i class="allstar"><i style="width:0%" class="star_bar"></i></i>
																			<span class="column_play_count">AAAAAAAA</span>
																		</div>
																	</div>
																	<div class="layer_mask"></div>
																</div>
																<a class="column_item_link" href="" title="" target="_self"></a>
															</div>
														
															<div class="column_small_first " action-type="showdesc">
																<div class="column_img_container">
																	<img class="column_small_img" width="195" height="130" src="images/pic_10.jpg" alt=""  />
																</div>
																<div class="column_select_layer">
																	<div class="layer_content">
																		<p class="column_title">AAAAAAAA</p>
																		<div class="column_info">
																			<i class="allstar"><i style="width:86%" class="star_bar"></i></i>
																			<span class="column_play_count">AAAAAAAA</span>
																		</div>
																	</div>
																	<div class="layer_mask"></div>
																</div>
																<a class="column_item_link" href="" title="" target="_self"></a>
															</div>
														</div>
													</li> 
																   
													<li class="slider_item ">
														<div class="column_small ">
															<div class="column_small_first " action-type="showdesc">
																<div class="column_img_container">
																	<img class="column_small_img" width="195" height="130" src="images/loveOfStory03.jpg" alt=""  />
																</div>
																<div class="column_select_layer">
																	<div class="layer_content">
																		<p class="column_title">AAAAAAAA</p>
																		<div class="column_info">
																			<i class="allstar"><i style="width:100%" class="star_bar"></i></i>
																			<span class="column_play_count">AAAAAAAA。</span>
																		</div>
																	</div>
																	<div class="layer_mask"></div>
																</div>
																<a class="column_item_link" href="" title="" target="_self"></a>
															</div>

															<div class="column_small_first " action-type="showdesc">
																<div class="column_img_container">
																	<img class="column_small_img" width="195" height="130" src="images/pic_13.jpg" alt=""  />
																</div>
																<div class="column_select_layer">
																	<div class="layer_content">
																		<p class="column_title">AAAAAAAA</p>
																		<div class="column_info">
																			<i class="allstar"><i style="width:68%" class="star_bar"></i></i>
																			<span class="column_play_count">AAAAAAAA</span>
																		</div>
																	</div>
																	<div class="layer_mask"></div>
																</div>
																<a class="column_item_link" href="" title="" target="_self"></a>
															</div>
														</div>
													
														<div class="column_small middle_column">
															<div class="column_small_first " action-type="showdesc">
																<div class="column_img_container">
																	<img class="column_small_img" width="195" height="130" src="images/pic_14.jpg" alt=""  />
																</div>
																<div class="column_select_layer">
																	<div class="layer_content">
																		<p class="column_title">AAAAAAAA</p>
																		<div class="column_info">
																			<i class="allstar"><i style="width:86%" class="star_bar"></i></i>
																			<span class="column_play_count">AAAAAAAA</span>
																		</div>
																	</div>
																	<div class="layer_mask"></div>
																</div>
																<a class="column_item_link" href="" title="" target="_self"></a>
															</div>
														
															<div class="column_small_first " action-type="showdesc">
																<div class="column_img_container">
																	<img class="column_small_img" width="195" height="130" src="images/pic_15.jpg" alt=""  />
																</div>
																<div class="column_select_layer">
																	<div class="layer_content">
																		<p class="column_title">AAAAAAAA</p>
																		<div class="column_info">
																			<i class="allstar"><i style="width:84%" class="star_bar"></i></i>
																			<span class="column_play_count">AAAAAAAA</span>
																		</div>
																	</div>
																	<div class="layer_mask"></div>
																</div>
																<a class="column_item_link" href="" title="" target="_self"></a>
															</div>
														</div>

														<div class="column_large ">
															<div class="column_large_one" action-type="showdesc">
																<div class="column_img_container">
																	<img class="column_large_img" width="390" height="260" src="images/pic_16.jpg" alt=""  />
																</div>
																<div class="column_select_layer">
																	<div class="layer_content">
																		<p class="column_title">AAAAAAAA</p>
																		<div class="column_info">
																			<i class="allstar"><i style="width:84%" class="star_bar"></i></i>
																			<span class="column_play_count">AAAAAAAA</span>
																		</div>
																	</div>
																	<div class="layer_mask"></div>
																</div>
																<a class="column_item_link" href="" title="" target="_self"></a>
															</div>
														</div>
													</li>                
												</ul>
												<a class="slider_btn_left" href="javascript:;" title="" node-type="prev"></a>
												<a class="slider_btn_right" href="javascript:;" title="" node-type="next"></a>
											</div>
										</div>
									</div>
			
									<!--5波三轮图片结束-->
								</td>
							</tr>
						</table>
					</tr>
				</table>
			</div>

			
			<div class="happiness_hourse_div_right" style="width:26%;margin-left:10px;">
				<div class="happiness_hourse_div_right01"><img src="images/pic_19.jpg"/></div>
				<div class="happiness_hourse_div_right02" width>
					<img src="images/wljb.jpg" width="100%" height="66px"/>
				</div>
		   </div>
	</div>
	
	
	<!--
	选项卡图片切换-->
	<div class="happyness_house_tab"  style="padding-top:10px;">
		<!--开始-->
		<!--width:65%  -->
		<div class="top-vrank" id="artists" style="width:62%"><!--style="width:700px;"-->
        <div class="mod-hd" align="left">
              <h3 style="color:#F30;font-style:italic;font-size:14px;">
			  	<span><img src="images/6_ico.jpg" style="width:30px;height:30px;"/></span>
			 执子之手,与子偕老</h3>
              <ul class="tabs">
               	<li data-type="sc.chinaz.com" class="first active" style="width:100px"><img src="images/4_ico.jpg" style="width:20px;height:20px"/><a href="#" hidefocus="true"><span>郎才女貌</span></a></li>
                <li data-type="www.zhaolezi.net" class="" style="width:60px;"><img src="images/2_ico.jpg" style="width:20px;height:20px"/><a href="#" hidefocus="true"><span>求婚</span></a></li>
                <li data-type="sc.chinaz.com" class="" style="width:60px"><img src="images/9_ico.jpg" style="width:20px;height:20px"/><a href="#" hidefocus="true"><span>古风</span></a></li>
                <li data-type="whgglb.com" class="" style="width:60px"><img src="images/1_ico.jpg" style="width:20px;height:20px"/><a href="#" hidefocus="true"><span>感人</span></a></li>
                <li data-type="www.whgglb.com" class="" style="width:100px"><img src="images/10_ico.jpg" style="width:20px;height:20px"/><a href="#" hidefocus="true"><span>天下无双</span></a></li>
              </ul>
              <span class="more" style="margin-top:-10px"><span><img src="images/Magenta.jpg" style="width:30px;height:30px"/></span><a href="#" target="_self" id="more">更多>>></a></span>
          </div>
          
<div class="mod-bd">
<div class="views" style="width:100%;height:838px;"><!--680px-->
    <!--郎才女貌-->
    <div class="view-item active" style="background-color:#F2F2F2">
        <table style="width:680px">
			<tr>
			<td>
	
			<div class="footerend" style="clear:both">
   	   
				<div class="min"><a style="text-decoration:none;" href="PeropleInformation.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1">
				
					<!--图片加上透明div层的属性-->
					<!--"images/LangCaiNvMao\/"+""+"1.jpg");-->
					<div class="con_img" style="position: relative;width:340px;height:203px;">
						<img id="img01" style="width:97%;height:100%;"/>
						<span id="ms01" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH01" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			
				
			</td>
			<td>
		
			<div class="footerend" class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="images/LangCaiNvMao/2.jpg?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img02" style="width:97%;height:100%;"/>
						<span id="ms02" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH02" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
				
					</a>
				</div>	   
			</div>
			</td>
			</tr>
			<tr style="border-top:#F2F2F2 solid 10px;">
			<td>
			<div class="min"><a style="text-decoration:none;" href="images/LangCaiNvMao/3.jpg?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
					<!--"images/LangCaiNvMao\/"+""+"1.jpg");-->
					<div class="con_img" style="position: relative;width:340px;height:203px;">
						<img id="img03" style="width:97%;height:100%;"/>
						<span id="ms03" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH03" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			
			</td>
			<td>
				<div class="min"><a style="text-decoration:none;" href="images/LangCaiNvMao/4.jpg?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
					<!--"images/LangCaiNvMao\/"+""+"1.jpg");-->
					<div class="con_img" style="position: relative;width:340px;height:203px;">
						<img id="img04" style="width:97%;height:100%;"/>
						<span id="ms04" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH04" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			
			</td>
			</tr>
			<tr style="border-top:#F2F2F2 solid 10px;">
			<td>
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="images/LangCaiNvMao/5.jpg?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px">
						<img id="img05"  style="width:97%;height:100%;"/>
						<span id="ms05" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH05" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
				
					</a>
				</div>	   
			</div>
			</td>
			<td>
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="images/LangCaiNvMao/6.jpg?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img06" style="width:97%;height:100%;"/>
						<span id="ms06" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH06" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF;">点击查看资料</h2>
					</div>
				</a>
				</div>	   
			</div>
			</td>
			</tr>
			<tr style="border-top:#F2F2F2 solid 10px;">
			<td>
			
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="images/LangCaiNvMao/7.jpg?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img07"  style="width:97%;height:100%;"/>
						<span id="ms07" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH07" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			</td>
			<td>
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="images/LangCaiNvMao/8.jpg?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img08" style="width:97%;height:100%;"/>
						<span id="ms08" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH08" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			</td>
			</tr>
		</table>
    </div>
	
	 <!-- 调用随机函数动态加载图片 -->
   
	<script type="text/javascript">
	 	<%
	 	int[] temp=rac.getRandomArr(27);//一定要放在for循环外，定义一个全部变量存储rac.getRandomArr(27),否则会引起数的重复，原因是函数调用了多次
	 	for(int i=0;i<27;i++){
			newObjArr[i]=temp[i];
			//System.out.print(newObjArr[i]+" ");
		}
	 	%>
		var  url01 = "images/LangCaiNvMao\/"+<%=newObjArr[0]%>+".jpg";
		var  url02 = "images/LangCaiNvMao\/"+<%=newObjArr[1]%>+".jpg";
		var  url03 = "images/LangCaiNvMao\/"+<%=newObjArr[2]%>+".jpg";
		var  url04 = "images/LangCaiNvMao\/"+<%=newObjArr[3]%>+".jpg";
		var  url05 = "images/LangCaiNvMao\/"+<%=newObjArr[4]%>+".jpg";
		var  url06 = "images/LangCaiNvMao\/"+<%=newObjArr[5]%>+".jpg";
		var  url07 = "images/LangCaiNvMao\/"+<%=newObjArr[6]%>+".jpg";
		var  url08 = "images/LangCaiNvMao\/"+<%=newObjArr[7]%>+".jpg";
		document.getElementById("img01").src = url01;
		document.getElementById("img02").src = url02;
		document.getElementById("img03").src = url03;
		document.getElementById("img04").src = url04;
		document.getElementById("img05").src = url05;
		document.getElementById("img06").src = url06;
		document.getElementById("img07").src = url07;
		document.getElementById("img08").src = url08;
		
	</script>
	
    <!--求婚系列-->
    <div class="view-item" style="background-color:#F2F2F2;">
        <table style="width:680px">
			<tr>
			<td>
	
			<div class="footerend" style="clear:both">
   	   
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
				<!--"images/LangCaiNvMao\/"+""+"1.jpg");-->
					<div class="con_img" style="position: relative;width:340px;height:203px;">
						<img id="img09" style="width:97%;height:100%;"/>
						<span id="ms09" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH09" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			
				
			</td>
			<td>
		
			<div class="footerend" class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img10" style="width:97%;height:100%;"/>
						<span id="ms10" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH10" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
				
					</a>
				</div>	   
			</div>
			</td>
			</tr>
			<tr style="border-top:#F2F2F2 solid 10px;">
			<td>
			<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
				<!--"images/LangCaiNvMao\/"+""+"1.jpg");-->
					<div class="con_img" style="position: relative;width:340px;height:203px;">
						<img id="img11" style="width:97%;height:100%;"/>
						<span id="ms11" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH11" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			
			</td>
			<td>
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
					<!--"images/LangCaiNvMao\/"+""+"1.jpg");-->
					<div class="con_img" style="position: relative;width:340px;height:203px;">
						<img id="img12" style="width:97%;height:100%;"/>
						<span id="ms12" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH12" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			
			</td>
			</tr>
			<tr style="border-top:#F2F2F2 solid 10px;">
			<td>
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px">
						<img id="img13"  style="width:97%;height:100%;"/>
						<span id="ms13" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH13" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
				
					</a>
				</div>	   
			</div>
			</td>
			<td>
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img14" style="width:97%;height:100%;"/>
						<span id="ms14" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH14" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF;">点击查看资料</h2>
					</div>
				</a>
				</div>	   
			</div>
			</td>
			</tr>
			<tr style="border-top:#F2F2F2 solid 10px;">
			<td>
			
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img15"  style="width:97%;height:100%;"/>
						<span id="ms15" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH15" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			</td>
			<td>
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img16" style="width:97%;height:100%;"/>
						<span id="ms16" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH16" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			</td>
			</tr>
		</table>
    </div>
    <!-- 调用随机函数动态加载图片 -->
	<script type="text/javascript">
	 	<%
	 	newObjArr=new int[15];//刷新数组
	 	int[] temp01=rac.getRandomArr(15);//一定要放在for循环外，定义一个全部变量存储rac.getRandomArr(27),否则会引起数的重复，原因是函数调用了多次
	 	for(int i=0;i<15;i++){
			newObjArr[i]=temp01[i];
			//System.out.print(newObjArr[i]+" ");
		}
	 	%>
		var  url01 = "images/qiuHun\/"+<%=newObjArr[0]%>+".jpg";
		var  url02 = "images/qiuHun\/"+<%=newObjArr[1]%>+".jpg";
		var  url03 = "images/qiuHun\/"+<%=newObjArr[2]%>+".jpg";
		var  url04 = "images/qiuHun\/"+<%=newObjArr[3]%>+".jpg";
		var  url05 = "images/qiuHun\/"+<%=newObjArr[4]%>+".jpg";
		var  url06 = "images/qiuHun\/"+<%=newObjArr[5]%>+".jpg";
		var  url07 = "images/qiuHun\/"+<%=newObjArr[6]%>+".jpg";
		var  url08 = "images/qiuHun\/"+<%=newObjArr[7]%>+".jpg";
		document.getElementById("img09").src = url01;
		document.getElementById("img10").src = url02;
		document.getElementById("img11").src = url03;
		document.getElementById("img12").src = url04;
		document.getElementById("img13").src = url05;
		document.getElementById("img14").src = url06;
		document.getElementById("img15").src = url07;
		document.getElementById("img16").src = url08;
		
	</script>
	
	<!--古风系列-->
    <div class="view-item" style="background-color:#F2F2F2">
          <table style="width:680px">
			<tr>
			<td>
	
			<div class="footerend" style="clear:both">
   	   
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
				<!--"images/LangCaiNvMao\/"+""+"1.jpg");-->
					<div class="con_img" style="position: relative;width:340px;height:203px;">
						<img id="img17" style="width:97%;height:100%;"/>
						<span id="ms17" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH17" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			
				
			</td>
			<td>
		
			<div class="footerend" class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img18" style="width:97%;height:100%;"/>
						<span id="ms18" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH18" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
				
					</a>
				</div>	   
			</div>
			</td>
			</tr>
			<tr style="border-top:#F2F2F2 solid 10px;">
			<td>
			<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
				<!--"images/LangCaiNvMao\/"+""+"1.jpg");-->
					<div class="con_img" style="position: relative;width:340px;height:203px;">
						<img id="img19" style="width:97%;height:100%;"/>
						<span id="ms19" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH19" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			
			</td>
			<td>
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
					<!--"images/LangCaiNvMao\/"+""+"1.jpg");-->
					<div class="con_img" style="position: relative;width:340px;height:203px;">
						<img id="img20" style="width:97%;height:100%;"/>
						<span id="ms20" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH20" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			
			</td>
			</tr>
			<tr style="border-top:#F2F2F2 solid 10px;">
			<td>
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px">
						<img id="img21"  style="width:97%;height:100%;"/>
						<span id="ms21" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH21" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
				
					</a>
				</div>	   
			</div>
			</td>
			<td>
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img22" style="width:97%;height:100%;"/>
						<span id="ms22" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH22" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF;">点击查看资料</h2>
					</div>
				</a>
				</div>	   
			</div>
			</td>
			</tr>
			<tr style="border-top:#F2F2F2 solid 10px;">
			<td>
			
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img23"  style="width:97%;height:100%;"/>
						<span id="ms23" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH23" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			</td>
			<td>
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img24" style="width:97%;height:100%;"/>
						<span id="ms24" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH24" style="margin-top:-100px;opacity:0;margin-left:120px;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			</td>
			</tr>
		</table>
    </div>
	
	    
	<!-- 调用随机函数动态加载图片 -->
	<script type="text/javascript">
	 	<%
	 	newObjArr=new int[28];//刷新数组
	 	int[] temp02=rac.getRandomArr(28);//一定要放在for循环外，定义一个全部变量存储rac.getRandomArr(27),否则会引起数的重复，原因是函数调用了多次
	 	for(int i=0;i<28;i++){
			newObjArr[i]=temp02[i];
			//System.out.print(newObjArr[i]+" ");
		}
	 	%>
		var  url01 = "images/guFeng\/"+<%=newObjArr[0]%>+".jpg";
		var  url02 = "images/guFeng\/"+<%=newObjArr[1]%>+".jpg";
		var  url03 = "images/guFeng\/"+<%=newObjArr[2]%>+".jpg";
		var  url04 = "images/guFeng\/"+<%=newObjArr[3]%>+".jpg";
		var  url05 = "images/guFeng\/"+<%=newObjArr[4]%>+".jpg";
		var  url06 = "images/guFeng\/"+<%=newObjArr[5]%>+".jpg";
		var  url07 = "images/guFeng\/"+<%=newObjArr[6]%>+".jpg";
		var  url08 = "images/guFeng\/"+<%=newObjArr[7]%>+".jpg";
		document.getElementById("img17").src = url01;
		document.getElementById("img18").src = url02;
		document.getElementById("img19").src = url03;
		document.getElementById("img20").src = url04;
		document.getElementById("img21").src = url05;
		document.getElementById("img22").src = url06;
		document.getElementById("img23").src = url07;
		document.getElementById("img24").src = url08;
		
	</script>
	
    <!--感人系列-->
    <div class="view-item" style="background-color:#F2F2F2">
      <table style="width:680px">
			<tr>
			<td>
	
			<div class="footerend" style="clear:both">
   	   
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
				<!--"images/LangCaiNvMao\/"+""+"1.jpg");-->
					<div class="con_img" style="position: relative;width:340px;height:203px;">
						<img id="img25" style="width:97%;height:100%;"/>
						<span id="ms25" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH25" style="margin-top:-100px;opacity:0;margin-left:120px;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			
				
			</td>
			<td>
		
			<div class="footerend" class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img26" style="width:97%;height:100%;"/>
						<span id="ms26" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH26" style="margin-top:-100px;opacity:0;margin-left:120px;color:#FFF">点击查看资料</h2>
					</div>
				
					</a>
				</div>	   
			</div>
			</td>
			</tr>
			<tr style="border-top:#F2F2F2 solid 10px;">
			<td>
			<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
				<!--"images/LangCaiNvMao\/"+""+"1.jpg");-->
					<div class="con_img" style="position: relative;width:340px;height:203px;">
						<img id="img27" style="width:97%;height:100%;"/>
						<span id="ms27" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH27" style="margin-top:-100px;opacity:0;margin-left:120px;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			
			</td>
			<td>
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
					<!--"images/LangCaiNvMao\/"+""+"1.jpg");-->
					<div class="con_img" style="position: relative;width:340px;height:203px;">
						<img id="img28" style="width:97%;height:100%;"/>
						<span id="ms28" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH28" style="margin-top:-100px;opacity:0;margin-left:120px;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			
			</td>
			</tr>
			<tr style="border-top:#F2F2F2 solid 10px;">
			<td>
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px">
						<img id="img29"  style="width:97%;height:100%;"/>
						<span id="ms29" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH29" style="margin-top:-100px;opacity:0;margin-left:120px;color:#FFF">点击查看资料</h2>
					</div>
				
					</a>
				</div>	   
			</div>
			</td>
			<td>
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img30" style="width:97%;height:100%;"/>
						<span id="ms30" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH30" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF;">点击查看资料</h2>
					</div>
				</a>
				</div>	   
			</div>
			</td>
			</tr>
			<tr style="border-top:#F2F2F2 solid 10px;">
			<td>
			
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img31"  style="width:97%;height:100%;"/>
						<span id="ms31" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH31" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			</td>
			<td>
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img32" style="width:97%;height:100%;"/>
						<span id="ms32" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH32" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			</td>
			</tr>
		</table>
    </div>
    
    <!-- 调用随机函数动态加载图片 -->
	<script type="text/javascript">
	 	<%
	 	newObjArr=new int[21];//刷新数组
	 	int[] temp03=rac.getRandomArr(21);//一定要放在for循环外，定义一个全部变量存储rac.getRandomArr(27),否则会引起数的重复，原因是函数调用了多次
	 	for(int i=0;i<21;i++){
			newObjArr[i]=temp03[i];
			//System.out.print(newObjArr[i]+" ");
		}
	 	%>
		var  url01 = "images/ganRen\/"+<%=newObjArr[0]%>+".jpg";
		var  url02 = "images/ganRen\/"+<%=newObjArr[1]%>+".jpg";
		var  url03 = "images/ganRen\/"+<%=newObjArr[2]%>+".jpg";
		var  url04 = "images/ganRen\/"+<%=newObjArr[3]%>+".jpg";
		var  url05 = "images/ganRen\/"+<%=newObjArr[4]%>+".jpg";
		var  url06 = "images/ganRen\/"+<%=newObjArr[5]%>+".jpg";
		var  url07 = "images/ganRen\/"+<%=newObjArr[6]%>+".jpg";
		var  url08 = "images/ganRen\/"+<%=newObjArr[7]%>+".jpg";
		document.getElementById("img25").src = url01;
		document.getElementById("img26").src = url02;
		document.getElementById("img27").src = url03;
		document.getElementById("img28").src = url04;
		document.getElementById("img29").src = url05;
		document.getElementById("img30").src = url06;
		document.getElementById("img31").src = url07;
		document.getElementById("img32").src = url08;
		
	</script>
    
    
    <!-- 天下无双 -->
    <div class="view-item" style="background-color:#F2F2F2">
         <table style="width:680px">
			
			<tr style="border-top:#F2F2F2 solid 10px;">
			<td>
			<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
				<!--图片加上透明div层的属性-->
				<!--"images/LangCaiNvMao\/"+""+"1.jpg");-->
					<div class="con_img" style="position: relative;width:340px;height:203px;">
						<img id="img33" style="width:97%;height:100%;"/>
						<span id="ms33" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH33" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			
			</td>
			<td>
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
					<!--"images/LangCaiNvMao\/"+""+"1.jpg");-->
					<div class="con_img" style="position: relative;width:340px;height:203px;">
						<img id="img34" style="width:97%;height:100%;"/>
						<span id="ms34" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH34" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			
			</td>
			</tr>
			<tr style="border-top:#F2F2F2 solid 10px;">
			<td>
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px">
						<img id="img35"  style="width:97%;height:100%;"/>
						<span id="ms35" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH35" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
				
					</a>
				</div>	   
			</div>
			</td>
			<td>
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img36" style="width:97%;height:100%;"/>
						<span id="ms36" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH36" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF;">点击查看资料</h2>
					</div>
				</a>
				</div>	   
			</div>
			</td>
			</tr>
			<tr style="border-top:#F2F2F2 solid 10px;">
			<td>
			
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img37"  style="width:97%;height:100%;"/>
						<span id="ms37" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH37" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			</td>
			<td>
				<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img38" style="width:97%;height:100%;"/>
						<span id="ms38" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH38" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			</td>
			</tr>
			
			<tr>
			<td>
	
			<div class="footerend" style="clear:both">
   	   
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
					<!--"images/LangCaiNvMao\/"+""+"1.jpg");-->
					<div class="con_img" style="position: relative;width:340px;height:203px;">
						<img id="img39" style="width:97%;height:100%;"/>
						<span id="ms39" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH39" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
					</a>
				</div>	   
			</div>
			
				
			</td>
			<td>
		
			<div class="footerend" class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="window/login.html?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				
					<!--图片加上透明div层的属性-->
					<div class="con_img" style="position: relative; width:340px;height:203px;">
						<img id="img40" style="width:97%;height:100%;"/>
						<span id="ms40" style="margin-left:12px; margin-bottom:10px;position:absolute;bottom: 0;left: 0; width:90%;height:90%;background:#CBBFAE;opacity:0">
						</span>
						<h2 id="msH40" style="margin-top:-100px;margin-left:120px;opacity:0;color:#FFF">点击查看资料</h2>
					</div>
				
					</a>
				</div>	   
			</div>
			</td>
			</tr>
		</table>
    </div>
    
     <!-- 调用随机函数动态加载图片 -->
	<script type="text/javascript">
	 	<%
	 	newObjArr=new int[29];//刷新数组
	 	int[] temp04=rac.getRandomArr(29);//一定要放在for循环外，定义一个全部变量存储rac.getRandomArr(27),否则会引起数的重复，原因是函数调用了多次
	 	for(int i=0;i<29;i++){
			newObjArr[i]=temp04[i];
			//System.out.print(newObjArr[i]+" ");
		}
	 	%>
		var  url01 = "images/tianXiaWuShuang\/"+<%=newObjArr[0]%>+".jpg";
		var  url02 = "images/tianXiaWuShuang\/"+<%=newObjArr[1]%>+".jpg";
		var  url03 = "images/tianXiaWuShuang\/"+<%=newObjArr[2]%>+".jpg";
		var  url04 = "images/tianXiaWuShuang\/"+<%=newObjArr[3]%>+".jpg";
		var  url05 = "images/tianXiaWuShuang\/"+<%=newObjArr[4]%>+".jpg";
		var  url06 = "images/tianXiaWuShuang\/"+<%=newObjArr[5]%>+".jpg";
		var  url07 = "images/tianXiaWuShuang\/"+<%=newObjArr[6]%>+".jpg";
		var  url08 = "images/tianXiaWuShuang\/"+<%=newObjArr[7]%>+".jpg";
		document.getElementById("img33").src = url01;
		document.getElementById("img34").src = url02;
		document.getElementById("img35").src = url03;
		document.getElementById("img36").src = url04;
		document.getElementById("img37").src = url05;
		document.getElementById("img38").src = url06;
		document.getElementById("img39").src = url07;
		document.getElementById("img40").src = url08;
		
	</script>
    
	</div>
	</div>
</div>
<!--结束-->

</div>

</div>

<!-- width:34%; -->
<div class="happyness_house_tab right" style="float:right;width:33%;height:850px;margin-top:10px">
	<div style="clear:both">
		<span><img src="images/bkpic02.PNG" /><br/></span>	
	</div>
	<div style="height:32%;width:100%;background-color:#FCFCFC;border:1px #E4E4E4 solid;">
		<div style="float:left;width:97%;background-color:#FCFCFC;margin:5px 5px;">
		<div style="background-color:#FCFCFC;">
			<div class="footerend" style="clear:both">
				<div class="min"><a style="text-decoration:none;" href="images/LangCaiNvMao/8.jpg?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
				<!-- <img id="storyImg01" src="images/loveOfStory01.jpg" width="100%" height="180px"/> -->
				<div class="con_img" style="position: relative;">
					<img id="storyImg01" src="images/loveOfStory01.jpg" width="100%" height="180px"/>
					<span id="stroyMs01" style="margin-left:18px; position:absolute;bottom: 0;left: 0; width:90%;height:160px;background:#CBBFAE;opacity:0">
						<!-- margin-bottom:8px -->
					</span>
					<div style="margin-top:-28px;">
						<h2 id="storyMsH01" style="margin-top:-20px;margin-left:120px;opacity:0;color:#FFF">点击查看后续内容</h2>
					</div>
				</div>
				</a>
				</div>	   
			</div>
		</div>
		<!--<div style="float:right; background-color:#FCFCFC;width:26%"">
			<span>
				父母每天给我打<br/>
				电话,除了关心<br/>
				我的身体就是问<br/>
				我找对象的事情,<br/>
				对我的婚姻大事<br/>
				也特别的着急,这<br/>
				让我很纠结,事<br/>
				业和终身大事怎<br/>
				么去衡量,无奈<br/>
				之下,我...<br/>
			</span>
		</div>
		
		<div style="clear:both;background-color:#FCFCFC;"><span style="margin-top:10px;">爱情故事1</span></div>-->
		
		<div style="clear:both; background-color:#FCFCFC;width:100%;margin-top:15px;color:#000;font-family:'仿宋';font-size:14px;">
				<!-- 60个字 -->
				&nbsp;&nbsp;&nbsp;&nbsp;父母每天给我打电话,除了关心我的身体就是问我找对象的事情,对我的婚姻大事也特别的着急,这让我很纠结,事业和终身大事怎么去衡量
				<img src="images/Magenta.jpg" style="width:15px;height:13px;"/>
				<img src="images/Magenta.jpg" style="width:15px;height:13px;"/>
				<img src="images/Magenta.jpg" style="width:15px;height:13px;"/>
				<!-- 星座信息 -->
		</div>
		</div>
	</div>
	<div style="margin-top:3px;clear:both;"></div>
	<div style="height:32%;width:100%;background-color:#FCFCFC;border:1px #E4E4E4 solid;">
		<div style="float:left;width:97%;background-color:#FCFCFC;margin:5px 5px;">
		<div class="footerend" style="clear:both">
			<div class="min"><a style="text-decoration:none;" href="images/LangCaiNvMao/8.jpg?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
			<!-- <img id="storyImg01" src="images/loveOfStory01.jpg" width="100%" height="180px"/> -->
			<div class="con_img" style="position: relative;">
				<img id="storyImg02" src="images/loveOfStory02.jpg" width="100%" height="180px"/>
				<span id="stroyMs02" style="margin-left:18px; position:absolute;bottom: 0;left: 0; width:90%;height:160px;background:#CBBFAE;opacity:0">
					<!-- margin-bottom:8px -->
				</span>
				<div style="margin-top:-28px;">
					<h2 id="storyMsH02" style="margin-top:-20px;margin-left:120px;opacity:0;color:#FFF">点击查看后续内容</h2>
				</div>
			</div>
			</a>
			</div>	   
		</div>
		<div style="clear:both; background-color:#FCFCFC;width:100%;margin-top:15px;color:#000;font-family:'仿宋';font-size:14px;">
				&nbsp;&nbsp;&nbsp;&nbsp;选择他真的可以说是一见钟情了。红娘给我介绍的4个人当中,唯独他让我觉得各方面都合适,还让我感觉到了无比的踏实感,也许是他的真
				<img src="images/Magenta.jpg" style="width:15px;height:13px;"/>
				<img src="images/Magenta.jpg" style="width:15px;height:13px;"/>
				<img src="images/Magenta.jpg" style="width:15px;height:13px;"/>
				<!-- 星座信息 -->
		</div>
		</div>	
	</div>
	<div style="margin-top:3px;clear:both;"></div>
	<div style="height:33%;width:100%;background-color:#FCFCFC;border:1px #E4E4E4 solid;">
		<div style="float:left;width:97%;background-color:#FCFCFC;margin:5px 5px;">
		<div class="footerend" style="clear:both">
			<div class="min"><a style="text-decoration:none;" href="images/LangCaiNvMao/8.jpg?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
			<!-- <img id="storyImg01" src="images/loveOfStory01.jpg" width="100%" height="180px"/> -->
			<div class="con_img" style="position: relative;">
				<img id="storyImg03" src="images/loveOfStory03.jpg" width="100%" height="180px"/>
				<span id="stroyMs03" style="margin-left:18px; position:absolute;bottom: 0;left: 0; width:90%;height:160px;background:#CBBFAE;opacity:0">
					<!-- margin-bottom:8px -->
				</span>
				<div style="margin-top:-28px;">
					<h2 id="storyMsH03" style="margin-top:-20px;margin-left:120px;opacity:0;color:#FFF">点击查看后续内容</h2>
				</div>
			</div>
			</a>
			</div>	   
		</div>
		<div style="clear:both; background-color:#FCFCFC;width:100%;margin-top:15px;color:#000;font-family:'仿宋';font-size:14px;">
				&nbsp;&nbsp;&nbsp;&nbsp;我以为达浪这个名字只会是电视剧里面朱碧池(小猪)饰演的一个角色,但是没想到,等候了32年,我的生命中也出现了达浪这个人,我来自
				<img src="images/Magenta.jpg" style="width:15px;height:13px;"/>
				<img src="images/Magenta.jpg" style="width:15px;height:13px;"/>
				<img src="images/Magenta.jpg" style="width:15px;height:13px;"/>
				<!-- 星座信息 -->
		</div>
		</div>
	</div>
	<!--
		<div style="height:24%;width:100%;background-color:#FCFCFC;border:1px #E4E4E4 solid;">
		<div style="float:left;width:72%;background-color:#FCFCFC">
		<div class="footerend" style="clear:both">
			<div class="min"><a style="text-decoration:none;" href="images/LangCaiNvMao/8.jpg?lightbox[iframe]=true&lightbox[width]=600&lightbox[height]=400" class="lightbox" rel="group1" >
			/* <img id="storyImg01" src="images/loveOfStory01.jpg" width="100%" height="180px"/>*/
			<div class="con_img" style="position: relative;">
				<img id="storyImg04" src="images/loveOfStory04.jpg" width="100%" height="180px"/>
				<span id="stroyMs04" style="margin-left:12px; position:absolute;bottom: 0;left: 0; width:90%;height:160px;background:#CBBFAE;opacity:0">
					/* margin-bottom:8px */
				</span>
				<div style="margin-top:-28px">
					<h2 id="storyMsH04" style="margin-top:-20px;opacity:0;color:#FFF">点击查看后续内容</h2>
				</div>
			</div>
			</a>
			</div>	   
		</div>
		</div>
		<div style="float:right; background-color:#FCFCFC;width:26%"">
			<span>
				111111111111100<br />
				111111111111100<br />
				111111111111100<br />
				111111111111100<br />
				111111111111100<br />
				111111111111100<br />
				111111111111100<br />
				111111111111100<br />
				111111111111100<br />
				111111111111100<br />
			</span>
		</div>
		<div style="clear:both;background-color:#FCFCFC;"><span style="margin-top:10px;">爱情故事4</span></div>
	</div>
	-->
	<div><a href="true_love_story.jsp" style="color:#F3C">更多>>></a></div>
</div>


<!--start-->
<div class="happiness_webPagefooter01">
		<img src="web_images/pic_9.jpg"/>
</div>
<!--end-->

<!--start-->
<div class="happiness_webPagefooter02">
	<table style="width:100%;"align="center">     <!--border:1px #FF3366 solid;-->
		<tr align="center">
			<td height="26"><img src="images/bk01.PNG" width="74" height="24"></td>
			<td ><img src="images/bh02.PNG" width="78" height="25"></td>
			<td ><img src="images/bh03.PNG" width="77" height="24"></td>
			<td ><img src="images/bh04.PNG" width="81" height="24"></td>
			<td ><img src="images/bh05.PNG" width="116" height="24"></td>
			<td ><img src="images/bh06.PNG" width="95" height="24"></td>
		</tr>
		<tr>

			<td align="center" ><a href="#" target="_self">找对象</a></td>
			<td align="center" ><a href="#" target="_self">如何注册</a></td>
			<td align="center" ><a href="#" target="_self">线上服务</a></td>
			<td align="center" ><a href="#" target="_self">使用指南</a></td>
			<td align="center" ><a href="#" target="_self">媒体节目合作</a></td>
			<td align="center" ><a href="#" target="_self">真缘网简介</a></td>
		</tr>
		
		<tr>
			<td align="center" ><a href="#" target="_self">星座情缘</a></td>
			<td align="center" ><a href="#" target="_self">新手上路</a></td>
			<td align="center" ><a href="#" target="_self">交友活动</a></td>
			<td align="center" ><a href="#" target="_self">支付方式</a></td>
			<td align="center" ><a href="#" target="_self">企业交友专场</a></td>
			<td align="center" ></td>
		</tr>
		<tr>
			<td align="center" ><a href="#" target="_self">真缘测试</a></td>
			<td align="center" ><a href="#" target="_self">获赠邮票</a></td>
			<td align="center" ><a href="#" target="_self">情侣互动</a></td>
			<td align="center" ><a href="#" target="_self">常见问题</a></td>
			<td align="center" ></td>
			<td align="center" ></td>
		</tr>
		
		<tr>
			<td align="center" ><a href="#" target="_self">聊天交友</a></td>
			<td align="center" ><a href="#" target="_self">购买服务</a></td>
			<td align="center" ></td>
			<td align="center" ><a href="#" target="_self">联系客服</a></td>
			<td align="center" ></td>
			<td align="center" ></td>
		</tr>
	</table>
</div>
<!--end-->

<!--start-->
<div id="happness_web_footer">
		<table width="100%">
				<tr>
						<td>
							<table width="100%">
								<tr align="center">
									<td><a href="#" target="_self">联系客服</a></td>
									<td><a href="#" target="_self">关于我们</a></td>
									<td><a href="#" target="_self">Investor Relations</a></td>
									<td><a href="#" target="_self">联系我们</a></td>
									<td><a href="#" target="_self">无线业务</a></td>
									<td><a href="#" target="_self">注册条款</a></td>
									<td><a href="#" target="_self">友情链接</a></td>
									<td><a href="#" target="_self">招聘信息</a></td>
									<td><a href="#" target="_self">交友信息</a></td>
									<td><a href="#" target="_self">隐私保护</a></td>
									<td><a href="#" target="_self">帮助中心</a></td>
									<td><a href="#" target="_self">安全中心</a></td>
								</tr>
							</table>
						</td>
				</tr>
				<tr>
						<td align="center">
							<table width="70%">
								<tr align="center">
									<td>中文实名：真缘网</td>
									<td>ICP证书：沪B2-20100074</td>
									<td>增值电信业务经营许可证：沪B2-20070313</td>
									<td>ISO9001质量体系认证</td>
								</tr>
							</table>
						</td>
				</tr>
				<tr>
						<td align="center">
							<table width="50%">
								<tr align="center">
									<td>2003-2016 版权所有 </td>
									<td>京公网安备110105002124号 </td>
									<td>不良和违法信息举报专线：0316-52660321</td>
								</tr>
							</table>
						</td>
				</tr>
		</table>
		
</div>
<!--end-->

<!--start-->
<div class="happness_web_end" style="clear:both;width:100%;height:80px;" align="center">
	<table width="60%" align="center">
		<tr>
			<td width="10%" align="center"><a href="#"><img src="web_images/icon_sh.gif" width="47" height="47"></a></td>
			<td width="13%" align="center"><a href="#"><img src="web_images/bjwj.jpg" width="42" height="47"></a></td>
			<td width="40%" align="center"><a href="#"><img src="web_images/pic_12.jpg" width="215" height="47"></a></td>
			<td width="37%" align="center"><a href="#"><img src="web_images/zghlw.jpg" width="219" height="47"></a></td>
		</tr>
	</table>
</div>
<!--end-->

</body>
<script>
	
$(function(){
	var $obj_1=$("#td_1");
	//var $obj_2=$("#td_2");
	var $obj_3=$("#td_3");
	var $obj_4=$("#td_4");
	var $obj_5=$("#td_5");
	var $obj_6=$("#td_6");
	var $obj_tab01=$("#table_01");
	//var $obj_tab02=$("#table_02");
	var $obj_tab03=$("#table_03");
	var $obj_tab04=$("#table_04");
	var $obj_tab05=$("#table_05");
	var $obj_tab06=$("#table_06");
	$obj_1.bind({//绑定事件	
		mouseover:function(){
			$obj_tab01.attr("border","2px");//添加border属性
			$obj_tab01.css("border-color","#F09");
			$obj_1.css("border-bottom","soild");
			$obj_1.css("border-width","5px");
			$obj_1.css("color","#F09");
			$obj_1.css("border-bottom-color","#F09");
		},
		mouseout:function(){
			$obj_1.css("border-bottom-color","#FFF");
			$obj_tab01.attr("border","0px");//添加border属性
			$obj_1.css("color","#666");
		}
	});
	/*$obj_2.bind({//绑定事件	
		mouseover:function(){
			$obj_tab02.attr("border","2px");//添加border属性
			$obj_tab02.css("border-color","#F09");
			$obj_2.css("border-bottom","soild");
			$obj_2.css("border-width","5px");
			$obj_2.css("color","#F09");
			$obj_2.css("border-bottom-color","#F09");
		},
		mouseout:function(){
			$obj_2.css("border-bottom-color","#FFF");
			$obj_tab02.attr("border","0px");//添加border属性
			$obj_2.css("color","#666");
		}
	});*/
	$obj_3.bind({//绑定事件	
		mouseover:function(){
			$obj_tab03.attr("border","2px");//添加border属性
			$obj_tab03.css("border-color","#F09");
			$obj_3.css("border-bottom","soild");
			$obj_3.css("border-width","5px");
			$obj_3.css("color","#F09");
			$obj_3.css("border-bottom-color","#F09");
		},
		mouseout:function(){
			$obj_3.css("border-bottom-color","#FFF");
			$obj_tab03.attr("border","0px");//添加border属性
			$obj_3.css("color","#666");
		}
	});
	
	$obj_4.bind({//绑定事件	
		mouseover:function(){
			$obj_tab04.attr("border","2px");//添加border属性
			$obj_tab04.css("border-color","#F09");
			$obj_4.css("border-bottom","soild");
			$obj_4.css("border-width","5px");
			$obj_4.css("color","#F09");
			$obj_4.css("border-bottom-color","#F09");
		},
		mouseout:function(){
			$obj_4.css("border-bottom-color","#FFF");
			$obj_tab04.attr("border","0px");//添加border属性
			$obj_4.css("color","#666");
		}
	});
	$obj_5.bind({//绑定事件	
		mouseover:function(){
			$obj_tab05.attr("border","2px");//添加border属性
			$obj_tab05.css("border-color","#F09");
			$obj_5.css("border-bottom","soild");
			$obj_5.css("border-width","5px");
			$obj_5.css("color","#F09");
			$obj_5.css("border-bottom-color","#F09");
		},
		mouseout:function(){
			$obj_5.css("border-bottom-color","#FFF");
			$obj_tab05.attr("border","0px");//添加border属性
			$obj_5.css("color","#666");
		}
	});
	$obj_6.bind({//绑定事件	
		mouseover:function(){
			$obj_tab06.attr("border","2px");//添加border属性
			$obj_tab06.css("border-color","#F09");
			$obj_6.css("border-bottom","soild");
			$obj_6.css("border-width","5px");
			$obj_6.css("color","#F09");
			$obj_6.css("border-bottom-color","#F09");
		},
		mouseout:function(){
			$obj_6.css("border-bottom-color","#FFF");
			$obj_tab06.attr("border","0px");//添加border属性
			$obj_6.css("color","#666");
		}
	});
});
</script>

<script type="text/javascript" src="#"></script><!-- http://cdn.staticfile.org/jquery/1.8.2/jquery.min.js -->
<script type="text/javascript" src="js/jquery.slicebox.js"></script>
<script type="text/javascript">
	<!--显示立体翻转效果的函数-->
	$(function() {
		var Page = (function() {
			var $navArrows = $( '#nav-arrows' ).hide(),
				$shadow = $( '#shadow' ).hide(),
				slicebox = $( '#sb-slider' ).slicebox( {
					onReady : function() {

						$navArrows.show();
						$shadow.show();

					},
					orientation : 'r',
					cuboidsRandom : true,
					disperseFactor : 30
				} ),

				init = function() {
					vinitEvents();
				},
				vinitEvents = function() {

					// add navigation events
					$navArrows.children( ':first' ).on( 'click', function() {
						slicebox.next();
						return false;

					} );

					$navArrows.children( ':last' ).on( 'click', function() {
						
						slicebox.previous();
						return false;

					} );

				};
				return { init : init };

		})();

		Page.init();
	});
	
</script>
<script>
		<!--为郎才女貌栏添加div层效果-->
		<!--图片加上透明div层的方法-->
		var obj_1_img01=document.getElementById("img01");
		var $obj_3_img01=$(obj_1_img01);
		var obj_2_img01=document.getElementById("ms01");
		var $obj_4_img01=$(obj_2_img01);
		var obj_5_img01=document.getElementById("msH01");
		$obj_3_img01.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img01.style.opacity="0.3";
				obj_5_img01.style.opacity="1";
				obj_5_img01.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img01.style.opacity="0";
				obj_5_img01.style.opacity="0";
				obj_2_img01.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img01.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img01.style.opacity="0.3";
				obj_5_img01.style.opacity="1";
				obj_5_img01.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img01.style.opacity="0";
				obj_5_img01.style.opacity="0";
				obj_2_img01.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		
		
		
		<!--图片加上透明div层的方法-->
		var obj_1_img02=document.getElementById("img02");
		var $obj_3_img02=$(obj_1_img02);
		var obj_2_img02=document.getElementById("ms02");
		var $obj_4_img02=$(obj_2_img02);
		var obj_5_img02=document.getElementById("msH02");
		$obj_3_img02.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img02.style.opacity="0.3";
				obj_5_img02.style.opacity="1";
				obj_5_img02.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img02.style.opacity="0";
				obj_5_img02.style.opacity="0";
				obj_2_img02.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img02.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img02.style.opacity="0.3";
				obj_5_img02.style.opacity="1";
				obj_5_img02.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img02.style.opacity="0";
				obj_5_img02.style.opacity="0";
				obj_2_img02.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		
		<!--图片加上透明div层的方法-->
		var obj_1_img03=document.getElementById("img03");
		var $obj_3_img03=$(obj_1_img03);
		var obj_2_img03=document.getElementById("ms03");
		var $obj_4_img03=$(obj_2_img03);
		var obj_5_img03=document.getElementById("msH03");
		$obj_3_img03.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img03.style.opacity="0.3";
				obj_5_img03.style.opacity="1";
				obj_5_img03.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img03.style.opacity="0";
				obj_5_img03.style.opacity="0";
				obj_2_img03.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img03.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img03.style.opacity="0.3";
				obj_5_img03.style.opacity="1";
				obj_5_img03.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img03.style.opacity="0";
				obj_5_img03.style.opacity="0";
				obj_2_img03.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		<!--图片加上透明div层的方法-->
		var obj_1_img04=document.getElementById("img04");
		var $obj_3_img04=$(obj_1_img04);
		var obj_2_img04=document.getElementById("ms04");
		var $obj_4_img04=$(obj_2_img04);
		var obj_5_img04=document.getElementById("msH04");
		$obj_3_img04.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img04.style.opacity="0.3";
				obj_5_img04.style.opacity="1";
				obj_5_img04.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img04.style.opacity="0";
				obj_5_img04.style.opacity="0";
				obj_2_img04.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img04.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img04.style.opacity="0.3";
				obj_5_img04.style.opacity="1";
				obj_5_img04.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img04.style.opacity="0";
				obj_5_img04.style.opacity="0";
				obj_2_img04.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		
		<!--图片加上透明div层的方法-->
		var obj_1_img05=document.getElementById("img05");
		var $obj_3_img05=$(obj_1_img05);
		var obj_2_img05=document.getElementById("ms05");
		var $obj_4_img05=$(obj_2_img05);
		var obj_5_img05=document.getElementById("msH05");
		$obj_3_img05.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img05.style.opacity="0.3";
				obj_5_img05.style.opacity="1";
				obj_5_img05.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img05.style.opacity="0";
				obj_5_img05.style.opacity="0";
				obj_2_img05.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img05.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img05.style.opacity="0.3";
				obj_5_img05.style.opacity="1";
				obj_5_img05.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img05.style.opacity="0";
				obj_5_img05.style.opacity="0";
				obj_2_img05.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		
		<!--图片加上透明div层的方法-->
		var obj_1_img06=document.getElementById("img06");
		var $obj_3_img06=$(obj_1_img06);
		var obj_2_img06=document.getElementById("ms06");
		var $obj_4_img06=$(obj_2_img06);
		var obj_5_img06=document.getElementById("msH06");
		$obj_3_img04.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img06.style.opacity="0.3";
				obj_5_img06.style.opacity="1";
				obj_5_img06.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img06.style.opacity="0";
				obj_5_img06.style.opacity="0";
				obj_2_img06.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img06.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img06.style.opacity="0.3";
				obj_5_img06.style.opacity="1";
				obj_5_img06.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img06.style.opacity="0";
				obj_5_img06.style.opacity="0";
				obj_2_img06.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		<!--图片加上透明div层的方法-->
		var obj_1_img07=document.getElementById("img07");
		var $obj_3_img07=$(obj_1_img07);
		var obj_2_img07=document.getElementById("ms07");
		var $obj_4_img07=$(obj_2_img07);
		var obj_5_img07=document.getElementById("msH07");
		$obj_3_img04.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img07.style.opacity="0.3";
				obj_5_img07.style.opacity="1";
				obj_5_img07.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img07.style.opacity="0";
				obj_5_img07.style.opacity="0";
				obj_2_img07.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img07.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img07.style.opacity="0.3";
				obj_5_img07.style.opacity="1";
				obj_5_img07.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img07.style.opacity="0";
				obj_5_img07.style.opacity="0";
				obj_2_img07.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		
		
		<!--图片加上透明div层的方法-->
		var obj_1_img08=document.getElementById("img08");
		var $obj_3_img08=$(obj_1_img08);
		var obj_2_img08=document.getElementById("ms08");
		var $obj_4_img08=$(obj_2_img08);
		var obj_5_img08=document.getElementById("msH08");
		$obj_3_img08.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img08.style.opacity="0.3";
				obj_5_img08.style.opacity="1";
				obj_5_img08.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img08.style.opacity="0";
				obj_5_img08.style.opacity="0";
				obj_2_img08.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img08.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img08.style.opacity="0.3";
				obj_5_img08.style.opacity="1";
				obj_5_img08.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img08.style.opacity="0";
				obj_5_img08.style.opacity="0";
				obj_2_img08.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		<!--为求婚栏添加div层效果-->
		<!--图片加上透明div层的方法-->
		var obj_1_img09=document.getElementById("img09");
		var $obj_3_img09=$(obj_1_img09);
		var obj_2_img09=document.getElementById("ms09");
		var $obj_4_img09=$(obj_2_img09);
		var obj_5_img09=document.getElementById("msH09");
		$obj_3_img09.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img09.style.opacity="0.3";
				obj_5_img09.style.opacity="1";
				obj_5_img09.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img09.style.opacity="0";
				obj_5_img09.style.opacity="0";
				obj_2_img09.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img09.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img09.style.opacity="0.3";
				obj_5_img09.style.opacity="1";
				obj_5_img09.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img09.style.opacity="0";
				obj_5_img09.style.opacity="0";
				obj_2_img09.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		<!--图片加上透明div层的方法-->
		var obj_1_img10=document.getElementById("img10");
		var $obj_3_img10=$(obj_1_img10);
		var obj_2_img10=document.getElementById("ms10");
		var $obj_4_img10=$(obj_2_img10);
		var obj_5_img10=document.getElementById("msH10");
		$obj_3_img10.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img10.style.opacity="0.3";
				obj_5_img10.style.opacity="1";
				obj_5_img10.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img10.style.opacity="0";
				obj_5_img10.style.opacity="0";
				obj_2_img10.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img10.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img10.style.opacity="0.3";
				obj_5_img10.style.opacity="1";
				obj_5_img10.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img10.style.opacity="0";
				obj_5_img10.style.opacity="0";
				obj_2_img10.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		
		<!--图片加上透明div层的方法-->
		var obj_1_img11=document.getElementById("img11");
		var $obj_3_img11=$(obj_1_img11);
		var obj_2_img11=document.getElementById("ms11");
		var $obj_4_img11=$(obj_2_img11);
		var obj_5_img11=document.getElementById("msH11");
		$obj_3_img11.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img11.style.opacity="0.3";
				obj_5_img11.style.opacity="1";
				obj_5_img11.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img11.style.opacity="0";
				obj_5_img11.style.opacity="0";
				obj_2_img11.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img11.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img11.style.opacity="0.3";
				obj_5_img11.style.opacity="1";
				obj_5_img11.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img11.style.opacity="0";
				obj_5_img11.style.opacity="0";
				obj_2_img11.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		
		<!--图片加上透明div层的方法-->
		var obj_1_img12=document.getElementById("img12");
		var $obj_3_img12=$(obj_1_img12);
		var obj_2_img12=document.getElementById("ms12");
		var $obj_4_img12=$(obj_2_img12);
		var obj_5_img12=document.getElementById("msH12");
		$obj_3_img12.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img12.style.opacity="0.3";
				obj_5_img12.style.opacity="1";
				obj_5_img12.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img12.style.opacity="0";
				obj_5_img12.style.opacity="0";
				obj_2_img12.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img12.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img12.style.opacity="0.3";
				obj_5_img12.style.opacity="1";
				obj_5_img12.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img12.style.opacity="0";
				obj_5_img12.style.opacity="0";
				obj_2_img12.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		<!--图片加上透明div层的方法-->
		var obj_1_img13=document.getElementById("img13");
		var $obj_3_img13=$(obj_1_img13);
		var obj_2_img13=document.getElementById("ms13");
		var $obj_4_img13=$(obj_2_img13);
		var obj_5_img13=document.getElementById("msH13");
		$obj_3_img13.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img13.style.opacity="0.3";
				obj_5_img13.style.opacity="1";
				obj_5_img13.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img13.style.opacity="0";
				obj_5_img13.style.opacity="0";
				obj_2_img13.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img13.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img13.style.opacity="0.3";
				obj_5_img13.style.opacity="1";
				obj_5_img13.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img13.style.opacity="0";
				obj_5_img13.style.opacity="0";
				obj_2_img13.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		
		<!--图片加上透明div层的方法-->
		var obj_1_img14=document.getElementById("img14");
		var $obj_3_img14=$(obj_1_img14);
		var obj_2_img14=document.getElementById("ms14");
		var $obj_4_img14=$(obj_2_img14);
		var obj_5_img14=document.getElementById("msH14");
		$obj_3_img14.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img14.style.opacity="0.3";
				obj_5_img14.style.opacity="1";
				obj_5_img14.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img14.style.opacity="0";
				obj_5_img14.style.opacity="0";
				obj_2_img14.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img14.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img14.style.opacity="0.3";
				obj_5_img14.style.opacity="1";
				obj_5_img14.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img14.style.opacity="0";
				obj_5_img14.style.opacity="0";
				obj_2_img14.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		
		<!--图片加上透明div层的方法-->
		var obj_1_img15=document.getElementById("img15");
		var $obj_3_img15=$(obj_1_img15);
		var obj_2_img15=document.getElementById("ms15");
		var $obj_4_img15=$(obj_2_img15);
		var obj_5_img15=document.getElementById("msH15");
		$obj_3_img15.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img15.style.opacity="0.3";
				obj_5_img15.style.opacity="1";
				obj_5_img15.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img15.style.opacity="0";
				obj_5_img15.style.opacity="0";
				obj_2_img15.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img15.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img15.style.opacity="0.3";
				obj_5_img15.style.opacity="1";
				obj_5_img15.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img15.style.opacity="0";
				obj_5_img15.style.opacity="0";
				obj_2_img15.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		<!--图片加上透明div层的方法-->
		var obj_1_img16=document.getElementById("img16");
		var $obj_3_img16=$(obj_1_img16);
		var obj_2_img16=document.getElementById("ms16");
		var $obj_4_img16=$(obj_2_img16);
		var obj_5_img16=document.getElementById("msH16");
		$obj_3_img16.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img16.style.opacity="0.3";
				obj_5_img16.style.opacity="1";
				obj_5_img16.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img16.style.opacity="0";
				obj_5_img16.style.opacity="0";
				obj_2_img16.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img16.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img16.style.opacity="0.3";
				obj_5_img16.style.opacity="1";
				obj_5_img16.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img16.style.opacity="0";
				obj_5_img16.style.opacity="0";
				obj_2_img16.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		<!--为古风栏添加div层效果-->
		<!--图片加上透明div层的方法-->
		var obj_1_img17=document.getElementById("img17");
		var $obj_3_img17=$(obj_1_img17);
		var obj_2_img17=document.getElementById("ms17");
		var $obj_4_img17=$(obj_2_img17);
		var obj_5_img17=document.getElementById("msH17");
		$obj_3_img17.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img17.style.opacity="0.3";
				obj_5_img17.style.opacity="1";
				obj_5_img17.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img17.style.opacity="0";
				obj_5_img17.style.opacity="0";
				obj_2_img17.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img17.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img17.style.opacity="0.3";
				obj_5_img17.style.opacity="1";
				obj_5_img17.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img17.style.opacity="0";
				obj_5_img17.style.opacity="0";
				obj_2_img17.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		<!--图片加上透明div层的方法-->
		var obj_1_img18=document.getElementById("img18");
		var $obj_3_img18=$(obj_1_img18);
		var obj_2_img18=document.getElementById("ms18");
		var $obj_4_img18=$(obj_2_img18);
		var obj_5_img18=document.getElementById("msH18");
		$obj_3_img18.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img18.style.opacity="0.3";
				obj_5_img18.style.opacity="1";
				obj_5_img18.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img18.style.opacity="0";
				obj_5_img18.style.opacity="0";
				obj_2_img18.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img18.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img18.style.opacity="0.3";
				obj_5_img18.style.opacity="1";
				obj_5_img18.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img18.style.opacity="0";
				obj_5_img18.style.opacity="0";
				obj_2_img18.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		<!--图片加上透明div层的方法-->
		var obj_1_img19=document.getElementById("img19");
		var $obj_3_img19=$(obj_1_img19);
		var obj_2_img19=document.getElementById("ms19");
		var $obj_4_img19=$(obj_2_img19);
		var obj_5_img19=document.getElementById("msH19");
		$obj_3_img19.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img19.style.opacity="0.3";
				obj_5_img19.style.opacity="1";
				obj_5_img19.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img19.style.opacity="0";
				obj_5_img19.style.opacity="0";
				obj_2_img19.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img19.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img19.style.opacity="0.3";
				obj_5_img19.style.opacity="1";
				obj_5_img19.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img19.style.opacity="0";
				obj_5_img19.style.opacity="0";
				obj_2_img19.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		<!--图片加上透明div层的方法-->
		var obj_1_img20=document.getElementById("img20");
		var $obj_3_img20=$(obj_1_img20);
		var obj_2_img20=document.getElementById("ms20");
		var $obj_4_img20=$(obj_2_img20);
		var obj_5_img20=document.getElementById("msH20");
		$obj_3_img20.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img20.style.opacity="0.3";
				obj_5_img20.style.opacity="1";
				obj_5_img20.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img20.style.opacity="0";
				obj_5_img20.style.opacity="0";
				obj_2_img20.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img20.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img20.style.opacity="0.3";
				obj_5_img20.style.opacity="1";
				obj_5_img20.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img20.style.opacity="0";
				obj_5_img20.style.opacity="0";
				obj_2_img20.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		<!--图片加上透明div层的方法-->
		var obj_1_img21=document.getElementById("img21");
		var $obj_3_img21=$(obj_1_img21);
		var obj_2_img21=document.getElementById("ms21");
		var $obj_4_img21=$(obj_2_img21);
		var obj_5_img21=document.getElementById("msH21");
		$obj_3_img21.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img21.style.opacity="0.3";
				obj_5_img21.style.opacity="1";
				obj_5_img21.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img21.style.opacity="0";
				obj_5_img21.style.opacity="0";
				obj_2_img21.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img21.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img21.style.opacity="0.3";
				obj_5_img21.style.opacity="1";
				obj_5_img21.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img21.style.opacity="0";
				obj_5_img21.style.opacity="0";
				obj_2_img21.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		<!--图片加上透明div层的方法-->
		var obj_1_img22=document.getElementById("img22");
		var $obj_3_img22=$(obj_1_img22);
		var obj_2_img22=document.getElementById("ms22");
		var $obj_4_img22=$(obj_2_img22);
		var obj_5_img22=document.getElementById("msH22");
		$obj_3_img22.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img22.style.opacity="0.3";
				obj_5_img22.style.opacity="1";
				obj_5_img22.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img22.style.opacity="0";
				obj_5_img22.style.opacity="0";
				obj_2_img22.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img22.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img22.style.opacity="0.3";
				obj_5_img22.style.opacity="1";
				obj_5_img22.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img22.style.opacity="0";
				obj_5_img22.style.opacity="0";
				obj_2_img22.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		<!--图片加上透明div层的方法-->
		var obj_1_img23=document.getElementById("img23");
		var $obj_3_img23=$(obj_1_img23);
		var obj_2_img23=document.getElementById("ms23");
		var $obj_4_img23=$(obj_2_img23);
		var obj_5_img23=document.getElementById("msH23");
		$obj_3_img23.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img23.style.opacity="0.3";
				obj_5_img23.style.opacity="1";
				obj_5_img23.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img23.style.opacity="0";
				obj_5_img23.style.opacity="0";
				obj_2_img23.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img23.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img23.style.opacity="0.3";
				obj_5_img23.style.opacity="1";
				obj_5_img23.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img23.style.opacity="0";
				obj_5_img23.style.opacity="0";
				obj_2_img23.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		<!--图片加上透明div层的方法-->
		var obj_1_img24=document.getElementById("img24");
		var $obj_3_img24=$(obj_1_img24);
		var obj_2_img24=document.getElementById("ms24");
		var $obj_4_img24=$(obj_2_img24);
		var obj_5_img24=document.getElementById("msH24");
		$obj_3_img24.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img24.style.opacity="0.3";
				obj_5_img24.style.opacity="1";
				obj_5_img24.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img24.style.opacity="0";
				obj_5_img24.style.opacity="0";
				obj_2_img24.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img24.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img24.style.opacity="0.3";
				obj_5_img24.style.opacity="1";
				obj_5_img24.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img24.style.opacity="0";
				obj_5_img24.style.opacity="0";
				obj_2_img24.style.color="transparent";//设置字体颜色为透明
			}
		});
		
			
			
		<!--为感人栏添加div层效果-->
		<!--图片加上透明div层的方法-->
		var obj_1_img25=document.getElementById("img25");
		var $obj_3_img25=$(obj_1_img25);
		var obj_2_img25=document.getElementById("ms25");
		var $obj_4_img25=$(obj_2_img25);
		var obj_5_img25=document.getElementById("msH25");
		$obj_3_img25.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img25.style.opacity="0.3";
				obj_5_img25.style.opacity="1";
				obj_5_img25.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img25.style.opacity="0";
				obj_5_img25.style.opacity="0";
				obj_2_img25.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img25.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img25.style.opacity="0.3";
				obj_5_img25.style.opacity="1";
				obj_5_img25.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img25.style.opacity="0";
				obj_5_img25.style.opacity="0";
				obj_2_img25.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		var obj_1_img26=document.getElementById("img26");
		var $obj_3_img26=$(obj_1_img26);
		var obj_2_img26=document.getElementById("ms26");
		var $obj_4_img26=$(obj_2_img26);
		var obj_5_img26=document.getElementById("msH26");
		$obj_3_img26.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img26.style.opacity="0.3";
				obj_5_img26.style.opacity="1";
				obj_5_img26.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img26.style.opacity="0";
				obj_5_img26.style.opacity="0";
				obj_2_img26.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img26.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img26.style.opacity="0.3";
				obj_5_img26.style.opacity="1";
				obj_5_img26.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img26.style.opacity="0";
				obj_5_img26.style.opacity="0";
				obj_2_img26.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		var obj_1_img27=document.getElementById("img27");
		var $obj_3_img27=$(obj_1_img27);
		var obj_2_img27=document.getElementById("ms27");
		var $obj_4_img27=$(obj_2_img27);
		var obj_5_img27=document.getElementById("msH27");
		$obj_3_img27.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img27.style.opacity="0.3";
				obj_5_img27.style.opacity="1";
				obj_5_img27.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img27.style.opacity="0";
				obj_5_img27.style.opacity="0";
				obj_2_img27.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img27.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img27.style.opacity="0.3";
				obj_5_img27.style.opacity="1";
				obj_5_img27.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img27.style.opacity="0";
				obj_5_img27.style.opacity="0";
				obj_2_img27.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		var obj_1_img28=document.getElementById("img28");
		var $obj_3_img28=$(obj_1_img28);
		var obj_2_img28=document.getElementById("ms28");
		var $obj_4_img28=$(obj_2_img28);
		var obj_5_img28=document.getElementById("msH28");
		$obj_3_img28.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img28.style.opacity="0.3";
				obj_5_img28.style.opacity="1";
				obj_5_img28.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img28.style.opacity="0";
				obj_5_img28.style.opacity="0";
				obj_2_img28.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img28.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img28.style.opacity="0.3";
				obj_5_img28.style.opacity="1";
				obj_5_img28.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img28.style.opacity="0";
				obj_5_img28.style.opacity="0";
				obj_2_img28.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		var obj_1_img29=document.getElementById("img29");
		var $obj_3_img29=$(obj_1_img29);
		var obj_2_img29=document.getElementById("ms29");
		var $obj_4_img29=$(obj_2_img29);
		var obj_5_img29=document.getElementById("msH29");
		$obj_3_img29.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img29.style.opacity="0.3";
				obj_5_img29.style.opacity="1";
				obj_5_img29.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img29.style.opacity="0";
				obj_5_img29.style.opacity="0";
				obj_2_img29.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img29.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img29.style.opacity="0.3";
				obj_5_img29.style.opacity="1";
				obj_5_img29.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img29.style.opacity="0";
				obj_5_img29.style.opacity="0";
				obj_2_img29.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		var obj_1_img30=document.getElementById("img30");
		var $obj_3_img30=$(obj_1_img30);
		var obj_2_img30=document.getElementById("ms30");
		var $obj_4_img30=$(obj_2_img30);
		var obj_5_img30=document.getElementById("msH30");
		$obj_3_img30.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img30.style.opacity="0.3";
				obj_5_img30.style.opacity="1";
				obj_5_img30.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img30.style.opacity="0";
				obj_5_img30.style.opacity="0";
				obj_2_img30.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img30.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img30.style.opacity="0.3";
				obj_5_img30.style.opacity="1";
				obj_5_img30.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img30.style.opacity="0";
				obj_5_img30.style.opacity="0";
				obj_2_img30.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		var obj_1_img31=document.getElementById("img31");
		var $obj_3_img31=$(obj_1_img31);
		var obj_2_img31=document.getElementById("ms31");
		var $obj_4_img31=$(obj_2_img31);
		var obj_5_img31=document.getElementById("msH31");
		$obj_3_img31.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img31.style.opacity="0.3";
				obj_5_img31.style.opacity="1";
				obj_5_img31.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img31.style.opacity="0";
				obj_5_img31.style.opacity="0";
				obj_2_img31.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img31.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img31.style.opacity="0.3";
				obj_5_img31.style.opacity="1";
				obj_5_img31.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img31.style.opacity="0";
				obj_5_img31.style.opacity="0";
				obj_2_img31.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		var obj_1_img32=document.getElementById("img32");
		var $obj_3_img32=$(obj_1_img32);
		var obj_2_img32=document.getElementById("ms32");
		var $obj_4_img32=$(obj_2_img32);
		var obj_5_img32=document.getElementById("msH32");
		$obj_3_img32.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img32.style.opacity="0.3";
				obj_5_img32.style.opacity="1";
				obj_5_img32.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img32.style.opacity="0";
				obj_5_img32.style.opacity="0";
				obj_2_img32.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img32.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img32.style.opacity="0.3";
				obj_5_img32.style.opacity="1";
				obj_5_img32.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img32.style.opacity="0";
				obj_5_img32.style.opacity="0";
				obj_2_img32.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		<!--为天下无双栏添加div层效果-->
		<!--图片加上透明div层的方法-->
		var obj_1_img33=document.getElementById("img33");
		var $obj_3_img33=$(obj_1_img33);
		var obj_2_img33=document.getElementById("ms33");
		var $obj_4_img33=$(obj_2_img33);
		var obj_5_img33=document.getElementById("msH33");
		$obj_3_img33.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img33.style.opacity="0.3";
				obj_5_img33.style.opacity="1";
				obj_5_img33.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img33.style.opacity="0";
				obj_5_img33.style.opacity="0";
				obj_2_img33.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img33.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img33.style.opacity="0.3";
				obj_5_img33.style.opacity="1";
				obj_5_img33.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img33.style.opacity="0";
				obj_5_img33.style.opacity="0";
				obj_2_img33.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		var obj_1_img34=document.getElementById("img34");
		var $obj_3_img34=$(obj_1_img34);
		var obj_2_img34=document.getElementById("ms34");
		var $obj_4_img34=$(obj_2_img34);
		var obj_5_img34=document.getElementById("msH34");
		$obj_3_img34.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img34.style.opacity="0.3";
				obj_5_img34.style.opacity="1";
				obj_5_img34.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img34.style.opacity="0";
				obj_5_img34.style.opacity="0";
				obj_2_img34.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img34.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img34.style.opacity="0.3";
				obj_5_img34.style.opacity="1";
				obj_5_img34.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img34.style.opacity="0";
				obj_5_img34.style.opacity="0";
				obj_2_img34.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		var obj_1_img35=document.getElementById("img35");
		var $obj_3_img35=$(obj_1_img35);
		var obj_2_img35=document.getElementById("ms35");
		var $obj_4_img35=$(obj_2_img35);
		var obj_5_img35=document.getElementById("msH35");
		$obj_3_img35.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img35.style.opacity="0.3";
				obj_5_img35.style.opacity="1";
				obj_5_img35.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img35.style.opacity="0";
				obj_5_img35.style.opacity="0";
				obj_2_img35.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img35.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img35.style.opacity="0.3";
				obj_5_img35.style.opacity="1";
				obj_5_img35.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img35.style.opacity="0";
				obj_5_img35.style.opacity="0";
				obj_2_img35.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		var obj_1_img36=document.getElementById("img36");
		var $obj_3_img36=$(obj_1_img36);
		var obj_2_img36=document.getElementById("ms36");
		var $obj_4_img36=$(obj_2_img36);
		var obj_5_img36=document.getElementById("msH36");
		$obj_3_img36.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img36.style.opacity="0.3";
				obj_5_img36.style.opacity="1";
				obj_5_img36.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img36.style.opacity="0";
				obj_5_img36.style.opacity="0";
				obj_2_img36.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img36.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img36.style.opacity="0.3";
				obj_5_img36.style.opacity="1";
				obj_5_img36.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img36.style.opacity="0";
				obj_5_img36.style.opacity="0";
				obj_2_img36.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		var obj_1_img37=document.getElementById("img37");
		var $obj_3_img37=$(obj_1_img37);
		var obj_2_img37=document.getElementById("ms37");
		var $obj_4_img37=$(obj_2_img37);
		var obj_5_img37=document.getElementById("msH37");
		$obj_3_img37.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img37.style.opacity="0.3";
				obj_5_img37.style.opacity="1";
				obj_5_img37.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img37.style.opacity="0";
				obj_5_img37.style.opacity="0";
				obj_2_img37.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img37.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img37.style.opacity="0.3";
				obj_5_img37.style.opacity="1";
				obj_5_img37.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img37.style.opacity="0";
				obj_5_img37.style.opacity="0";
				obj_2_img37.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		var obj_1_img38=document.getElementById("img38");
		var $obj_3_img38=$(obj_1_img38);
		var obj_2_img38=document.getElementById("ms38");
		var $obj_4_img38=$(obj_2_img38);
		var obj_5_img38=document.getElementById("msH38");
		$obj_3_img38.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img38.style.opacity="0.3";
				obj_5_img38.style.opacity="1";
				obj_5_img38.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img38.style.opacity="0";
				obj_5_img38.style.opacity="0";
				obj_2_img38.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img38.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img38.style.opacity="0.3";
				obj_5_img38.style.opacity="1";
				obj_5_img38.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img38.style.opacity="0";
				obj_5_img38.style.opacity="0";
				obj_2_img38.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		var obj_1_img39=document.getElementById("img39");
		var $obj_3_img39=$(obj_1_img39);
		var obj_2_img39=document.getElementById("ms39");
		var $obj_4_img39=$(obj_2_img39);
		var obj_5_img39=document.getElementById("msH39");
		$obj_3_img39.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img39.style.opacity="0.3";
				obj_5_img39.style.opacity="1";
				obj_5_img39.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img39.style.opacity="0";
				obj_5_img39.style.opacity="0";
				obj_2_img39.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img39.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img39.style.opacity="0.3";
				obj_5_img39.style.opacity="1";
				obj_5_img39.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img39.style.opacity="0";
				obj_5_img39.style.opacity="0";
				obj_2_img39.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		var obj_1_img40=document.getElementById("img40");
		var $obj_3_img40=$(obj_1_img40);
		var obj_2_img40=document.getElementById("ms40");
		var $obj_4_img40=$(obj_2_img40);
		var obj_5_img40=document.getElementById("msH40");
		$obj_3_img40.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img40.style.opacity="0.3";
				obj_5_img40.style.opacity="1";
				obj_5_img40.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img40.style.opacity="0";
				obj_5_img40.style.opacity="0";
				obj_2_img40.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img40.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img40.style.opacity="0.3";
				obj_5_img40.style.opacity="1";
				obj_5_img40.style.color="#FFF";//设置字体颜色为red
			},
			mouseout:function(){
				obj_2_img40.style.opacity="0";
				obj_5_img40.style.opacity="0";
				obj_2_img40.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		//控制“爱情故事1浮动div层”
		var obj_1_img41=document.getElementById("storyImg01");
		var $obj_3_img41=$(obj_1_img41);
		var obj_2_img41=document.getElementById("stroyMs01");
		var $obj_4_img41=$(obj_2_img41);
		var obj_5_img41=document.getElementById("storyMsH01");
		$obj_3_img41.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img41.style.opacity="0.3";
				obj_5_img41.style.opacity="1";
				obj_5_img41.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img41.style.opacity="0";
				obj_5_img41.style.opacity="0";
				obj_2_img41.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img41.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img41.style.opacity="0.3";
				obj_5_img41.style.opacity="1";
				obj_5_img41.style.color="#FFF";//设置字体颜色为pink
			},
			mouseout:function(){
				obj_2_img41.style.opacity="0";
				obj_5_img41.style.opacity="0";
				obj_2_img41.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		//控制“爱情故事2浮动div层”
		var obj_1_img42=document.getElementById("storyImg02");
		var $obj_3_img42=$(obj_1_img42);
		var obj_2_img42=document.getElementById("stroyMs02");
		var $obj_4_img42=$(obj_2_img42);
		var obj_5_img42=document.getElementById("storyMsH02");
		$obj_3_img42.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img42.style.opacity="0.3";
				obj_5_img42.style.opacity="1";
				obj_5_img42.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img42.style.opacity="0";
				obj_5_img42.style.opacity="0";
				obj_2_img42.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img42.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img42.style.opacity="0.3";
				obj_5_img42.style.opacity="1";
				obj_5_img42.style.color="#FFF";//设置字体颜色为pink
			},
			mouseout:function(){
				obj_2_img42.style.opacity="0";
				obj_5_img42.style.opacity="0";
				obj_2_img42.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		//控制“爱情故事3浮动div层”
		var obj_1_img43=document.getElementById("storyImg03");
		var $obj_3_img43=$(obj_1_img43);
		var obj_2_img43=document.getElementById("stroyMs03");
		var $obj_4_img43=$(obj_2_img43);
		var obj_5_img43=document.getElementById("storyMsH03");
		$obj_3_img43.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img43.style.opacity="0.3";
				obj_5_img43.style.opacity="1";
				obj_5_img43.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img43.style.opacity="0";
				obj_5_img43.style.opacity="0";
				obj_2_img43.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img43.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img43.style.opacity="0.3";
				obj_5_img43.style.opacity="1";
				obj_5_img43.style.color="#FFF";//设置字体颜色为pink
			},
			mouseout:function(){
				obj_2_img43.style.opacity="0";
				obj_5_img43.style.opacity="0";
				obj_2_img43.style.color="transparent";//设置字体颜色为透明
			}
		});
		
		
		//控制“爱情故事1浮动div层”
		var obj_1_img44=document.getElementById("storyImg04");
		var $obj_3_img44=$(obj_1_img44);
		var obj_2_img44=document.getElementById("stroyMs04");
		var $obj_4_img44=$(obj_2_img44);
		var obj_5_img44=document.getElementById("storyMsH04");
		$obj_3_img44.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img44.style.opacity="0.3";
				obj_5_img44.style.opacity="1";
				obj_5_img44.style.color="#FFF";//设置字体颜色为白色
			},
			mouseout:function(){
				obj_2_img44.style.opacity="0";
				obj_5_img44.style.opacity="0";
				obj_2_img44.style.color="transparent";//设置字体颜色为透明
			}
		});
		$obj_4_img44.bind({//绑定事件	
			mouseover:function(){
				<!--alert("ok");-->
				obj_2_img44.style.opacity="0.3";
				obj_5_img44.style.opacity="1";
				obj_5_img44.style.color="#FFF";//设置字体颜色为pink
			},
			mouseout:function(){
				obj_2_img44.style.opacity="0";
				obj_5_img44.style.opacity="0";
				obj_2_img44.style.color="transparent";//设置字体颜色为透明
			}
		});
		/*
		构建随机不重复函数
		从原始数组取出一个数， 然后让原始数组的这个位置赋值为null 。这样下一次取数的时候判断如果为null
		就不取，直到不为null为止。
		
		var randomNum = function(count){
		var original=new Array;//原始数组
		var originalObj=new Array;//目标数组 
		//给原始数组original赋值 
		for (var i=0;i<count;i++){ 
			original[i]=i+1; 
		} 
		for (var num,i=0;i<count;i++){ 
			do{ 
				num=Math.floor(Math.random()*count); 
			}while(original[num]==null); 
			//document.write(original[num]+" ");
			if(original[num]!=null){
				originalObj[i]=original[num];
			} 
			original[num]=null; 
		} 
			return originalObj;
		}
		写成java表达式是：
		package com.love.utils;

		public class RandomArrayClass {
			//测试
			public static void main(String[] args) {
				for(int t:getRandomArr(27)){
					System.out.print(t+" ");
				}
			}
			
			public static int[] getRandomArr(int count){
				int[] original=new int[count];//原始数组
				int[] originalObj=new int[count];//目标数组 
				for (int i = 0; i < original.length; i++) {
					original[i]=i+1;
				}
				for (int num,i=0;i<count;i++){ 
					do{ 
						num=(int)Math.floor(Math.random()*count); 
					}while(original[num]==-1); 
					if(original[num]!=-1){
						originalObj[i]=original[num];
					} 
					original[num]=-1; 
				} 
					return originalObj;
			}		
		}
		*/
		//alert("images/郎才女貌\/"+randomNum(27)[0]+".jpg");
				

</script>	

<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript" src="js/base.js"></script>
</html>

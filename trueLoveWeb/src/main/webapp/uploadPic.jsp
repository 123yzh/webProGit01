<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Language" content="zh-cn">

<link type="text/css" href="./css/uploadPic/base.css"
	rel="stylesheet" media="all">
<link type="text/css" href="./css/uploadPic/reg.css"
	rel="stylesheet" media="all">


<!--[if lte IE 6]>
<script type="text/javascript" src="#"></script>
<![endif]-->
<!-- released time 2016-11-21 11:23:25 -->

<title>images/uploadPic</title>
<style>
.pre-1 {
	width: 135px;
	height: 135px;
	overflow: hidden;
}

.pre-2 {
	width: 110px;
	height: 135px;
	overflow: hidden;
	margin-top: 13px;
}

.pre-2-sub {
	width: 110px;
	margin-left: -11px
}
</style>
<style type="text/css" media="screen">
#altContent {
	visibility: hidden
}
</style>
</head>
<body>
	<div id="jy_head_box"
		style="height: 0px; font-size: 0px; line-height: 0;">
		<div id="jy_cpfl_1"
			style="position: fixed; left: 50%; margin-left: 510px; top: 80px; width: 102px; height: 147px; z-index: 9000;">
			<div id="jy_cpfl_1_box">
				<a id="jy_mobile_authentication" class="jy_mobile_authentication"
					onMouseDown="javascript:jy_head_function.click_pv(&#39;|jy_mobile_authentication|&#39;);"
					href="#" target="_blank"></a>
			</div>
		</div>
		<div id="jy_cpfl_2"
			style="position: fixed; right: 50%; margin-right: 510px; top: 84px; width: 154px; height: 131px; z-index: 9000;">
			<div id="jy_cpfl_2_btn"
				style="position: absolute; cursor: pointer; right: 8px; top: 3px; width: 14px; height: 14px; background: url(&quot;#) 4px 3px no-repeat;"></div>
			<div id="jy_cpfl_2_box">
				<a href="#"
					onMouseDown="javascript:jy_head_function.click_pv(&#39;|jr_jrfc_click|&#39;);"
					target="_blank" class="finance_redBox_img"></a>
			</div>
		</div>
		<div id="jy_cpfl_3"
			style="position: fixed; right: 0px; top: 260px; width: 23px; height: 83px; z-index: 9000;">
			<div id="jy_cpfl_3_box">
				<div id="jy_translate_box" class="jy_translate_box">
					<a class="jy_translate jy_translate_ft" href="javascript:void(0);"
						onClick="javascript:jy_translate.gogo(&#39;ft&#39;, 0);jy_head_function.click_pv(&#39;|translate_bottom_ft|&#39;);"></a>
					<a class="jy_translate jy_translate_jt" href="javascript:void(0);"
						onClick="javascript:jy_translate.gogo(&#39;jt&#39;, 0);jy_head_function.click_pv(&#39;|translate_bottom_jt|&#39;);"></a>
				</div>
			</div>
		</div>
	</div>
	<div class="bg1" style="height: 921px;">
		<div class="jy-w jy-r">
			<!--aside-->
			<div class="jy-a jy-r-aside">
				<div class="jy-a jy-logo">
					<a href="##"><img src="./images/uploadPic/logo.png"
						width="179" height="53" alt="logo" class="ie6"></a>
				</div>
				<div class="jy-up-aside">
					<ul>
						<li class="hea">示范头像</li>
						<li class="cen"><img src="./images/uploadPic/test2.jpg"
							width="95" height="116"> <a class="rig ie6" href="#"
							onClick="return false;"></a></li>
						<li class="cen">五官清晰</li>
						<li class="hea">不合格头像</li>
						<li class="cen"><img src="./images/uploadPic/test3.jpg"
							width="60" height="73"> <a class="err ie6" href="#"
							onClick="return false;"></a></li>
						<li class="cen mb10">人太小</li>
						<li class="cen"><img src="./images/uploadPic/test4.jpg"
							width="60" height="73"> <a class="err ie6" href="#"
							onClick="return false;"></a></li>
						<li class="cen mb10">侧面照</li>
						<li class="cen"><img src="./images/uploadPic/test5.jpg"
							width="60" height="73"> <a class="err ie6" href="#"
							onClick="return false;"></a></li>
						<li class="cen mb10">光线太暗</li>
					</ul>
				</div>
				<div class="jy-up-ot ie6"></div>
			</div>
			<!--/aside-->
			<!--main-->
			<input type="hidden" name="myuid" id="myuid" value="158806191">
			<div class="jy-r jy-r-main">
				<div class="jy-up-1">
					<p>恭喜，你已注册成为会员。</p>
				</div>
				<div class="jy-up-shenme">90%的用户会选择有照片的用户进行联系</div>
				<ul class="fn-clear jy-up-2">
					<li class="cur btn2li"><a class="btn2" href="#">本地上传</a></li>
					<li><a class="btn4" href="####" id="two-code">手机传图</a></li>
					<li class="btn3li"><a class="btn3"
						onMouseDown="javascript:send_jy_pv2(&#39;reg_v2_img_carme|158806191&#39;)"
						href="#">摄像头拍照</a></li>
				</ul>
				<div style="display: none;">
					<input type="hidden" id="x" name="x"> <input type="hidden"
						id="y" name="y"> <input type="hidden" id="w" name="w">
					<input type="hidden" id="h" name="h"> <input type="hidden"
						id="picpath" name="picpath"> <input type="hidden" id="d"
						name="d"> <input type="hidden" id="t" name="t"> <input
						type="hidden" id="sid" name="sid"
						value="bdb0688f613ceb2e042de13c2ab8089b"> <input
						type="hidden" id="para1" name="para1"
						value="Kfl8tgtbXT6hu8p688EWef4-NV1NMbDKNDT1ZLGzG3LN-e-GwOEcVc0DqwAsuXCKemVo3RCqXgsECNFuuI6hGilE8mvGXFKmJBA3SezEyw71y00.">
					<input type="hidden" id="para2" name="para2"
						value="39c7db2a354dda16d61c9009fd0a2057"> <input
						type="hidden" id="pid" name="pid" value="">
				</div>
				<!--crop-->
				<!--本地上传-->
				<!--本地上传-->
				<div class="jy-up-3 fn-clear" id="jcropdiv" style="display: none;">
					<div class="jy-up-3l">
						<div class="jc-demo-box" data="0" style="background-color: none;">
							<div id="target" class="jcrop_w">
								<img src="#">
							</div>
						</div>
						<div class="jy-up-ch">
							<a id="idLeft" href="#" class="bch bch1"></a> <a id="idSmall"
								href="#" class="bch bch2"></a> <a id="idBig" href="#"
								class="bch bch3"></a> <a id="idRight" href="#" class="bch bch4"></a>
							<ul class="fn-clear">
								<li><a class="btn6" href="#">重新上传</a></li>
								<li class="la"><a class="btn5 savepic" href="#####">保存</a></li>
							</ul>
							<a class="bch bch5 skip"
								onMouseDown="javascript:send_jy_pv2(&#39;reg_v2_img_jump|158806191&#39;)"
								href="#">跳过这步</a> <a class="bch6 hov3" href="#">放大图片</a> <a
								class="bch6 hov2" href="#">缩小图片</a> <a class="bch6 hov1"
								href="#">向右旋转</a> <a class="bch6 hov4" href="#">向左旋转</a>
							<div class="save-su">保存成功</div>
						</div>
					</div>
					<div class="jy-up-3r" id="preview-pane">
						<div class="preview-container">
							<div class="pre-1 pre-ii">
								<img src="./images/uploadPic/test6.png"
									class="jcrop-preview jcrop_preview_s" alt="">
							</div>
							<div class="pre-2 pre-ii">
								<div class="pre-2-sub">
									<img src="./images/uploadPic/test6.png"
										class="jcrop-preview jcrop_preview_s" alt="">
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="jy-up-3 fn-clear" id="uploaddiv">
					<div class="jy-up-3l">
						<div class="jc-demo-box">
							<ul>
								<li>上传清晰头像，人气提升<span>76.15%</span></li>
								<li class="jy-t3">支持jpg、jpeg、gif、png格式，不超过5M</li>
							</ul>
							<div class="btn7 hover">
								<object id="SWFUpload_0" type="application/x-shockwave-flash"
									data="./images/uploadPic/swfupload(2).swf" width="132"
									height="39" class="swfupload">
									<param name="wmode" value="transparent">
									<param name="movie" value="#">
									<param name="quality" value="high">
									<param name="menu" value="false">
									<param name="allowScriptAccess" value="always">
									<param name="flashvars"
										value="movieName=SWFUpload_0&amp;uploadURL=http%3A%2F%2Fupload.jiayuan.com%2Fregister%2Fsignup%2Fuploadpicv5.php%3Fv%3D2&amp;useQueryString=false&amp;requeueOnError=false&amp;httpSuccess=&amp;assumeSuccessTimeout=0&amp;params=PHPSESSID%3Dbdb0688f613ceb2e042de13c2ab8089b%26amp%3Bsid%3Dbdb0688f613ceb2e042de13c2ab8089b%26amp%3Bpara1%3DKfl8tgtbXT6hu8p688EWef4-NV1NMbDKNDT1ZLGzG3LN-e-GwOEcVc0DqwAsuXCKemVo3RCqXgsECNFuuI6hGilE8mvGXFKmJBA3SezEyw71y00.%26amp%3Bpara2%3D39c7db2a354dda16d61c9009fd0a2057%26amp%3Bpid%3D&amp;filePostName=uploadphoto&amp;fileTypes=*.gif%3B%20*.jpg%3B%20*.jpeg%3B%20*.png&amp;fileTypesDescription=All%20Files&amp;fileSizeLimit=5%20MB&amp;fileUploadLimit=0&amp;fileQueueLimit=1&amp;debugEnabled=false&amp;buttonImageURL=http%3A%2F%2Fimages1.jyimg.com%2Fw4%2Fregister%2Fi%2Fnewreg%2Fupload.png&amp;buttonWidth=132&amp;buttonHeight=39&amp;buttonText=&amp;buttonTextTopPadding=0&amp;buttonTextLeftPadding=0&amp;buttonTextStyle=color%3A%20%23000000%3B%20font-size%3A%2016pt%3B&amp;buttonAction=-110&amp;buttonDisabled=false&amp;buttonCursor=-2">
								</object>
							</div>
							<ul style="padding-top: 60px;">
								<li class="jy-t3" id="loading" style="display: none;"><div
										style="margin: 0px auto; width: 48px; height: 48px; background: url(&amp;#39;##39;) no-repeat; text-align: center; line-height: 48px; font-size: 14px;"
										id="fsUploadProgress"></div></li>
							</ul>
						</div>
						<div class="jy-up-ch">
							<a href="#" class="bch bch1 dn"></a> <a href="#"
								class="bch bch2 dn"></a> <a href="#" class="bch bch3 dn"></a> <a
								href="#" class="bch bch4 dn"></a>
							<ul class="fn-clear">
								<li style="display: none;"><a class="btn6" href="#">重新上传</a></li>
								<li class="la" style="display: none;"><a
									class="btn5 savepic" href="#####">保存</a></li>
							</ul>
							<a class="bch bch5 skip"
								onMouseDown="javascript:send_jy_pv2(&#39;reg_v2_img_jump|158806191&#39;)"
								href="#">跳过这步</a> <a class="bch6 hov3" href="#">放大图片</a> <a
								class="bch6 hov2" href="#">缩小图片</a> <a class="bch6 hov1"
								href="#">向右旋转</a> <a class="bch6 hov4" href="#">向左旋转</a>
						</div>
					</div>
					<div class="jy-up-3r">
						<div class="preview-container">
							<div class="pre-1">
								<img src="./images/uploadPic/test.jpg" width="135"
									class="jcrop-preview" alt="">
							</div>
							<div class="pre-2">
								<img src="./images/uploadPic/test.jpg" width="110"
									class="jcrop-preview" alt="">
							</div>
						</div>
					</div>
				</div>
				<!--/本地上传-->
				<!--摄像头拍照-->
				<div class="jy-up-3 dn" id="cameradiv">
					<div id="sctx_Area" class="sctx_Area" style="height: 470px;">
						<object type="application/x-shockwave-flash" id="headerupload"
							data="./images/uploadPic/headuploadv5.swf" width="100%"
							height="100%">
							<param name="menu" value="false">
							<param name="scale" value="noScale">
							<param name="allowFullscreen" value="true">
							<param name="allowScriptAccess" value="always">
							<param name="wmode" value="transparent">
							<param name="bgcolor" value="#FFFFFF">
							<param name="flashvars"
								value="jsfunc=flashAPI.dispatchEvent&amp;jslang=flashAPI.flashConfig&amp;imgUrl=#">
						</object>
					</div>
				</div>
				<!--/摄像头拍照-->
				<!--/crop-->
				<div class="jy-up-4">
					<ul>
						<li>温馨小贴士</li>
						<li>如果无法上传文件。请尝试<a
							onMouseDown="javascript:send_jy_pv2(&#39;reg_v2_img_putong|158806191&#39;)"
							href="#">普通上传</a>模式
						</li>
						<li>请勿上传明星或他人照片，正面、微侧的清晰照，更能增加第一印象哦！</li>
						<li>新注册会员上传头像，10分钟内将特快审核。如果超时，你可以免费催促一次（价值2元）。</li>
					</ul>
				</div>
				<!--add-->
				<div class="jy-a jy-robe robe1 ie6"></div>
				<div class="jy-a jy-robe robe2 ie6"></div>
				<!--/add-->
			</div>
			<!--/main-->
			<div class="jy-a jy-up-add ie6"></div>
			<!--footer-->
			<div class="jy-fo">中文实名：世纪佳缘 ICP证书：沪B2-20100074 Copyright ©
				2003-2016 版权所有</div>
			<!--/footer-->
			<!--注册第二步-->
		</div>
	</div>
	<!--弹层-->
	<div class="two-code-bg" style="display: none; height: 921px;"></div>
	<div class="two-code" style="display: none">
		<span class="close"></span> <img class="er" id="code_img"
			src="#" alt="二维码">
		<p class="mt20">
			若传图完成页面没有响应，请<a href="####"
				onMouseDown="javascript:send_jy_pv2(&#39;reg_v2_img_qr_shua|158806191&#39;)"
				onClick="getQRcode();">点击这里</a>刷新，重新扫描上方二维码
		</p>
		<p>1、打开手机上的二维码扫描软件【如：微信（扫一扫）、微博（扫一扫）或者条码扫描器】</p>
		<p>2、自动启用相机镜头，对准二维码图片扫描</p>
		<p>3、扫描完成，在打开的页面中点击“选取文件”，通过拍照或者在手机相册中选取照片，点击“上传”按钮</p>
		<p>4、上传过程中，请不要关闭此页面</p>
	</div>
	</div>
	<div class="" style="display: none; position: absolute;">
		<div class="aui_outer">
			<table class="aui_border">
				<tbody>
					<tr>
						<td class="aui_nw"></td>
						<td class="aui_n"></td>
						<td class="aui_ne"></td>
					</tr>
					<tr>
						<td class="aui_w"></td>
						<td class="aui_c"><div class="aui_inner">
								<table class="aui_dialog">
									<tbody>
										<tr>
											<td colspan="2" class="aui_header"><div
													class="aui_titleBar">
													<div class="aui_title" style="cursor: move;"></div>
													<a class="aui_close" href="javascript:/*artDialog*/;">×</a>
												</div></td>
										</tr>
										<tr>
											<td class="aui_icon" style="display: none;"><div
													class="aui_iconBg" style="background: none;"></div></td>
											<td class="aui_main" style="width: auto; height: auto;"><div
													class="aui_content" style="padding: 20px 25px;"></div></td>
										</tr>
										<tr>
											<td colspan="2" class="aui_footer"><div
													class="aui_buttons" style="display: none;"></div></td>
										</tr>
									</tbody>
								</table>
							</div></td>
						<td class="aui_e"></td>
					</tr>
					<tr>
						<td class="aui_sw"></td>
						<td class="aui_s"></td>
						<td class="aui_se" style="cursor: se-resize;"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
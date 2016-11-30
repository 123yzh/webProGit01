<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="keywords" content="交友,交友网,征婚交友,网上交友,征婚,征婚网,征婚交友网,交友中心,婚恋交友" />
    <meta name="description" content="青春不常在，抓紧谈恋爱！缘分可遇也可求，该出手时就出手。世纪佳缘是严肃婚恋的交友平台，提供丰富多彩的交友征婚活动，1.7亿会员，让缘分千万里挑一！" />
    <title>佳缘登录页_世纪佳缘交友网</title>
    <link rel="stylesheet" href="css/login/base.css"/>
    <link rel="stylesheet" href="css/login/login.css"/>
    <style type="text/css">
    .main{background-image:url("images/login/nan_1.jpg");}
    
  </style>
  </head>
  <body>
    <iframe src="javascript:false;" name="login_run" width=0 height=0 style="display:none;"></iframe>
    <div id="wrapper" class="wrapper">
      <div id="header" class="header">
        <div class="w fn-clear">
        <!--  
		<h1 class="logo">
         	<script type="text/javascript">
         	<!--http://www.jiayuan.com
            document.write('<a class="logo" href="#/" onmousedown="javascript:send_jy_pv2(\'log_m_to_jy\');" ><img height="70" src="'+head_logo_config['index_logo']+'" alt="世纪佳缘" border="0" /></a>');
          </script>
          </h1>
          -->
         <span><img  style="width:300px;height:100%;" src="images/logo.png" alt="严肃婚恋网站"/></span>
         <span><img src="images/login/logo1.png" alt="严肃婚恋网站"/></span>
          
        </div>
      </div>
      <div id="main" class="main">
        <div class="w fn-clear">
			<div id="loginForm" class="loginForm tab-wrap">
				<ul class="loginTit tab-list fn-clear">
					<li class="default" id='password_login'>会员登录</li>
					
				</ul>
            <div class="loginInner">
              <div class="loginFalse" id="errorInfo" style="display: none;">
                <p id="errorInfop">
                 
                  
                </p>
              </div>
                <div class="tab-cent" id="login_form">
              <form name="login" id="login" method="post" action="" target="login_run">
                <div class="login_zh fn-clear">
                  <label class="lab">登录帐号</label>
                  <div class="login_inpBox">
                    <label for="login_email" class="login_label">邮箱/ID/手机号</label>
                    <input class="text" name="name" type="text" id="login_email">
                    <span class="btnDel" id="btn_del" href="" onclick="delLoginMsg();" title="删除">删除</span>
                  </div>
                </div>
                <div class="login_mm fn-clear mT10">
                  <label class="lab">密<i class="f_white">密码</i>码</label>
                  <div class="login_inpBox">
                    <label for="login_password" class="login_label">密码</label>
                    <input class="text" type="password" name="password" autocomplete="off"  id="login_password" autocomplete="off">
                  </div>
                </div>
                                <p class="loginSelf mT10">
                  <input type="checkbox" name="remem_pass" checked id="check_save" onclick="" />
                  <label><span>两周内自动登录</span></label>
                </p>
                <div class="btnsBox">
                  <a class="btnLogin" id="login_btn"  href="javascript:void(0);" onclick="send_jy_pv2('log_main_btn_c');mysub();">登&nbsp;录</a>
                  <a class="forgMM" onmousedown="javascript:send_jy_pv2('log_m_forg_pass');" onclick='show_quick_login();' style='cursor:pointer;'>忘记密码</a>
                </div>
               
              </form>
					</div>
					<div class="tab-cent fn-hide">
						<form name="login_new" id="login_new" method="post" action="" target="login_run">
							<div class="login_zh_o fn-clear" style="margin-top:37px;">
								<label class="lab">手机号/邮箱</label>
								<div class="login_inpBox">
									<label for="login_quick" class="login_label">手机号/邮箱</label>
									<input class="text" name="name" autocomplete="off" type="text" id="login_quick" onfocus="clear_text(this);this.style.imeMode='disabled';" onblur="check_text(this);">
									<span class="btnDel" title="删除">删除</span>
								</div>
								<div class="login_codeBox fn-hide">
									<a href="javascript:;" class="login_code_btn" id="get_mobile_code">获取验证码</a>
								</div>
							</div>
							<div class="login_mm_o fn-clear mT10 fn-hide">
								<label class="lab">验证码</label>
								<div class="login_inpBox">
									<label for="login_code" class="login_label">验证码</label>
                                                                        <input id="login_code" name="login_mobile_code" autocomplete="off" type="text" value=""  class="te"/><span class="re" style="display: inline-block;"> </span>
                                                                        
								</div>
							</div>
							<div class="btnsBox">
								<a class="btnLogin" style="display: none;" id="login_btn_new" href="javascript:void(0);" onclick="">登&nbsp;录</a>
								<a class="btnLogin" style="display: none;" id="send_email" href="javascript:void(0);" onclick="">发送邮件</a>
							</div>
                                                    <input type="hidden" name="sid" id="sid" value="00f96f" />
						</form>
					</div>
              <div class="openId">
                <p>
                  <span class="lTit">其他帐号登录</span>
                  <a class="openId_qq" href=""><i class="icon_openId icon_qq"></i>QQ帐号</a>
                  <a class="openId_sina" href=""><i class="icon_openId icon_sina"></i>新浪微博</a>
                  <!--微信登录-->
                  <a class="openId_wx" href=""><i class="icon_openId icon_wx"></i>微信</a>
                  <!--微信登录-->
                </p>
                <p class="mT5">
                  <a class="openId_baidu" href=""></i><span>百度</span></a>
                  <a class="openId_rr" href=""></i><span>人人网</span></a>
                  <a class="openId_kxw" href=""></i><span>开心网</span></a>
                  <a class="openId_zfb" href=""></i><span>支付宝</span></a>
                </p>
              </div>
              <p class="goReg">
                <a href="" onmousedown="" >还不是会员？立即注册</a>
              </p>
            </div>
          </div>
        </div>
      </div>
      <div id="loginfooter" class="loginfooter">
        <div class="loginfooter_1">
          <a href=""  target="_blank" >我已成功征友，我要晒幸福</a>
        </div>
     
		<div id="loginfooter_2" class="loginfooter_2">
			<p id="">
			<a target="_blank" href="">联系客服</a>
			<a target="_blank" href="">关于我们</a>
			<a target="_blank" href="">联系我们</a>
			<a target="_blank" href="">无线业务</a>
			<a target="_blank" href="">注册条款</a>
			<a target="_blank" href="">友情链接</a>
			<a target="_blank" href="">招聘信息</a>
			<a target="_blank" href="">交友信息</a>
			<a target="_blank" href="">隐私保护</a>
			<a target="_blank" href="">帮助中心</a>
			<a target="_blank" href="">安全中心</a>
			</p>
			<p id="" style="">
			<a class="">中文实名：世纪佳缘</a>
			<a class="">ICP证书：沪B2-20100074</a>
			<a class="">增值电信业务经营许可证：沪B2-20070313</a>
			<a target="_blank" href="">ISO9001质量体系认证</a>
			</p>
			<p> © 2003-2016 版权所有    京公网安备110105002124号    不良和违法信息举报专线：0316-5266032 </p>
      </div>
    </div>
  </body>

<script type="text/javascript" src="js/login/jquery-1.7.2.min.js"></script>


</html>
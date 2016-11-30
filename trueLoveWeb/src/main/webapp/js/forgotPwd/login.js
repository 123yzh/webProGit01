$(function() {
	var obj = document.getElementById("login_email");
	var v = getCookie("save_jy_login_name");
	var upt = getCookie("upt");
	document.getElementById("login_password").value = "";
	if (v != null && v != "") {
		if (obj.value == "" || /\u6ce8\u518c/.test(obj.value)) {
			obj.value = v;
		}
		//document.getElementById("login_password").focus();
	}
	/*
	else {
	// obj.focus();
	if (obj.value == "") {
	//obj.focus();
	} else {
	document.getElementById("login_password").focus();
	}
	}*/
	window.setTimeout(function() {
		if (v != null && upt != null && upt != "deleted") {
			document.forms['login'].action = document.forms['login'].action + "&upt=" + upt;
			document.getElementById("login_password").value = upt;
			document.forms['login'].submit();
		}
	}, 1000);

	//输入框焦点
	$('.login_inpBox').each(function() {
		var _this = $(this);
		var _label = _this.find('label.login_label');
		var _inp = _this.find('input:first');
		var _del = _this.find('.btnDel');
		//用户操作
		var u = {
			focusFn : function() {
				_this.addClass('login_inpBoxFocus');
				_label.addClass('login_labelFocus');
				var _timter;
				setInterval(function() {
					if (_inp.val() != '') {
						clearInterval(_timter);
						_label.hide();
						_inp.css('background','#fff');
						_del.show();
					}
				}, 20);
			},
			blurFn : function() {
				_this.removeClass('login_inpBoxFocus');
				_this.find('label').removeClass('login_labelFocus');
				if (_inp.val() == '') {
					_label.show();
					_inp.css('background','transparent');
				} else {
					_del.show().click(u.delFn);
				}
			},
			keydownFn : function() {
				_label.hide();
				_inp.css('background','#fff');
			},
			keyupFn : function() {
				if (_inp.val() == '') {
					_label.show();
					_inp.css('background','transparent');
					_del.hide();
				} else {
					_del.show().click(u.delFn);
				}
			},
			delFn : function() {
				_inp.val('').focus();
				_label.show();
				_inp.css('background','transparent');
				_del.hide();
			}
		}
		_label.show();
		//getCookie-帐号
		if (v != null && v != "") {
			if (_inp.attr('id') == 'login_email') {
				_label.hide();
				_del.show();
				_del.click(u.delFn);
			}
			//getCookie-密码
			if (v != null && upt != null && upt != "deleted") {
				if (_inp.attr('id') == 'login_password') {
					_label.hide();
				}
			} else {
				if (_inp.attr('id') == 'login_password') {
					_inp.focus();
					u.focusFn();
				}
			}
		} else {
			if (_inp.attr('id') == 'login_email') {
				_inp.focus();
				u.focusFn();
			}
		}
		_inp.focus(u.focusFn).blur(u.blurFn).keydown(u.keydownFn).keyup(u.keyupFn);
	});
	// tab切换
	$('.tab-list li').click(function(){
		if(!$(this).hasClass('default')){
			var tabWrap = $(this).parents('.tab-wrap'),
				tabList = tabWrap.find('.tab-list li'),
				tabCent = tabWrap.find('.tab-cent'),
				index = $(this).index();
			tabList.removeClass('cur').eq(index).addClass('cur');
			tabCent.addClass('fn-hide').eq(index).removeClass('fn-hide').find('input').eq(0).focus();
			$('#login_code').val('');
		}
	})
	// 输入框
	var ie = !-[1,];
	if( ie ){
		$('#login_quick').get(0).onpropertychange = function(){
			var txt = $(this).val(),
				txtLen = txt.length;
			txtIn($(this),200,txt,txtLen);
		}
	}else{
		$('#login_quick').get(0).oninput = function(){
			var txt = $(this).val(),
				txtLen = txt.length;
			txtIn($(this),200,txt,txtLen);
		}
	};
	$("#login_quick").blur(function(){
		var txt = $(this).val(),
			txtLen = txt.length;
		txtIn($(this),200,txt,txtLen);
	});
	// 删除按钮
	$('.btnDel').click(function(){
		$(this).siblings('input').val('');
		if($('#login_code').is(':visible')){
			dh.delWord();
		}
	})
	// 验证码
	$('.login_code_btn').live('click',function(){
		$('#login_code').focus();
		var $this = $(this),
			codeBtn = $('.login_code_btn');
		if($this.hasClass("login_code_btned")){
			return;
		}else{
			time = 60;
			$this.text('重新发送(' + time + ')').addClass('login_code_btned');
			var timer = setInterval(function(){
				time--;
				codeBtn.text('重新发送(' + time + ')');
				if(time <= 0){
					codeBtn.text('获取验证码').removeClass('login_code_btned');
					clearInterval(timer);
				}
			},1000)
		}
	})
	$("#get_mobile_code").bind("click", function () {
                if($(this).hasClass("login_code_btned")){
                    return false;
                }
		var mobile = $("#login_quick").val();
		if (mobile==""||!is_mobile(mobile)) {
			JY_Alert("提示", '请填写有效的手机号');
			return false;
		}
		var paras = [];
		var p = {};
		p["mobile"] = mobile;
		paras = ["<xjxquery><q>"+$.param(p)+"</q></xjxquery>",'mobile'];
		$.ajaxSetup({"beforeSend":function (xhr, s) {
			xhr.setRequestHeader("sid", $("#sid").val());
		}});
		$.post("/libs/xajax/reguser.server.php?processSendOrUpdateMessage", {xajax: 'processSendOrUpdateMessage', xajaxargs: paras, xajaxr: new Date().getTime()}, function (data) {
			var type = $(data).find("cmd").eq(0).text();
                        var s2 = $(data).find("cmd").eq(1).text();
			if (type=="show null") {
				var d = $("<div>"+s2+"</div>").find("a").remove().end().html();
				if (/分钟/.test(d)) {
					d = "1\u5206\u949f\u672a\u6536\u5230\u77ed\u4fe1\u9a8c\u8bc1\u7801\uff0c\u8bf7\u91cd\u8bd5";
				}
				JY_Alert("提示", d);
			} else {
				JY_Alert("提示", '发送成功！请查收手机短信。');
				$("#login_code").focus();
			}
		});
	});
})

// 输入框方法
function txtIn(obj,s,txt,txtLen){
	clearTimeout(time);
	var time = setTimeout(function(){
		if(txtLen == 11 && txt && /^1[3|4|5|7|8]\d{9}$/.test(txt)){//手机
			dh.inputWord();
		}else if(txt && /^.+?@.+?\..+?$/.test(txt)){//邮箱
			dh.delWord();
			$('#send_email').show();
		}else if($('#login_code').is(':visible')){
			dh.delWord();
		}else{
			$('#send_email').hide();
		}
	},s)
}
var dh = {
	init : function(){
		loginBox = $('#login_new'),										//	快速登录主体
		zhBox = loginBox.children('.login_zh_o'),						//	————————手机或邮箱外框
		mmBox = loginBox.children('.login_mm_o'),						//	————————验证码外框
		inpBox = zhBox.children('.login_inpBox'),						//	————————手机或邮箱输入框外框
		codeBox = zhBox.children('.login_codeBox'),						//	————————验证码按钮外框
		emailBtn = loginBox.children().children('#send_email'),			//	————————发送邮件按钮
		loginBtn = loginBox.children().children('#login_btn_new');		//	————————登录按钮
	},
	inputWord : function(){
		dh.init();
		emailBtn.hide();
		zhBox.stop(true).animate({marginTop:'0px'},200,function(){
			inpBox.stop(true).animate({width:'141px'},200,function(){
				codeBox.stop(true).fadeIn(200);
				mmBox.stop(true).fadeIn(200);
				loginBtn.stop(true).fadeIn(200);
			});
		});
	},
	delWord : function(){
		dh.init();
		codeBox.hide();
		mmBox.hide();
		loginBtn.hide();
		inpBox.stop(true).animate({width:'220px'},200,function(){
			zhBox.stop(true).animate({marginTop:'37px'},200);
		})
	}
}


function send_email(){
	$.ajaxSetup({"beforeSend":function (xhr, s) {
		xhr.setRequestHeader("sid", $("#sid").val());
	}});
	var email = $('#login_quick').val();
	$.post('/send_email_login.php',{email:email},function(data){
		if(data == 200){
			var r_url = gotoEmail(email);
			JY_Alert("提示", '邮件发送成功，请及时登录邮箱查看');
			if(r_url!=''){
				$('#JY_alert_btn').html('<a href="http://'+ r_url +'" target="_blank"><img src="http://images.jiayuan.com/w4/login/v2/i/alert_email.png"/></a>');
			}
		}else if(data == 300){
			var r_url = gotoEmail(email);
			if(r_url!=''){
				JY_Alert("提示", '邮件已经发送至您的邮箱,请直接登录邮箱查看');
				if(r_url!=''){
					$('#JY_alert_btn').html('<a href="http://'+ r_url +'" target="_blank"><img src="http://images.jiayuan.com/w4/login/v2/i/alert_email.png"/></a>');
				}
			}
		}else{
			JY_Alert("提示", '邮件发送失败，请重试');
		}
	});
}

//功能：根据用户输入的Email跳转到相应的电子邮箱首页
function gotoEmail($mail) {
	$t = $mail.split('@')[1];
	$t = $t.toLowerCase();
	if ($t=='163.'+'com') {
		return 'mail.'+'163.'+'com';
	} else if ($t=='vip.'+'163.'+'com') {
		return 'vip.'+'163.'+'com';
	} else if ($t=='126.'+'com') {
		return 'mail.'+'126.'+'com';
	} else if ($t=='qq.'+'com'||$t=='vip.'+'qq.'+'com'||$t=='foxmail.'+'com') {
		return 'mail.'+'qq.'+'com';
	} else if ($t=='gmail.'+'com') {
		return 'mail.'+'google.'+'com';
	} else if ($t=='sohu.'+'com') {
		return 'mail.'+'sohu.'+'com';
	} else if ($t=='tom.'+'com') {
		return 'mail.'+'tom.'+'com';
	} else if ($t=='vip.'+'sina.'+'com') {
		return 'vip.'+'sina.'+'com';
	} else if ($t=='sina.'+'com.'+'cn'||$t=='sina.'+'com') {
		return 'mail.'+'sina.'+'com.'+'cn';
	} else if ($t=='tom.'+'com') {
		return 'mail.'+'tom.'+'com';
	} else if ($t=='yahoo.'+'com.'+'cn'||$t=='yahoo.'+'cn') {
		return 'mail.'+'cn.'+'yahoo.'+'com';
	} else if ($t=='tom.'+'com') {
		return 'mail.'+'tom.'+'com';
	} else if ($t=='yeah.'+'net') {
		return 'www.'+'yeah.'+'net';
	} else if ($t=='21cn.'+'com') {
		return 'mail.'+'21cn.'+'com';
	} else if ($t=='hotmail.'+'com') {
		return 'www.'+'hotmail.'+'com';
	} else if ($t=='sogou.'+'com') {
		return 'mail.'+'sogou.'+'com';
	} else if ($t=='188.'+'com') {
		return 'www.'+'188.'+'com';
	} else if ($t=='139.'+'com') {
		return 'mail.'+'10086.'+'cn';
	} else if ($t=='189.'+'cn') {
		return 'webmail15.'+'189.'+'cn/webmail';
	} else if ($t=='wo.'+'com.'+'cn') {
		return 'mail.'+'wo.'+'com.'+'cn/smsmail';
	} else if ($t=='139.'+'com') {
		return 'mail.'+'10086.'+'cn';
	} else {
		return '';
	}
}

function onloadPage() {

}

function show_quick_login(){
	$("#password_login").removeClass('default');
	$("#quick_login_btn").show();
	$("#quick_login_btn").click();
}

function is_mobile(val){
	if(/^0?(13[0-9]|15[0-9]|18[0-9]|14[0-9]|17[0-9])[0-9]{8}$/g.test(val) || /^(13[0-9]|15[0-9]|18[0-9]|14[0-9]|17[0-9])(\*{0,})(\d{4})$/g.test(val)){
		return true;
	}
	return false;
}

// 去空格
String.prototype.trim = function() {
	return this.replace(/(^\s*)|(\s*$)/g, "");
};

function show_msg(msg) {
	var errorNode = document.getElementById("errorInfo");
	errorNode.style.display = "block";
	var errorNodep = document.getElementById("errorInfop");
	errorNodep.innerHTML = msg;
}

function mysub() {
	send_jy_pv2('log_main_btnc_c');
	var email_v = document.getElementById('login_email').value;
	if (email_v == '' || email_v.match(/\//g)) {
		show_msg("\u8bf7\u586b\u5199\u60a8\u7684\u767b\u5f55\u5e10\u53f7");
		document.getElementById("login_email").focus();
		return false;
	}
	if (document.getElementById('login_password').value == '') {
		show_msg("\u8bf7\u586b\u5199\u60a8\u7684\u5bc6\u7801");
		document.getElementById('login_password').focus();
		return false;
	}
	document.forms['login'].submit();
}
function mysub_new() {
	send_jy_pv2('log_main_btnc_c');
	var email_v = document.getElementById('login_quick').value;
	if (email_v == '' || email_v.match(/\//g)) {
		show_msg("\u8bf7\u586b\u5199\u60a8\u7684\u767b\u5f55\u5e10\u53f7");
		document.getElementById("login_quick").focus();
		return false;
	}
        if (document.getElementById('login_code').value == '') {
		show_msg("\u8BF7\u8F93\u5165\u9A8C\u8BC1\u7801");
		document.getElementById('login_code').focus();
		return false;
	}
	document.forms['login_new'].submit();
}

function change_code(id) {
	document.getElementById(id).src = '/antispam_v2.php';
}

function showStory() {
	var ids = 1;
	for (var i = 1; ; i++) {
		var id = 'sucstory_register_' + i;
		if (document.getElementById(id)) {
			ids = i;
		} else {
			break;
		}
	}
	var storyid = 'sucstory_register_' + Math.floor(Math.random() * ids + 1);
	var divObj = document.getElementById(storyid);
	if (divObj) {
		if (divObj.style) {
			divObj.style.display = "block";
		}
	}
}

function saveName(e) {
	if (e.checked == true) {
		var r = false;
		r = confirm("\u4e3a\u4e86\u60a8\u7684\u8d26\u53f7\u5b89\u5168\uff0c\u8bf7\u4e0d\u8981\u5728\u7f51\u5427\u7b49\u516c\u7528\u7535\u8111\u4e0a\u4f7f\u7528\u6b64\u529f\u80fd\uff01\n\u624b\u52a8\u9000\u51fa\u540e\uff0c\u6b64\u529f\u80fd\u81ea\u52a8\u5931\u6548\u3002");
		if (r) {
			e.checked = true;
			send_jy_pv2('page_login_confirm_true');
		} else {
			e.checked = false;
			send_jy_pv2('page_login_confirm_false');
		}
		return false;
	}
}

function onKeydownByenter1(e) {
	if (e.keyCode == 13) {
		if (document.getElementById('login_email').value == '') {
			document.getElementById('login_email').focus();
			return false;
		} else {
			document.getElementById('login_password').focus();
		}
	}
}

function clear_text(obj) {
	if (obj.value.match(/\//g)) {
		obj.value = "";
	}
}

function check_text(obj) {
	if (obj.value == "") {
		//show_msg('请输入帐号！');
	} else {// 去空格
		obj.value = obj.value.trim();
	}
}

function onKeydownByenter2(e) {
	if (e.keyCode == 13) {
		if (document.getElementById('login_email').value == '') {
			document.getElementById('login_email').focus();
			return false;
		}
		if (document.getElementById('login_password').value == '') {
			document.getElementById('login_password').focus();
			return false;
		}
		mysub();
	}
}

function getCookie(c_name) {
	if (document.cookie.length > 0) {
		c_start = document.cookie.indexOf(c_name + "=");
		if (c_start != -1) {
			c_start = c_start + c_name.length + 1;
			c_end = document.cookie.indexOf(";", c_start);
			if (c_end == -1)
				c_end = document.cookie.length;
			return decodeURIComponent(document.cookie.substring(c_start, c_end));
		}
	}
	return null;
}

function send_jy_pv2(log) {

}
//end
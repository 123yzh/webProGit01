<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="keywords"
	content="约会吧,约会,我们约会吧,交友,约会吧交友,婚恋交友,征婚交友,网上交友,婚恋,征婚,相亲,单身,白领相亲,白领征婚,白领交友,婚恋网,交友网,北京征婚,上海征婚,广州征婚,深圳征婚,北京交友,上海交友,广东交友,深圳交友">
<meta name="description"
	content="约会吧：世纪真缘约会吧,是世纪真缘线下体验式婚恋交友平台。结合世纪真缘十年红娘经验,依托优质网络资源,多样的互动交友形式,让爱情在世纪真缘约会吧触电。">
<title>首页_真缘约会吧</title>
<link rel="stylesheet" type="text/css" href="css/appoint_page/reset.css">
<link rel="stylesheet" type="text/css"
	href="css/appoint_page/header.css">
<link rel="stylesheet" type="text/css"
	href="css/appoint_page/footer.css">
<link rel="stylesheet" type="text/css" href="css/appoint_page/main.css">


<!-- 开始随机加载数据库中的图片 -->
<link rel='stylesheet' href='css/limitPicLoader/style.css'
	media='screen' />
<script src="js/limitPicLoader/jquery.min.js"></script>
<!--[if lt IE 9]>
<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script src="js/limitPicLoader/blocksit.min.js"></script>
<script>
	$(document).ready(function() {

		//blocksit define
		$(window).load(function() {
			$('#container').BlocksIt({
				numOfCol : 5,
				offsetX : 8,
				offsetY : 8,
				blockElement : '.grid'
			});
		});

		//window resize
		var currentWidth = 1100;
		$(window).resize(function() {
			var winWidth = $(window).width();
			var conWidth;
			if (winWidth < 660) {
				conWidth = 440;
				col = 2
			} else if (winWidth < 880) {
				conWidth = 660;
				col = 3
			} else if (winWidth < 1100) {
				conWidth = 880;
				col = 4;
			} else {
				conWidth = 1100;
				col = 5;
			}

			if (conWidth != currentWidth) {
				currentWidth = conWidth;
				$('#container').width(conWidth);
				$('#container').BlocksIt({
					numOfCol : col,
					offsetX : 8,
					offsetY : 8
				});
			}
		});
	});
</script>

<!-- 随机加载图片结束 -->


<!-- 全屏轮播开始 -->
<script type="text/javascript" src="js/YueHui/lubotu.js"></script>
<link rel='stylesheet' href='css/YueHui/apoint.css' type="text/css"/>
<!-- 全品轮播结束 -->

<script type="text/javascript">
	/*
	 Developed by liujianfeng
	 说明：通用头 & 通用背景弹出（通用弹层）
	 常用函数和方法，用于页面各处调用
	 */
	window.HEAD_USER = {};//会员信息对象
	HEAD_USER.uid = 0;//默认UID为0，未登录
	var jy_head_function = {};//通用头功能函数对象
	jy_head_function.login_bar_enabled = true;//通用底登录浮层默认启动
	jy_head_function.webim_bar_enabled = true;//通用底登录后WEBIM浮层默认启动
	jy_head_function.$ = function(id) {//简化获取对象 
		if (typeof (id) == 'object') {
			return id;
		} else {
			if (id && document.getElementById(id)) {
				return document.getElementById(id);
			} else {
				return null;
			}
		}
	};
	jy_head_function.is_ie = function() {//IE,只有IE支持ActiveXObject
		return ("ActiveXObject" in window);
	};
	jy_head_function.is_ie6 = function() {//IE6,IE6是不支持window.XMLHttpRequest的
		return jy_head_function.is_ie() && !window.XMLHttpRequest;
	};
	jy_head_function.is_ie8 = function() {//IE8,alert(!-[1,])//->IE678返回NaN 所以!NaN为true 标准浏览器返回-1 所以!-1为false
		return jy_head_function.is_ie() && !-[ 1, ] && document.documentMode;
	};
	jy_head_function.is_ie7 = function() {//IE7,只有IE8+才支持document.documentMode
		return jy_head_function.is_ie() && window.XMLHttpRequest
				&& !document.documentMode;
	};
	jy_head_function.list = function(obj) {//查看对象、数组所有的属性和方法
		var properties = "";
		for ( var p in obj) {//开始遍历
			if (obj.hasOwnProperty(p)) {
				if (typeof (obj[p]) == " function ") {
					obj[p]();
				} else {//p为属性名称，obj[p]为对应属性的值
					properties += p + " = " + obj[p] + "\r\n";
				}
			}
		}
		return properties;
	};
	jy_head_function.in_array = function(value, array) {//判断value是否在数组array（数组/对象）中
		var type = arguments[2] ? arguments[2] : 'v';//参数3，当值为“v”时对比value中的值，其他情况对比key中的值
		for ( var key in array) {
			if (array.hasOwnProperty(key)) {
				if (type === 'v') {
					if (array[key] === value) {
						return true;
					}
				} else {
					if (key === value) {
						return true;
					}
				}
			}
		}
		return false;
	};
	jy_head_function.get_query_string = function(name) {//获取URL指定的参数
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
		var r = window.location.search.substr(1).match(reg);
		if (r != null)
			return unescape(r[2]);
		return null;
	}
	jy_head_function.decodeURIComponentEx = function(uriComponent) {//扩展解码方法，做兼容
		if (!uriComponent) {
			return uriComponent;
		}
		var ret;
		try {
			ret = decodeURIComponent(uriComponent);
		} catch (ex) {
			ret = unescape(uriComponent);
		}
		return ret;
	};
	jy_head_function.get_top_domain = function() {//获取顶级域名
		var domain_suffix = [ 'com', 'cn', 'net' ];//域名后缀验证配置，新后缀自行添加
		var host_name = location.hostname.toLowerCase();
		var host_arr = host_name.split('.');
		var host_len = host_arr.length;
		var head_top_domain = '';
		for (var i = host_len - 1; i >= 0; i--) {
			if (this.in_array(host_arr[i], domain_suffix)) {
				head_top_domain = '.' + host_arr[i] + head_top_domain;
			} else {
				head_top_domain = host_arr[i] + head_top_domain;
				break;
			}
		}
		return head_top_domain;
	};
	jy_head_function.html_decode = function(str) {//HTML符号转义
		var s = "";
		if (str.length == 0)
			return "";
		s = str.replace(/&lt;/g, "<");
		s = s.replace(/&gt;/g, ">");
		s = s.replace(/&nbsp;/g, " ");
		s = s.replace(/&#39;/g, "\'");
		s = s.replace(/&#039;/g, "\'");
		s = s.replace(/&quot;/g, "\"");
		return s;
	}
	jy_head_function.get_userinfo = function() {//获取会员信息
		HEAD_USER.ip_loc = this.get_cookie("ip_loc");//当前会员IP对应的地区
		var common_hash = this.get_cookie("COMMON_HASH");//登录状态
		var profile = this.get_cookie("PROFILE");
		if (common_hash && profile && profile.length > 11) {//说明：0,UID;1,昵称;2,性别;3,头像地址;4,头像标记;5,认证;6,手机认证;7,头像图片名称;8,征友状态;9,俱乐部等级;10,金豆数;11,新旧会员标记
			var arr = profile.split(":");
			if (/^\d{7,}$/.test(arr[0])) {//简单验证UID
				HEAD_USER.uid = arr[0];//UID
				HEAD_USER.nickname = this.html_decode(this
						.decodeURIComponentEx(arr[1]));//昵称
				HEAD_USER.sex = arr[2];//性别
				HEAD_USER.avatar_flag = arr[4];//头像状态标记
				HEAD_USER.avatar = "http://" + arr[3] + "/" + arr[7];//头像
				HEAD_USER.certify = arr[5];//认证
				HEAD_USER.mobile = arr[6];//手机绑定状态，1绑定0未绑定
				HEAD_USER.status = arr[8];//征友状态
				HEAD_USER.level = '';
				HEAD_USER.bean = 0;
				HEAD_USER.type = 0;
				if (arr.length >= 11) {//俱乐部为新增项，避免遗漏老登录没有添加而报错
					HEAD_USER.level = arr[9];//俱乐部等级
					HEAD_USER.bean = arr[10];//俱乐部金豆数
					HEAD_USER.type = arr[11];//新旧会员标记类型new_msg
				}
				HEAD_USER.work_location = 0;
				HEAD_USER.work_sublocation = 0;
				work_loc = this.get_cookie("myloc");
				if (work_loc && work_loc.length > 3) {
					work_loc = work_loc.split("|");
					HEAD_USER.work_location = work_loc[0];//省
					HEAD_USER.work_sublocation = work_loc[1];//市
				}
				HEAD_USER.age = this.get_cookie("myage");//年龄
				HEAD_USER.income = this.get_cookie("myincome");//收入
				HEAD_USER.last_login_time = this.get_cookie("last_login_time");//最后登录时间
			}
		}
		return HEAD_USER;
	};
	jy_head_function.get_custom_avatar = function(avatar_url) {//获取小尺寸的头像
		avatar_sex = avatar_url.substr(-5);
		avatar_sex = avatar_sex.substr(0, 1);//获取头像后缀
		var avatar_url_array = Array();
		if (avatar_sex == 'p') { //有头像，获取其他尺寸
			avatar_url_array['avatar_n'] = avatar_url.replace('_p.jpg',
					'_n.jpg');
			avatar_url_array['avatar_s'] = avatar_url.replace('_p.jpg',
					'_s.jpg');
		} else {
			avatar_url_array['avatar_n'] = avatar_url.replace('_' + avatar_sex
					+ '.jpg', '_' + avatar_sex + '_n.jpg');
			avatar_url_array['avatar_s'] = avatar_url.replace('_' + avatar_sex
					+ '.jpg', '_' + avatar_sex + '_s.jpg');
		}
		return avatar_url_array;
	};
	jy_head_function.get_nav_select = function() {//针对通用头获取频道标识，用于通用头的导航选中处理【针对主头】
		host_name = location.hostname.toLowerCase();//当前域名
		var channel_dir_array = Array('/usercp/', '/msg/',
				'/parties/wap_clients/');//频道目录配置数组
		var head_current_channel = host_name.split('.')[0];//获取二级子域名，处理当前头部选中链接样式
		//域名转换标识
		switch (head_current_channel) {//针对广泛的二级域名做针对处理
		case 'www':
		case 'case':
			//首页，个人资料页，小龙女频道，爱情测试，我的真缘（非我的真缘首页），信件，手机频道
			var head_href = window.location.href;//获取当前URL
			var ch_select = 0;//频道选择标记
			for ( var ch_dir in channel_dir_array) {
				if (channel_dir_array.hasOwnProperty(ch_dir)) {//遍历时限制只遍历自身属性
					if (head_href.indexOf(channel_dir_array[ch_dir]) >= 0) {//根据当前的URL获取频道
						ch_select = 1;
						break;
					}
				}
			}
			if (ch_select == 1) {
				switch (channel_dir_array[ch_dir]) {
				case '/usercp/':
				case '/msg/':
					head_current_channel = 'usercp';//信件和我的真缘都选中我的真缘
					break;
				case '/parties/wap_clients/':
					head_current_channel = 'mobile';
					break;
				}
			}
			break;
		case 'msg':
			head_current_channel = 'usercp';
			break;
		}
		return head_current_channel;
	};
	jy_head_function.get_channel = function() {//获取频道栏目标识，用于统计
	//频道级别的目录配置数组，URL包含以下目录的单独统计
		var jy_channel_dir_array = Array('/usercp/?from=', '/usercp/', '/msg/',
				'/profile/', '/club/', '/wenda/', '/meilistar/',
				'/cooperation/', '/helpcenter/', '/guard/',
				'/parties/wap_clients/', '/parties/', '/subject/', '/paper/',
				'/news/');
		//获取二级域，做频道标识
		var host_name = window.location.host.toLowerCase();//获取域名
		var jy_cur_channel = host_name.split('.')[0];
		//针对特殊二级域名做细致拆分
		switch (jy_cur_channel) {
		case 'www':
			//将www二级域名里的首页、信件、我的真缘和个人资料页等单独拿出
			var bot_href = window.location.href.toLowerCase();//获取当前URL
			var re_index = new RegExp(
					"^http\\:\\/\\/" + host_name + "\\/\\?.*", "i");//首页后边带?参数的正则
			//当前如果是首页，就单独设置标记统计
			if (bot_href == 'http://' + host_name + '/'
					|| bot_href == 'http://' + host_name + '/index.html'
					|| re_index.test(bot_href)) {
				jy_cur_channel = 'www_index';//真缘首页，单独处理首页
				break;
			}
			if (bot_href == 'http://' + host_name + '/usercp/') {
				jy_cur_channel = 'usercp';//我的真缘首页，单独处理特殊的我的真缘首页访问方式
				break;
			}
			var bottom_channel_select = 0;//频道选择标记
			for (var ch_dir = 0; ch_dir < jy_channel_dir_array.length; ch_dir++) {
				if (bot_href.indexOf(jy_channel_dir_array[ch_dir]) >= 0) {//用当前的URL循环匹配配置好的频道数组，用于判断当前应该属于那个频道（栏目）
					bottom_channel_select = 1;
					break;
				}
			}
			if (bottom_channel_select == 1) {
				switch (jy_channel_dir_array[ch_dir]) {
				case '/usercp/?from=':
					jy_cur_channel = 'usercp';//我的真缘首页
					break;
				case '/usercp/':
					jy_cur_channel = 'usercp_o';//我的真缘其他页面（除我的真缘首页）
					break;
				case '/msg/':
					jy_cur_channel = 'msg';//信件
					break;
				case '/club/':
					jy_cur_channel = 'club';//俱乐部
					break;
				case '/wenda/':
					jy_cur_channel = 'wenda';//问答
					break;
				case '/meilistar/':
					jy_cur_channel = 'meilistar';//魅力之星
					break;
				case '/cooperation/':
					jy_cur_channel = 'cooperation';//对外合作
					break;
				case '/helpcenter/':
					jy_cur_channel = 'help';//帮助中心
					break;
				case '/guard/':
					jy_cur_channel = 'guard';//安全中心
					break;
				case '/parties/':
				case '/subject/':
					jy_cur_channel = 'case';//专题
					break;
				case '/parties/wap_clients/':
					jy_cur_channel = 'mobile';//手机交友
					break;
				case '/vip/':
					jy_cur_channel = 'vip';//红娘
					break;
				case '/paper/':
					jy_cur_channel = 'paper';//爱情测试
					break;
				case '/news/':
					jy_cur_channel = 'news';//媒体
					break;
				case '/profile/':
					jy_cur_channel = 'profile';//个人资料页
					break;
				}
			} else {
				if (/^(http\:\/\/www\.jiayuan\.com\/\d+\/?)([\?\#])?.*$/
						.test(bot_href)
						|| /^(http\:\/\/www\.miuu\.cn\/\d+\/?)([\?\#])?.*$/
								.test(bot_href)) {
					jy_cur_channel = 'profile';//个人资料页
				}
			}
			break;
		}
		return jy_cur_channel;
	};
	jy_head_function.set_exp_time = function(time) {//设置COOKIE的过期时间，过期时间默认秒
		time = '' + time;
		var f = time.substr(-1, 1);//取最后一位，时间单位：5s秒,5m分钟,5h小时,5d天
		var t = parseInt(time);//取得事件里的数字
		if (f == 'h') {
			t = t * 60 * 60 * 1000;//小时
		} else if (f == 'm') {
			t = t * 60 * 1000;//分
		} else if (f == 'd') {
			t = t * 24 * 60 * 60 * 1000;//天
		} else {
			t = t * 1000;//秒
		}
		return t;
	};
	jy_head_function.get_cookie = function(c_name) {//获取指定COOKIE内容
		if (document.cookie.length > 0) {
			c_start = document.cookie.indexOf(c_name + "=");
			if (c_start != -1) {
				c_start = c_start + c_name.length + 1;
				c_end = document.cookie.indexOf(";", c_start);
				if (c_end == -1) {
					c_end = document.cookie.length;
				}
				return this.decodeURIComponentEx(document.cookie.substring(
						c_start, c_end));
			}
		}
		return null;
	};
	jy_head_function.set_cookie = function(c_name, value) {//写入COOKIE
		var time = arguments[2] ? arguments[2] : '';//参数3，过期时间，为空则不设置过期时间，过期时间含单位s秒（默认）,m分钟,h小时,d天，也可以直接是一个时间对象
		var expire = "";
		if (time) {
			if (typeof time == 'object') {
				expire = "; expires=" + time;
			} else {
				expire = new Date((new Date()).getTime()
						+ this.set_exp_time(time));
				expire = "; expires=" + expire.toGMTString();
			}
		}
		document.cookie = c_name + "=" + escape(value) + expire + "; domain="
				+ this.get_top_domain() + "; path=/";
	};
	jy_head_function.del_cookie = function(c_name) {//删除COOKIE
		var expire = new Date();
		expire.setTime(expire.getTime() - 1);
		var cval = this.get_cookie(c_name);
		if (cval != null) {//如果COOKIE存在则删除COOKIE
			document.cookie = c_name + "=" + cval + ";expires="
					+ expire.toGMTString();
		}
	}
	jy_head_function.format_tpl = function(tpl) {//格式化替换输出导航信息
		for (key in common_nav_array) {
			if (common_nav_array.hasOwnProperty(key)) {
				tpl = tpl.replace(eval("/\{" + key + "_tag\}/g"),
						common_nav_array[key]['tag']);
				tpl = tpl.replace(eval("/\{" + key + "_url\}/g"),
						common_nav_array[key]['url']);
				tpl = tpl.replace(eval("/\{" + key + "_css\}/g"),
						common_nav_array[key]['css']);
				tpl = tpl.replace(eval("/\{" + key + "_sta\}/g"),
						common_nav_array[key]['sta']);
			}
		}
		return tpl;
	};
	jy_head_function.format_date = function(t) {//时间戳转换标准日期格式
		var t = new Date(t * 1000);//JS时间戳是毫秒单位
		var year = t.getFullYear();
		var month = t.getMonth() + 1;
		var date = t.getDate();
		var hour = t.getHours();
		var minute = t.getMinutes();
		var second = t.getSeconds();
		return year + "-" + month + "-" + date + " " + hour + ":" + minute
				+ ":" + second;
	};
	jy_head_function.load_script = function(src, callback) {//动态加载JS文件
		var script = document.createElement("script");
		script.type = 'text/javascript';
		script.src = src;
		if (typeof callback != 'undefined') {
			if (this.is_ie()) {
				script.onreadystatechange = function() {
					if (script.readyState == 'loaded'
							|| script.readyState == 'complete') {
						callback();
					}
				}
			} else {
				script.onload = function() {
					callback();
				}
			}
		}
		var herder = document.head ? document.head : document
				.getElementsByTagName('HEAD')[0];
		herder.appendChild(script);
	}
	jy_head_function.get_args_value = function(str, name) {//获取指定名字的参数值（加载JS文件时读取JS文件后缀的参数值）
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
		var r = str.match(reg);
		if (r != null) {
			return unescape(r[2]);
		}
		return null;
	}
	jy_head_function.get_nav_config = function(id, data) {//获取头部参数配置
		if (document.getElementById(id)) {
			var script_args = document.getElementById(id).getAttribute(data);
			if (script_args != null) {
				var args_array = Array();
				args_array['user'] = this.get_args_value(script_args, 'user'); //获取用户信息状态
				args_array['link'] = this.get_args_value(script_args, 'link'); //获取导航链接状态
				args_array['title'] = this.get_args_value(script_args, 'title'); //获取导航标题内容
				return args_array;
			}
		}
		return '';
	};
	jy_head_function.clone_obj = function(obj) {//克隆对象
		if (typeof obj != 'object')
			return obj;
		var new_obj = new Object();
		for ( var i in obj) {
			new_obj[i] = this.clone_obj(obj[i]);
		}
		return new_obj;
	};
	jy_head_function.hide_select = function() {//隐藏页面全部的select控件
		var selects = document.getElementsByTagName("SELECT");
		for (var i = 0; i < selects.length; i++) {
			selects[i].style.display = "none";
		}
	};
	jy_head_function.show_select = function() {//显示页面全部的select控件
		var selects = document.getElementsByTagName("SELECT");
		for (var i = 0; i < selects.length; i++) {
			selects[i].style.display = "";
		}
	};
	jy_head_function.set_head_nav_link = function(v) {//设置导航链接显示的状态
		if (v == 'show' || v == 1) {
			if (this.$('head_white_nav')) {
				this.$('head_white_nav').style.display = "inline";
				this.$('head_white_logo').style.background = 'url(http://images1."'
						+ jy_img_domain
						+ '"/w4/common/i/head/jycm_zt_vline.png) no-repeat top right';
			} else if (this.$('head_red_simple_nav')) {
				this.$('head_red_simple_nav').style.display = "";
			} else if (this.$('head_blue_simple_nav')) {
				this.$('head_blue_simple_nav').style.display = "";
			}
		} else if (v == 'hide' || v == 0) {
			if (this.$('head_white_nav')) {
				this.$('head_white_nav').style.display = "none";
				this.$('head_white_logo').style.background = 'none';
			} else if (this.$('head_red_simple_nav')) {
				this.$('head_red_simple_nav').style.display = "none";
			} else if (this.$('head_blue_simple_nav')) {
				this.$('head_blue_simple_nav').style.display = "none";
			}
		}
	};
	jy_head_function.set_head_nav_user = function(v) {//设置导航用户信息显示的状态
		if (v == 'show' || v == 1) {
			if (this.$('head_white_user')) {
				this.$('head_white_user').style.display = "inline";
			} else if (this.$('head_red_simple_user')) {
				this.$('head_red_simple_user').style.display = "";
			} else if (this.$('head_blue_simple_user')) {
				this.$('head_blue_simple_user').style.display = "";
			}
		} else if (v == 'hide' || v == 0) {
			if (this.$('head_white_user')) {
				this.$('head_white_user').style.display = "none";
			} else if (this.$('head_red_simple_user')) {
				this.$('head_red_simple_user').style.display = "none";
			} else if (this.$('head_blue_simple_user')) {
				this.$('head_blue_simple_user').style.display = "none";
			}
		}
	};
	jy_head_function.set_head_title = function(title) {//修改导航头部标题部分
		if (this.$('head_blue_simple')) {
			this.$('head_blue_simple').innerHTML = title;
			this.$('head_blue_simple').style.display = "";
		} else if (this.$('head_red_simple')) {
			this.$('head_red_simple').innerHTML = title;
			this.$('head_red_simple').style.display = "";
		}
	};
	jy_head_function.strlen_ch = function(str) {//返回字符串长度，英文1，汉字2
		var real_length = 0, len = str.length, char_code = -1;
		for (var i = 0; i < len; i++) {
			char_code = str.charCodeAt(i);
			if (char_code >= 0 && char_code <= 128)
				real_length += 1;
			else
				real_length += 2;
		}
		return real_length;
	};
	jy_head_function.substr_ch = function(str, cut_len) {//截取指定长度的字符串，英文1，汉字2
		var real_length = 0, s = "", len = str.length, char_code = -1;
		for (var i = 0; i < len; i++) {
			char_code = str.charCodeAt(i);
			if (char_code >= 0 && char_code <= 128) {
				real_length++;
			} else {
				real_length += 2;
			}
			s += str.charAt(i);
			if (real_length >= cut_len) {
				return s;
			}
		}
		return s;
	};
	jy_head_function.click_pv = function(head_nav_flag) {//通用头自定义的小图片统计方法
		var head_navf_url = "#";
		var head_navArr = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "g",
				"k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v",
				"x", "y", "z" ];
		var head_navn = Math.floor(Math.random() * head_navArr.length + 1) - 1;
		var head_navurl = head_navf_url + head_navArr[head_navn] + ".gif?|"
				+ head_nav_flag + "|" + new Date().getTime() + "|";
		var head_navsender = new Image();
		head_navsender.onload = function() {
			head_navclear(this);
		};
		head_navsender.onerror = function() {
			head_navclear(this);
		};
		head_navsender.onabort = function() {
			head_navclear(this);
		};
		head_navsender.src = head_navurl;
		function head_navclear(obj) {
			obj.onerror = null;
			obj.onload = null;
			obj.onabort = null;
			obj = null;
		}
	};
	/**********真缘通用弹层开始**********/
	jy_head_function.lbg_tpl = '';//通用浮层内容
	/*jy_head_function.lbg_jy_tpl = '<div style="padding:1px;margin:0;background:#fff"><h2 style="height:30px;line-height:30px;margin:0;padding:0 10px;text-align:left;color:#FFF;font-size:14px;background:transparent url(#) repeat-x scroll 0% 0%;position:relative" id="lbs_layer_title"></h2><div id="lbs_layer_content" style="margin:0 auto;padding:0;font-size:12px;word-wrap:break-word;word-break:break-all;text-align:left"></div></div>';//带默认样式的通用浮层*/

	jy_head_function.lbg_init = function() {//初始化
		if (this.$(this.lbg_tpl_id)) {
			this.$(this.lbg_tpl_id).innerHTML = this.lbg_template;
		}//将浮层内容写回原处
		if (this.timer) {
			clearTimeout(this.timer);
		}//若有倒计时则清计时器
		this.cur_url = window.location.host + window.location.pathname;//获取URL中域名、端口、文件
		this.lbg_tpl_id = '';//通用浮层模板ID
		this.lbg_template = '';//浮层内容
		this.timer = '';//通用模板计时器
		this.lbg_config = {//通用弹层背景配置参数
			box_bg_border : 0,//容器透明背景边框宽度，单位像素
			box_bg_rgba : '0,0,0,0.5',//容器透明度与背景色设置（IE8以下无效）
			box_style : '',//容器style
			box_class : 'jy_lbg_box',//容器样式
			bg_color : 'black',//遮罩背景色
			bg_opacity : 0.4,//遮罩透明度
			bg_click_close : false,//点击遮罩关闭
			lbg_sec : 0,//倒计时，单位秒
			lbg_sec_id : '',//倒计时ID，显示倒计时当前秒
			lbg_width : '100%',//浮层宽度
			lbg_height : '100%',//浮层高度
			lbg_z_index : 9000,//浮层z-index值
			lbg_style : '',//浮层style
			lbg_class : 'jy_lbg',//浮层样式
			jy_tpl : false,//是否使用真缘默认样式的浮层
			jy_tpl_title : '',//真缘默认样式浮层标题
			jy_tpl_close : false,//真缘默认样式浮层是否显示关闭按钮
			act_show : '',//显示弹层（传递简单的jQuery的常用方法）
			hide_callback : ''//倒计时关闭后调用的回调函数
		};
	};
	jy_head_function.lbg_on_open = function() {//显示过程中
	};
	jy_head_function.lbg_on_close = function() {//关闭过程中
	};
	jy_head_function.lbg_is_show = function() {//浮层显示状态
		if (this.$('jy_lbg')) {
			if (this.$('jy_lbg').style.display == "none") {
				return false;
			} else {
				return true;
			}
		}
		return false;
	};
	jy_head_function.lbg_clear = function() {//关闭时调用的清理方法

	};
	jy_head_function.lbg_hide = function() {//隐藏浮层
		if (this.$('jy_lbg')) {
			this.$('jy_lbg').style.display = "none";//默认方法关闭弹层
			if (this.timer) {
				clearTimeout(this.timer);
			}//清计时器
			if (this.is_ie6()) {
				this.show_select();
			}//针对IE6恢复页面所有select控件显示
			document.body.onresize = function() {
			};//清事件
			this.$('jy_lbg_box').innerHTML = '';//清空浮层容器内容
			this.lbg_init();//清理（初始化）变量
			this.lbg_on_close();
			this.click_pv('|lbg_hide_total|' + this.cur_url);
		}
	};
	jy_head_function.lbg_set_config = function(clone_cfg) {//配置整个浮层对象，
		var is_shade_add = false;
		if (this.$('jy_lbg_shade')) {
			var shade_div = this.$('jy_lbg_shade')//遮罩
		} else {
			var shade_div = document.createElement("div");//创建遮罩
			shade_div.id = 'jy_lbg_shade';
			shade_div.style.cssText = 'width:100%;height:100%;margin:0;padding:0';
			is_shade_add = true;
		}
		var _this = this;
		shade_div.onclick = function() {//点背景关闭浮层
			if (clone_cfg.bg_click_close) {
				_this.lbg_hide();
			}
		};
		shade_div.style.backgroundColor = clone_cfg.bg_color;
		shade_div.style.opacity = clone_cfg.bg_opacity;
		shade_div.style.filter = 'alpha(opacity:'
				+ (clone_cfg.bg_opacity * 100) + ')';
		var is_box_add = false;
		if (this.$('jy_lbg_box')) {
			var box_div = this.$('jy_lbg_box');//容器
		} else {
			var box_div = document.createElement("div");//创建容器
			box_div.id = 'jy_lbg_box';
			is_box_add = true;
		}
		if (clone_cfg.box_style) {
			box_div.style.cssText = 'position:absolute;margin:0;padding:0;'
					+ clone_cfg.box_style;//使用自定义样式
		} else {
			clone_cfg.box_bg_border = parseInt(clone_cfg.box_bg_border);
			if (clone_cfg.box_bg_border > 0) {
				box_div.style.cssText = 'position:absolute;margin:0;padding:'
						+ clone_cfg.box_bg_border + 'px;background-color:rgba('
						+ clone_cfg.box_bg_rgba + ');';
			} else {
				box_div.style.cssText = 'position:absolute;margin:0;padding:0;';
			}
		}
		box_div.className = clone_cfg.box_class;
		box_div.style.zIndex = clone_cfg.lbg_z_index + 100;
		var is_lbg_add = false;
		if (this.$('jy_lbg')) {
			var lbg_div = this.$('jy_lbg');//浮层外框
		} else {
			var lbg_div = document.createElement("div");//浮层外框
			lbg_div.id = 'jy_lbg';
			is_lbg_add = true;
		}
		if (clone_cfg.lbg_style) {
			var css_text = clone_cfg.lbg_style;//使用自定义样式
		} else {
			if (this.is_ie6() && clone_cfg.lbg_height == '100%') {
				lbg_div.style.cssText = '_top:expression(documentElement.scrollTop+documentElement.clientHeight-this.offsetHeight)';
			}//修复IE6浮层位置BUG
			var css_text = 'display:none;position:fixed;bottom:0;width:'
					+ clone_cfg.lbg_width + ';height:' + clone_cfg.lbg_height
					+ ';z-index:' + clone_cfg.lbg_z_index
					+ ';_position:absolute;';
			if (clone_cfg.lbg_width == '100%') {
				css_text += 'left:0;';
			} else {
				margin_left = 0 - (parseInt(clone_cfg.lbg_width) / 2) + 'px';
				css_text += 'left:50%;margin-left:' + margin_left + ';';
			}
			if (clone_cfg.lbg_height == '100%') {
				css_text += '_height:expression(documentElement.clientHeight);';
			}
			css_text += '_top:expression(documentElement.scrollTop+documentElement.clientHeight-this.offsetHeight)';
		}
		lbg_div.style.cssText = css_text;
		lbg_div.className = clone_cfg.lbg_class;
		if (is_shade_add)
			lbg_div.appendChild(shade_div);//添加遮罩
		if (is_box_add)
			lbg_div.appendChild(box_div);//添加容器
		if (is_lbg_add)
			document.body.appendChild(lbg_div);//添加浮层
		if (this.is_ie6()) {
			document.body.style.marginLeft = '0px';
			document.body.style.marginRight = '0px';
		}//针对IE6特殊处理
		return true;
	};
	jy_head_function.lbg_set_coords = function(clone_cfg) {//设置容器坐标
		if (!clone_cfg.box_style) {
			var box_w = this.$('jy_lbg_box').offsetWidth;//内容宽
			var box_h = this.$('jy_lbg_box').offsetHeight;//内容高
			if (this.$('jy_lbg').style.height == '100%') {
				var screen_h = document.documentElement.clientHeight;//可视高
			} else {
				var screen_h = this.$('jy_lbg').offsetHeight;//浮层高
			}
			if (this.$('jy_lbg').style.width == '100%') {
				var screen_w = document.documentElement.clientWidth;//可视宽
			} else {
				var screen_w = this.$('jy_lbg').offsetWidth;//浮层宽
			}
			var box_left = (screen_w / 2) - (box_w / 2);
			var box_top = (screen_h / 2) - (box_h / 2);
			this.$('jy_lbg_box').style.left = box_left + "px";
			this.$('jy_lbg_box').style.top = box_top + "px";
		}
	};
	jy_head_function.lbg_set_countdown = function(copy_cfg) {//设置倒计时，自动隐藏弹层
		if (copy_cfg.lbg_sec < 1) {
			this.lbg_hide();//计时结束关闭浮层
			if (copy_cfg.hide_callback != '') {
				eval("(" + copy_cfg.hide_callback + ")");
			}
		} else {
			if (copy_cfg.lbg_sec_id && this.$(copy_cfg.lbg_sec_id)) {
				this.$(copy_cfg.lbg_sec_id).innerHTML = copy_cfg.lbg_sec;
			}//指定显示的ID，显示倒计时秒数
			copy_cfg.lbg_sec--;//秒减一
			this.timer = setTimeout(function() {
				jy_head_function.lbg_set_countdown(copy_cfg)
			}, 1000);//倒计时调用
		}
	};
	jy_head_function.lbg_show = function() {//显示通用背景
		this.lbg_init();//初始化
		var lbg_src_id = '';//模板ID
		var lbg_cfg = '';//配置参数
		var arg1 = arguments[0] ? arguments[0] : '';//参数1
		var arg2 = arguments[1] ? arguments[1] : '';//参数2
		if (typeof arg1 == 'object') {
			for ( var first in arg1) {
				break;
			}//取第一个属性key
			if (this.in_array(first, this.lbg_config, 'k')) {
				lbg_cfg = arg1;//配置对象
			} else {
				lbg_src_id = arg1;//HTML模板对象
			}
		} else if (arg1 && typeof arg1 == 'string') {
			lbg_src_id = arg1;//模板ID
		}
		if (typeof arg2 == 'object') {
			for ( var first in arg2) {
				break;
			}//取第一个属性key
			if (this.in_array(first, this.lbg_config, 'k')) {
				lbg_cfg = arg2;//配置对象
			} else {
				lbg_src_id = arg2;//HTML模板对象
			}
		} else if (arg2 && typeof arg2 == 'string') {
			lbg_src_id = arg2;//模板ID
		}
		var clone_cfg = this.clone_obj(this.lbg_config);//克隆默认配置
		if (typeof lbg_cfg == 'object') {
			for ( var cfg_v in lbg_cfg) {//根据传入参数，临时修改配置属性
				if (lbg_cfg.hasOwnProperty(cfg_v)
						&& clone_cfg.hasOwnProperty(cfg_v)) {
					clone_cfg[cfg_v] = lbg_cfg[cfg_v];//两个对象都有同一个属性，更新改属性值
				}
			}
		}
		if (this.lbg_set_config(clone_cfg) && this.$('jy_lbg')) {//浮层配置成功
			if (this.lbg_tpl != '') {//传模板的方式获取弹层模板内容
				this.lbg_template = this.lbg_tpl;
			}
			if (this.$(lbg_src_id)) {//通过ID取浮层内容的调用方式
				if (lbg_src_id != this.lbg_tpl_id) {//模板有变化则将原模板放回原处
					if (this.$(this.lbg_tpl_id)) {
						this.$(this.lbg_tpl_id).innerHTML = this.lbg_template;
					}//将原模板放回原处
				}
				this.lbg_template = this.$(lbg_src_id).innerHTML;//取指定浮层（新模板）内容到模板变量
				if (this.lbg_template) {
					this.lbg_tpl_id = lbg_src_id;//将新模板ID赋值到模板ID变量
					this.$(this.lbg_tpl_id).innerHTML = '';//将指定的浮层内容清空，避免代码复制导致冲突
				}
			}
			if (this.lbg_template) {
				this.click_pv('|lbg_show_total|' + this.cur_url);
				if (clone_cfg.jy_tpl) {
					this.$('jy_lbg_box').innerHTML = this.lbg_jy_tpl;//将真缘默认模板内容写到浮层里
					var lbs_layer_title = clone_cfg.jy_tpl_title;//获取配置的默认标题
					if (clone_cfg.jy_tpl_close) {
						/*lbs_layer_title += '<a id="lbs_layer_close" href="javascript:;" style="width:15px;height:15px;position:absolute;top:7px;right:10px;background:url(#);overflow:hidden;display:block;font-size:0" onclick="jy_head_function.lbg_hide();">关闭</a>';//拼接关闭按钮*/
					}
					this.$('lbs_layer_title').innerHTML = lbs_layer_title;//将真缘默认模板标题写入
					this.$('lbs_layer_content').innerHTML = this.lbg_template;//将模板内容写到浮层里
				} else {
					this.$('jy_lbg_box').innerHTML = this.lbg_template;//将模板内容写到浮层里
				}
				var _this = this;
				document.body.onresize = function() {
					_this.lbg_set_coords(clone_cfg);//更新浮层显示位置
				};
				if (clone_cfg.act_show == '') {
					this.$('jy_lbg').style.display = "block";//显示整浮层
				} else {
					try {
						if (jQuery) {
							eval('jQuery("#jy_lbg").' + clone_cfg.act_show);//调用配置的jQuery方法显示弹层
						}
					} catch (e) {
						this.$('jy_lbg').style.display = "block";//显示整浮层
					}
				}
				if (this.is_ie6()) {
					this.hide_select();
				}
				this.lbg_set_coords(clone_cfg);//初始化浮层的显示位置
				if (clone_cfg.lbg_sec > 0) {
					this.lbg_set_countdown(clone_cfg);
				}//调用倒计时
				this.lbg_on_open();//调用打开过程方法
			}
		}
	};
	/**********真缘通用弹层结束**********/
	/**********真缘标题闪烁开始**********/
	jy_head_function.wink_title = function() {//页面标题闪烁信息，只支持中文
		var space = '';
		var info_len = this.strlen_ch(this.wink_w_info) / 2;//获取信息长度，一个汉字算两个长度，所以汉字个数为总长度除以2
		for (var i = 0; i < info_len; i++) {
			space += '　';
		}//根据信息汉字个数拼接等量的全角空格用于空白替换
		if (typeof flag == 'undefined') {
			flag = 1;
		}//初始化标记
		if (flag == 1) {
			flag = 0;
			document.title = '【' + this.wink_w_info + '】' + this.page_title;
		} else {
			flag = 1;
			document.title = '【' + space + '】' + this.page_title;
		}
		this.wink_w_timer = setTimeout(function() {
			jy_head_function.wink_title()
		}, this.wink_w_speed);//循环调用实现闪烁效果
	}
	jy_head_function.wink_cookie = function() {//COOKIE的分析处理，单位自定义，参考set_cookie的单位
		var sec = arguments[0] ? arguments[0] : '';//写COOKIE的时间
		var jy_wink_enabled = this.get_cookie('jy_wink_enabled');
		if (jy_wink_enabled == 'all') {
			return;
		}//如果设定拦截所有人的闪烁，则等到时间过期或者丢失
		if (this.wink_stop_user) {
			this.set_cookie('jy_wink_enabled', this.wink_stop_user, sec);
		}
	}
	jy_head_function.wink_stop = function() {//停止闪烁
		var re_start_flag = arguments[0] ? arguments[0] : 0;//是否自动重启标记
		if (typeof this.page_title != 'undefined') {
			document.title = this.page_title;
		}//恢复原TITLE值
		if (this.wink_w_timer) {
			clearTimeout(this.wink_w_timer);
		}//清理闪烁计时器
		if (this.wink_c_timer) {
			clearTimeout(this.wink_c_timer);
		}//清除关闭计时器
		if (this.wink_l_timer) {
			clearTimeout(this.wink_l_timer);
		}//清除循环计时器
		if (re_start_flag > 0) {
			this.wink_l_timer = setTimeout(function() {
				jy_head_function.wink_begin();//重新启动闪烁
			}, this.wink_l_time);
		}
	}
	jy_head_function.wink_begin = function() {//开启闪烁
		this.wink_title();//调用闪烁方法
		if (this.wink_c_time > 0) {
			this.wink_c_timer = setTimeout(function() {
				if (jy_head_function.wink_l_time > 0) {
					jy_head_function.wink_stop(1);//在指定的时间后清除闪烁提示
				} else {
					jy_head_function.wink_stop();//在指定的时间后清除闪烁提示
				}
			}, this.wink_c_time);
		}
	}
	jy_head_function.wink_start = function(info) {//开始闪烁
		var jy_wink_enabled = this.get_cookie('jy_wink_enabled');
		if (jy_wink_enabled == 'all') {
			return;//如果cookie中jy_wink_enabled的值为all，所有人都不提示信息
		} else if (this.wink_stop_user
				&& jy_wink_enabled == this.wink_stop_user) {
			return;//与拦截的人相符，不提示信息
		}
		this.wink_stop();//完全停止以前的闪烁行为
		this.cur_url = window.location.host + window.location.pathname;//获取URL中域名、端口、文件
		this.wink_w_timer = '';//初始化闪烁定时器
		this.wink_c_timer = '';//初始化倒计时关闭定时器
		this.wink_l_timer = '';//初始化倒计时循环定时器
		this.wink_c_time = arguments[1] ? arguments[1] : 0;//参数2，关闭时间，单位：毫秒
		this.wink_l_time = arguments[2] ? arguments[2] * 60000 : 0;//参数3，循环时间，单位：分钟
		this.wink_w_speed = arguments[3] ? arguments[3] : 1000;//参数4，闪烁频率默认2秒闪烁一次，单位：毫秒
		this.wink_w_info = info;
		this.page_title = document.title;//获取页面标题
		this.wink_begin();//开始闪烁
		this.click_pv('|wink_start_total|' + this.cur_url);
	}
	/**********真缘标题闪烁开结束**********/
	jy_head_function.check_real_name = function() {//实名制验证方法
		var callback = arguments[0] ? arguments[0] : '';//回调函数
		if (this.get_cookie("nov_jym") == '1') {
			document.domain = jy_top_domain;
			jy_head_function.lbg_tpl = '<iframe src="http://www.'
					+ jy_top_domain
					+ '/usercp/validateemail/gmcglj_checkmobile.php?domain_type=1&tj_key=jy_smz&htd='
					+ callback
					+ '" id="ifr_tpl" width="450" height="300" scrolling="no" frameborder="0"></iframe>';
			jy_head_function.lbg_show({
				lbg_z_index : '1000'
			});
			jy_head_function.click_pv('|jy_real_name_layer|' + HEAD_USER.uid);
			return true;
		}
		return false;
	};
	jy_head_function.del_real_name_cookie = function() {//更新实名制标记COOKIE
		this.set_cookie("nov_jym", 0);
	}
	jy_head_function.get_userinfo();//获取会员登录信息
	var jy_channel = jy_head_function.get_channel();//获取频道栏目（根据二级域名和相关目录获取相应的频道/栏目标识）
	//导航配置
	var jy_img_domain = 'mi' + 'uu.' + 'cn';//图片顶级域名
	var jy_top_domain = jy_head_function.get_top_domain();//真缘站全站顶级域名
	if (jy_top_domain == '' || jy_top_domain == 'jiayuan.com') {
		jy_top_domain = 'jiayuan.com';
		jy_img_domain = 'jyimg.com';
	}
	//配置域名链接
	var common_nav_array = Array();
	common_nav_array['www'] = Array();
	common_nav_array['www']['tag'] = "首页";//标签名
	common_nav_array['www']['url'] = "http://www." + jy_top_domain + "/";//链接
	common_nav_array['www']['css'] = "";//指定样式
	common_nav_array['www']['sta'] = "|head_navigation_www|" + HEAD_USER.uid;//点击统计标识
	common_nav_array['www']['shw'] = [ 'main', 'white', 'blue', 'pink' ];//显示导航
	common_nav_array['usercp'] = Array();
	common_nav_array['usercp']['tag'] = "我的真缘";
	common_nav_array['usercp']['url'] = "http://usercp." + jy_top_domain + "/";
	common_nav_array['usercp']['css'] = "";
	common_nav_array['usercp']['sta'] = "|head_navigation_usercp|"
			+ HEAD_USER.uid;
	common_nav_array['usercp']['shw'] = [ 'main', 'white', 'blue', 'pink' ];
	common_nav_array['club'] = Array();
	common_nav_array['club']['tag'] = "俱乐部";
	common_nav_array['club']['url'] = "http://www." + jy_top_domain + "/club/";
	common_nav_array['club']['css'] = "";
	common_nav_array['club']['sta'] = "|head_navigation_club|" + HEAD_USER.uid;
	common_nav_array['club']['shw'] = [ 'main', 'white', 'blue', 'pink' ];
	common_nav_array['jinrong'] = Array();
	common_nav_array['jinrong']['tag'] = "真缘金融";
	common_nav_array['jinrong']['url'] = "http://www." + jy_top_domain
			+ "/jinrong/jrpassport.php?f=1";
	common_nav_array['jinrong']['css'] = "";
	common_nav_array['jinrong']['sta'] = "|head_navigation_jinrong|"
			+ HEAD_USER.uid;
	common_nav_array['jinrong']['shw'] = [ 'main', 'white', 'blue', 'pink' ];
	common_nav_array['search'] = Array();
	common_nav_array['search']['tag'] = "搜索";
	common_nav_array['search']['url'] = "http://search." + jy_top_domain
			+ "/v2/";
	common_nav_array['search']['css'] = "";
	common_nav_array['search']['sta'] = "|head_navigation_search|"
			+ HEAD_USER.uid;
	common_nav_array['search']['shw'] = [ 'main', 'white', 'blue', 'pink' ];
	common_nav_array['date'] = Array();
	common_nav_array['date']['tag'] = "约会吧";
	common_nav_array['date']['url'] = "http://date." + jy_top_domain
			+ "/?from=daohang";
	common_nav_array['date']['css'] = "";
	common_nav_array['date']['sta'] = "|head_navigation_date|" + HEAD_USER.uid;
	common_nav_array['date']['shw'] = [ 'none' ];
	common_nav_array['date']['ico'] = "new_wink";
	common_nav_array['new'] = Array();
	common_nav_array['new']['tag'] = "新会员";
	common_nav_array['new']['url'] = "http://search." + jy_top_domain
			+ "/v2/new.php";
	common_nav_array['new']['css'] = "";
	common_nav_array['new']['sta'] = "|head_navigation_new|" + HEAD_USER.uid;
	common_nav_array['new']['shw'] = [ 'main', 'white', 'blue', 'pink' ];
	common_nav_array['online'] = Array();
	common_nav_array['online']['tag'] = "聊天";
	common_nav_array['online']['url'] = "http://search." + jy_top_domain
			+ "/v2/online.php";
	common_nav_array['online']['css'] = "";
	common_nav_array['online']['sta'] = "|head_navigation_online|"
			+ HEAD_USER.uid;
	common_nav_array['online']['shw'] = [ 'main', 'white', 'blue', 'pink' ];
	common_nav_array['party'] = Array();
	common_nav_array['party']['tag'] = "活动";
	common_nav_array['party']['url'] = "http://party." + jy_top_domain + "/";
	common_nav_array['party']['css'] = "";
	common_nav_array['party']['sta'] = "|head_navigation_party|"
			+ HEAD_USER.uid;
	common_nav_array['party']['shw'] = [ 'main', 'white', 'blue', 'pink' ];
	common_nav_array['qinggan'] = Array();
	common_nav_array['qinggan']['tag'] = "情感";
	common_nav_array['qinggan']['url'] = "http://qinggan." + jy_top_domain
			+ "/";
	common_nav_array['qinggan']['css'] = "";
	common_nav_array['qinggan']['sta'] = "|head_navigation_qinggan|"
			+ HEAD_USER.uid;
	common_nav_array['qinggan']['shw'] = [ 'none' ];
	common_nav_array['love'] = Array();
	common_nav_array['love']['tag'] = "晒幸福";
	common_nav_array['love']['url'] = "http://love." + jy_top_domain + "/";
	common_nav_array['love']['css'] = "";
	common_nav_array['love']['sta'] = "|head_navigation_love|" + HEAD_USER.uid;
	common_nav_array['love']['shw'] = [ 'main', 'white', 'blue', 'pink' ];
	common_nav_array['tuangou'] = Array();
	common_nav_array['tuangou']['tag'] = "团购";
	common_nav_array['tuangou']['url'] = "http://www." + jy_top_domain
			+ "/tuangou/";
	common_nav_array['tuangou']['css'] = "";
	common_nav_array['tuangou']['sta'] = "|head_navigation_tuangou|"
			+ HEAD_USER.uid;
	common_nav_array['tuangou']['shw'] = [ 'none' ];
	common_nav_array['liehun'] = Array();
	common_nav_array['liehun']['tag'] = "红娘一对一";
	common_nav_array['liehun']['url'] = "http://vip." + jy_top_domain + "/";
	common_nav_array['liehun']['css'] = "";
	common_nav_array['liehun']['sta'] = "|head_navigation_liehun|"
			+ HEAD_USER.uid;
	common_nav_array['liehun']['shw'] = [ 'white', 'blue', 'pink' ];
	//common_nav_array['izhenxin'] = Array();
	//common_nav_array['izhenxin']['tag']	= "爱真心";
	//common_nav_array['izhenxin']['url']	= "#";
	//common_nav_array['izhenxin']['css']	= "";
	//common_nav_array['izhenxin']['sta']	= "|head_navigation_izhenxin|"+HEAD_USER.uid;
	//common_nav_array['izhenxin']['shw'] = ['white','blue','pink'];
	//兼容旧程序
	var mydomain = "www." + jy_top_domain;//拼完整www域名
	var profile = HEAD_USER;
	//兼容结束
	var current_nav_flag = jy_head_function.get_nav_select();
	//设置当前频道导航选中样式
	if (common_nav_array.hasOwnProperty(current_nav_flag)) {
		common_nav_array[current_nav_flag]['css'] = 'head_nav_cur';
	}
	//导航链接条件显示
	if (jy_channel == 'www_index' || jy_channel == 'usercp') {
		common_nav_array['qinggan']['shw'] = [ 'main' ];
	} else {
		if (HEAD_USER.uid > 0 && HEAD_USER.type == 10) {
			common_nav_array['tuangou']['shw'] = [ 'main' ];//满足条件全显示
		}
	}
	//北京、深圳、上海、重庆、郑州、南京、苏州、成都、西安、合肥、昆明、太原、石家庄、长沙
	var common_city_arr = Array('11', '31', '50', '4403', '4101', '3201',
			'3205', '5101', '6101', '3401', '5301', '1401', '1301', '4301');//显示约会吧的城市编码
	var common_city_arr2 = Array('12', '4401', '4201', '3301', '3501', '3701');//显示约会吧招商的城市编码：广州、天津、武汉、杭州、福州、济南
	if (HEAD_USER.uid == 0
			|| (HEAD_USER.uid > 0 && (jy_head_function.in_array(
					HEAD_USER.work_location, common_city_arr) || jy_head_function
					.in_array(HEAD_USER.work_sublocation, common_city_arr)))) {
		common_nav_array['date']['sta'] = "|head_navigation_date|"
				+ HEAD_USER.uid;
		common_nav_array['date']['shw'] = [ 'main', 'white', 'blue', 'pink' ];
	} else if (HEAD_USER.uid > 0
			&& (jy_head_function.in_array(HEAD_USER.work_location,
					common_city_arr2) || jy_head_function.in_array(
					HEAD_USER.work_sublocation, common_city_arr2))) {
		common_nav_array['date']['url'] = "http://date." + jy_top_domain
				+ "/potentialinvestors.php?from=daohang";
		common_nav_array['date']['sta'] = "|head_navigation_date_zs|"
				+ HEAD_USER.uid;
		common_nav_array['date']['shw'] = [ 'main', 'white', 'blue', 'pink' ];
	}
	jy_head_function.jy_head_height = 0;//配置通用头高度，默认无通用头高度为0
	//重写或者添加系统方法
	String.prototype.trim = function() {//去空格函数
		return this.replace(/(^\s*)|(\s*$)/g, "");
	}
</script>
<!--  
<script type="text/javascript" src="%E9%A6%96%E9%A1%B5_%E4%B8%96%E7%BA%AA%E4%BD%B3%E7%BC%98%E7%BA%A6%E4%BC%9A%E5%90%A7_%E4%B8%96%E7%BA%AA%E4%BD%B3%E7%BC%98%E4%BA%A4%E5%8F%8B%E7%BD%91_files/jiayuan_logo_config.js"></script>
<script type="text/javascript" src="%E9%A6%96%E9%A1%B5_%E4%B8%96%E7%BA%AA%E4%BD%B3%E7%BC%98%E7%BA%A6%E4%BC%9A%E5%90%A7_%E4%B8%96%E7%BA%AA%E4%BD%B3%E7%BC%98%E4%BA%A4%E5%8F%8B%E7%BD%91_files/JY_Alert.js"></script>
-->
<script type="text/javascript">
	/*
	 Developed by liujianfeng 
	 【通用自定义定位浮层平台（Custom positioning floating layer）】说明：
	 一、自定义定位浮层，可以根据需要定位在页面的任何位置上
	 二、程序设计上是根据页面通用头下沿和页面左侧边线来做定位参考，也可以根据浏览器的两边做参考
	 三、实际使用中，则需要指明LT（左上），RT（右上），LB（左下），RB（右下）来做大致的定位
	 四、具体的实现时，浮动区域的大小尺寸，位置皆可以自行设置
	 五、具体内容，则需要自行定义模版，或者页面内设计好，包在某个隐藏标签里，给标签设置好ID，然后通过ID去内容
	 六、可以自定义浮层是否有关闭按钮，位置为：LT,RT,LB,RB四个
	 七、一个页面可以有多个浮层，使用add方法添加即可
	 八、可以自定义广告标记在浮层的位置，ad_box:1表示显示广告标记；ad_css标记显示的位置TBLR缩写加数字表示（如：T-20L10相当于top:-20px;left:10px）
	 九、不弹出限制：定义no_cfl_show变量，赋值一个非空，则所有浮层均不会弹出，若需要针对模板（指定弹层）限制，则将no_cfl_show定义为数组，将模板名作为元素存入数组即可
	 */
	var jy_channel_config = new Array();//默认支持（通用自定义定位浮层）主要频道栏目
	jy_channel_config['www_index'] = new Array();//首页
	jy_channel_config['www_index']['page_width'] = 970;
	jy_channel_config['msg'] = new Array();//信件页
	jy_channel_config['msg']['page_width'] = 970;
	jy_channel_config['usercp'] = new Array();//我的真缘首页
	jy_channel_config['usercp']['page_width'] = 1000;
	jy_channel_config['profile'] = new Array();//个人资料页
	jy_channel_config['profile']['page_width'] = 970;
	jy_channel_config['photo'] = new Array();//照片页
	jy_channel_config['photo']['page_width'] = 970;
	jy_channel_config['search'] = new Array();//搜索页
	jy_channel_config['search']['page_width'] = 940;
	jy_channel_config['party'] = new Array();//活动
	jy_channel_config['party']['page_width'] = 950;
	jy_channel_config['gift'] = new Array();//礼物商城
	jy_channel_config['gift']['page_width'] = 980;
	jy_channel_config['club'] = new Array();//俱乐部
	jy_channel_config['club']['page_width'] = 970;
	jy_channel_config['wenda'] = new Array();//问答
	jy_channel_config['wenda']['page_width'] = 970;
	jy_channel_config['meilistar'] = new Array();//魅力之星
	jy_channel_config['meilistar']['page_width'] = 980;
	jy_channel_config['game'] = new Array();//游戏
	jy_channel_config['game']['page_width'] = 970;
	jy_channel_config['help'] = new Array();//帮助
	jy_channel_config['help']['page_width'] = 950;
	jy_channel_config['9158'] = new Array();//互动交友
	jy_channel_config['9158']['page_width'] = 1000;

	var jy_pos_float_layer = {};
	jy_pos_float_layer.$ = function(id) {//简化获取对象
		if (typeof (id) == 'object') {
			return id;
		} else {
			if (id && document.getElementById(id)) {
				return document.getElementById(id);
			} else {
				return null;
			}
		}
	};
	jy_pos_float_layer.tpl = '';//通用浮层内容
	jy_pos_float_layer.init = function() {//初始化
		if (this.$(this.tpl_id)) {
			this.$(this.tpl_id).innerHTML = this.template;
		}//将浮层内容写回原处
		if (this.timer) {
			clearTimeout(this.timer);
		}//若有倒计时则清计时器
		this.cur_url = window.location.host + window.location.pathname;//获取URL中域名、端口、文件
		this.tpl_id = '';//通用浮层模板ID
		this.template = '';//浮层内容
		this.config = {//通用弹层背景配置参数
			pos : 'RB',//默认右下，LT（左上），RT（右上），LB（左下），RB（右下）
			x : 0,//左上角距离参照点x坐标
			y : 0,//左上角距离参照点y坐标
			w : 0,//浮层宽度
			h : 0,//浮层高度
			z : 9000,//浮层z-index值
			r : 0,//参照reference，参照位置，默认0，参照页面中间，1参照浏览器两边
			show : '',//针对jQuery自定义显示方法
			hide : '',//针对jQuery自定义隐藏方法
			close_btn : 0,//关闭按钮是否显示；0不显示关闭按钮；1显示关闭按钮，点击隐藏；2显示关闭按钮，移除按钮
			close_css : 'right:0;top:-10px',//关闭按钮位置，直接写CSS
			ad_box : 0,//广告是否显示；0不显示，1显示
			ad_css : '',//浮层定位的四个方向组合赋值，样例：L0T20(left:0;top:20px)，R10B-20(right:10px;bottom:-20px)
			display : false,//添加后，是否直接显示，默认不显示
			page_width : 0,//页面宽度自定义，定义宽度后，会忽略默认配置的宽度，当r（参照大于0时，则忽略此项）
			cpfl_style : '',//浮层对象的style属性设置
			box_class : '',//容器class设置
			box_style : ''//容器style属性设置
		};
	};
	jy_pos_float_layer.on_open = function() {//显示过程中
	};
	jy_pos_float_layer.on_close = function() {//关闭过程中
	};
	jy_pos_float_layer.get_id = function() {//返回最新对象ID
		var obj_id_prefix = 'jy_cpfl_';//浮层ID的前缀
		for (var i = 1;; i++) {
			if (!this.$(obj_id_prefix + i)) {
				break;
			}
		}//循环获取判断对象是否存在，每次新增对象时，对象ID自动加1
		return obj_id_prefix + i;
	}
	jy_pos_float_layer.remove = function(id) {//关闭移除浮层，物理删除，需要add重新添加
		var hide_func = arguments[1] ? arguments[1] : '';//参数2，自定义隐藏方法
		if (hide_func && typeof (jQuery) != 'undefined') {//如果自定义了隐藏的方法，则先按照预先定义的方法隐藏，然后再移除浮层对象
			eval('jQuery("#' + id + '").' + hide_func);//jQuery的方式隐藏浮层
		}
		if (this.$(id)) {
			document.body.removeChild(this.$(id));
			this.init();//清理（初始化）变量
			this.on_close();
			jy_head_function.click_pv('|cpfl_hide_total|' + this.cur_url);
		}
	};
	jy_pos_float_layer.hide = function(id) {//隐藏浮层，临时隐藏，还可以通过show方法显示
		var hide_func = arguments[1] ? arguments[1] : '';//参数2，自定义隐藏方法
		if (hide_func && typeof (jQuery) != 'undefined') {
			eval('jQuery("#' + id + '").' + hide_func);//jQuery的方式隐藏浮层
		} else {
			if (this.$(id)) {
				this.$(id).style.display = "none";
			}//默认隐藏方式
		}
	};
	jy_pos_float_layer.show = function(id) {//显示浮层
		var show_func = arguments[1] ? arguments[1] : '';//参数2，自定义显示方法

		if (show_func && typeof (jQuery) != 'undefined') {
			eval('jQuery("#' + id + '").' + show_func);//jQuery的方式显示浮层
		} else {
			if (this.$(id)) {
				this.$(id).style.display = '';
			}//默认显示方式
		}
	}
	jy_pos_float_layer.layer = function(cpfl_root_id, src_id, clone_cfg) {//实现浮层（浮层对象ID，浮层模板ID，配置克隆对象）
		if (cpfl_root_id) {//浮层配置成功
			if (this.tpl != '') {//传模板的方式获取弹层模板内容
				this.template = this.tpl;
			}
			if (this.$(src_id)) {//通过ID取浮层内容的调用方式
				if (src_id != this.tpl_id) {//模板有变化则将原模板放回原处
					if (this.$(this.tpl_id)) {
						this.$(this.tpl_id).innerHTML = this.template;
					}//将原模板放回原处
				}
				this.template = this.$(src_id).innerHTML;//取指定浮层（新模板）内容到模板变量
				if (this.template) {
					this.tpl_id = src_id;//将新模板ID赋值到模板ID变量
					this.$(this.tpl_id).innerHTML = '';//将指定的浮层内容清空，避免代码复制导致冲突
				}
			}
			if (this.template) {
				this.$(cpfl_root_id + '_box').innerHTML = this.template;//将模板内容写到浮层里
				if (clone_cfg.display) {//直接显示浮层
					if (typeof (jQuery) == 'undefined') {
						if (this.$(cpfl_root_id)) {
							this.$(cpfl_root_id).style.display = '';
						}//默认显示方式
					} else {
						if (clone_cfg.show) {
							eval('jQuery("#' + cpfl_root_id + '").'
									+ clone_cfg.show);//用jQuery的方法显示浮层
						} else {
							if (this.$(cpfl_root_id)) {
								this.$(cpfl_root_id).style.display = '';
							}
							;//默认显示方式
						}
					}
				}
				this.on_open();//调用打开过程方法
				jy_head_function.click_pv('|cpfl_add_total|' + this.cur_url);
			}
			return cpfl_root_id;
		}
	};
	jy_pos_float_layer.set_config = function(src_id, _cfg) {//配置整个浮层对象（浮层模板ID，配置对象克隆）
		var cpfl_root_id = this.get_id();//获取对象ID
		var cpfl_div = document.createElement("div");//创建浮层容器
		cpfl_div.id = cpfl_root_id;
		_cfg.pos = _cfg.pos.toUpperCase();//转大写用于判断
		_cfg.x = parseInt(_cfg.x);
		_cfg.y = parseInt(_cfg.y);
		var head_height = jy_head_function.jy_head_height;//获取真缘标准头配置的高度，用于坐标参考
		if (_cfg.r == 0) {//参考页面中间定位
			var offset_x = this.page_width / 2;//以页面中心为界，向左右做偏移，将左右两边做参考，所以很坐标默认各向左右偏移二分之一个页面的宽度值
			var css_txt = 'left:50%;margin-left:' + (offset_x + _cfg.x)
					+ 'px;bottom:' + _cfg.y + 'px;width:' + _cfg.w
					+ 'px;height:' + _cfg.h + 'px;';//设置浮层的位置与样式，默认右下角（RB）
			css_txt += '_top:expression(documentElement.scrollTop+documentElement.clientHeight-this.offsetHeight-'
					+ _cfg.y + ');';
			if (_cfg.pos == 'RT') {//右上角（RT）
				css_txt = 'left:50%;margin-left:' + (offset_x + _cfg.x)
						+ 'px;top:' + (_cfg.y + head_height) + 'px;width:'
						+ _cfg.w + 'px;height:' + _cfg.h + 'px;';
				css_txt += '_top:expression(documentElement.scrollTop+'
						+ (_cfg.y + head_height) + ');';
			} else if (_cfg.pos == 'LB') {//左下角（LB）
				css_txt = 'right:50%;margin-right:' + (offset_x + _cfg.x)
						+ 'px;bottom:' + _cfg.y + 'px;width:' + _cfg.w
						+ 'px;height:' + _cfg.h + 'px;';
				css_txt += '_top:expression(documentElement.scrollTop+documentElement.clientHeight-this.offsetHeight-'
						+ _cfg.y + ');';
			} else if (_cfg.pos == 'LT') {//左上角（LT）
				css_txt = 'right:50%;margin-right:' + (offset_x + _cfg.x)
						+ 'px;top:' + (_cfg.y + head_height) + 'px;width:'
						+ _cfg.w + 'px;height:' + _cfg.h + 'px;';
				css_txt += '_top:expression(documentElement.scrollTop+'
						+ (_cfg.y + head_height) + ');';
			}
		} else {//参考浏览器两边定位
			var css_txt = 'right:' + _cfg.x + 'px;bottom:' + _cfg.y
					+ 'px;width:' + _cfg.w + 'px;height:' + _cfg.h + 'px;';//设置浮层的位置与样式，默认右下角（RB）
			css_txt += '_top:expression(documentElement.scrollTop+documentElement.clientHeight-this.offsetHeight-'
					+ _cfg.y + ');';
			if (_cfg.pos == 'RT') {//右上角（RT）
				css_txt = 'right:' + _cfg.x + 'px;top:'
						+ (_cfg.y + head_height) + 'px;width:' + _cfg.w
						+ 'px;height:' + _cfg.h + 'px;';
				css_txt += '_top:expression(documentElement.scrollTop+'
						+ (_cfg.y + head_height) + ');';
			} else if (_cfg.pos == 'LB') {//左下角（LB）
				css_txt = 'left:' + _cfg.x + 'px;bottom:' + _cfg.y
						+ 'px;width:' + _cfg.w + 'px;height:' + _cfg.h + 'px;';
				css_txt += '_top:expression(documentElement.scrollTop+documentElement.clientHeight-this.offsetHeight-'
						+ _cfg.y + ');';
			} else if (_cfg.pos == 'LT') {//左上角（LT）
				css_txt = 'left:' + _cfg.x + 'px;top:' + (_cfg.y + head_height)
						+ 'px;width:' + _cfg.w + 'px;height:' + _cfg.h + 'px;';
				css_txt += '_top:expression(documentElement.scrollTop+'
						+ (_cfg.y + head_height) + ');';
			}
		}
		css_txt = 'display:none;position:fixed;' + css_txt + ';z-index:'
				+ _cfg.z + ';_position:absolute;' + _cfg.cpfl_style;
		cpfl_div.style.cssText = css_txt;//设置浮层的属性效果
		if (_cfg.close_btn) {//关闭按钮
			var close_div = document.createElement("div");//创建关闭按钮
			close_div.id = cpfl_root_id + '_btn';
			/*close_div.style.cssText = 'position:absolute;cursor:pointer;width:9px;height:9px;background:url(#) no-repeat 0;' + _cfg.close_css;*/
			close_div.onclick = function() {
				if (_cfg.close_btn == 1) {
					jy_pos_float_layer.hide(cpfl_root_id, _cfg.hide);//绑定临时隐藏方法
				} else {
					jy_pos_float_layer.remove(cpfl_root_id, _cfg.hide);//绑定移除方法
				}
			};
			cpfl_div.appendChild(close_div);
		}
		if (_cfg.ad_box) {//广告标记
			var att = new Array();
			att['T'] = 'top';
			att['B'] = 'bottom';
			att['L'] = 'left';
			att['R'] = 'right';//符号对应CSS属性
			var stl = 'TBLR';//限定属性值
			var css = _cfg.ad_css.toUpperCase();//开始处理属性：将传递的属性值转大写
			var chr = css.replace(/[0-9-]/g, '').split('');//通过正则过滤到数字和负号，取出字母部分并保存如数组
			var num = css.split(/[A-Z]/g);//通过正则，取出所有的数字部分，存到数组中（第一个元素为空，从第二个开始）
			var ad_css = '';//最终结果
			for (var adi = 0; adi < chr.length; adi++) {
				if (stl.indexOf(chr[adi]) >= 0 && !isNaN(num[adi + 1])) {//字母标记符合规则，对应的值是数字则开始拼接CSS，因为数据处理问题数字数组比符号数组错后一个元素
					ad_css += att[chr[adi]] + ':' + num[adi + 1] + 'px;';
				}
			}
			ad_css == '' ? ad_css = 'left:0;bottom:-15px' : '';//没有定义CSS，定义默认值
			var ad_div = document.createElement("div");//创建广告标记跟随
			/*ad_div.style.cssText = 'position:absolute;width:24px;height:14px;background:url(#) no-repeat;' + ad_css;*/

			cpfl_div.appendChild(ad_div);
		}
		var box_div = document.createElement("div");//创建容器标签
		box_div.id = cpfl_root_id + '_box';
		if (_cfg.box_class) {
			box_div.className = _cfg.box_class;
		}//设置容器class
		if (_cfg.box_style) {
			box_div.style = _cfg.box_style;
		}//设置容器style
		cpfl_div.appendChild(box_div);
		if (document.getElementById('jy_head_box')) {
			document.getElementById('jy_head_box').appendChild(cpfl_div);//添加浮层对象到页面
			return this.layer(cpfl_root_id, src_id, _cfg);//具体浮层实现，并返回浮层ID
		} else {
			var jy_head_box_div = document.createElement("div");//创建浮层容器
			jy_head_box_div.id = 'jy_head_box';
			jy_head_box_div.style.cssText = 'height:0;font-size:0;line-height:0';
			jy_head_box_div.appendChild(cpfl_div);//添加浮层对象到页面
			var first = document.body.firstChild;//得到页面的第一个元素 
			document.body.insertBefore(jy_head_box_div, first);//在得到的第一个元素之前插入 
			return jy_pos_float_layer.layer(cpfl_root_id, src_id, _cfg);//具体浮层实现，并返回浮层ID
		}
	};
	jy_pos_float_layer.no_run = function() {//验证当前是否执行浮层处理0不拦截，1拦截
		var src_id = arguments[0] ? arguments[0] : '';//模板ID
		var r = 0;//0不拦截，1拦截
		if (typeof no_cfl_show == 'string' || typeof no_cfl_show == 'number'
				|| typeof no_cfl_show == 'boolean') {
			r = no_cfl_show ? 1 : 0;
		} else if (typeof no_cfl_show == 'object') {//拦截指定模板的浮层
			if (src_id) {//传入模板ID
				for ( var t_id in no_cfl_show) {
					if (no_cfl_show[t_id] == src_id) {
						r = 1;
						break;
					}
				}
			}
		}
		return r;
	}
	jy_pos_float_layer.add = function() {//添加通用定位浮层对象，返回定位浮层的ID，用于其他（如：show、hide）方法控制
		if (this.no_run()) {
			return;
		}
		if (typeof jy_head_function != "object") {
			return;
		}//必须包含通用头，会使用通用头的方法
		this.init();//初始化最外层的容器，定位参考标签
		var src_id = '';//模板ID
		var cfg = '';//配置参数
		//=====参数处理开始，根据参数特点做交换，实现灵活传递参数=====
		var arg1 = arguments[0] ? arguments[0] : '';//参数1
		var arg2 = arguments[1] ? arguments[1] : '';//参数2
		if (typeof arg1 == 'object') {
			for ( var first in arg1) {
				break;
			}//取第一个属性key
			if (jy_head_function.in_array(first, this.config, 'k')) {
				cfg = arg1;//配置对象
			} else {
				src_id = arg1;//HTML模板对象
			}
		} else if (arg1 && typeof arg1 == 'string') {
			src_id = arg1;//模板ID
		}
		if (typeof arg2 == 'object') {
			for ( var first in arg2) {
				break;
			}//取第一个属性key
			if (jy_head_function.in_array(first, this.config, 'k')) {
				cfg = arg2;//配置对象
			} else {
				src_id = arg2;//HTML模板对象
			}
		} else if (arg2 && typeof arg2 == 'string') {
			src_id = arg2;//模板ID
		}
		//=====参数处理结束=====
		if (this.no_run(src_id)) {//拦截验证
			return;//如果设置了拦截，则直接返回，不显示浮层
		}
		var clone_cfg = jy_head_function.clone_obj(this.config);//克隆默认配置
		if (typeof cfg == 'object') {
			for ( var cfg_v in cfg) {//根据传入参数，临时修改配置属性
				if (cfg.hasOwnProperty(cfg_v)
						&& clone_cfg.hasOwnProperty(cfg_v)) {
					clone_cfg[cfg_v] = cfg[cfg_v];//两个对象都有同一个属性，更新改属性值
				}
			}
		}
		this.page_width = clone_cfg.page_width;//设定页面宽度，用于计算浮层定位基线参考
		if (this.page_width == 0 && clone_cfg.r == 0) {
			for ( var key in jy_channel_config) {//遍历可用配置，找出配置参数数据
				if (key == jy_channel) {//与当前频道匹配
					this.page_width = jy_channel_config[key]['page_width'];//取得配置的页面宽度
				}
			}
		}
		if (this.page_width == 0 && clone_cfg.r == 0) {
			return;
		}//必须指定页面宽度，自行输入或者使用默认配置
		return this.set_config(src_id, clone_cfg);//配置浮层，并返回浮层ID
		//return 'Failed to add a floating layer.';//添加浮层失败
	};
</script>
<!--[if lte IE 6]>
<script type="text/javascript" src="#"></script>
<![endif]-->
<!-- released time 2016-11-21 11:23:25 

<script type="text/javascript" src="%E9%A6%96%E9%A1%B5_%E4%B8%96%E7%BA%AA%E4%BD%B3%E7%BC%98%E7%BA%A6%E4%BC%9A%E5%90%A7_%E4%B8%96%E7%BA%AA%E4%BD%B3%E7%BC%98%E4%BA%A4%E5%8F%8B%E7%BD%91_files/love_location_array.js"></script>
<script type="text/javascript" src="%E9%A6%96%E9%A1%B5_%E4%B8%96%E7%BA%AA%E4%BD%B3%E7%BC%98%E7%BA%A6%E4%BC%9A%E5%90%A7_%E4%B8%96%E7%BA%AA%E4%BD%B3%E7%BC%98%E4%BA%A4%E5%8F%8B%E7%BD%91_files/header.js"></script>
<script type="text/javascript" src="%E9%A6%96%E9%A1%B5_%E4%B8%96%E7%BA%AA%E4%BD%B3%E7%BC%98%E7%BA%A6%E4%BC%9A%E5%90%A7_%E4%B8%96%E7%BA%AA%E4%BD%B3%E7%BC%98%E4%BA%A4%E5%8F%8B%E7%BD%91_files/lazyload.js"></script>
</head>-->
<body>
	<div style="height: 0px; font-size: 0px; line-height: 0;"
		id="jy_head_box">
		<div
			style="position: fixed; right: 0px; top: 260px; width: 23px; height: 83px; z-index: 9000;"
			id="jy_cpfl_1">
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
	<script>
		var bigsize = 300;
		var date_localtion = '4301';
		var shop_id = '23';
	</script>
	<div class="date_wrap_white">
		<div class="date_header fn-clear">
			<a href="" class="header_logo"><img src="images/logo.png"
				style="width: 300px; height: 50px;"></a>
			<div class="header_city">
				<p class="city_now">
					<a href="javascript:;" class="city_default">长沙</a><br>
					<a href="javascript:;">[切换城市]</a>
				</p>
				<ul class="city_check fn-hide">
					<li>北京：<a href="javascript:date_header_chenge_loc(11);">北京</a></li>
					<li>河北：<a href="javascript:date_header_chenge_loc(1301);">石家庄</a></li>
					<li>山西：<a href="javascript:date_header_chenge_loc(1401);">太原</a></li>
					<li>上海：<a href="javascript:date_header_chenge_loc(31);">上海</a></li>
					<li>江苏：<a href="javascript:date_header_chenge_loc(3201);">南京</a><a
						href="javascript:date_header_chenge_loc(3205);">苏州</a></li>
					<li>安徽：<a href="javascript:date_header_chenge_loc(3401);">合肥</a></li>
					<li>河南：<a href="javascript:date_header_chenge_loc(4101);">郑州</a></li>
					<li>湖南：<a href="javascript:date_header_chenge_loc(4301);">长沙</a></li>
					<li>广东：<a href="javascript:date_header_chenge_loc(4403);">深圳</a></li>
					<li>重庆：<a href="javascript:date_header_chenge_loc(50);">重庆</a></li>
					<li>四川：<a href="javascript:date_header_chenge_loc(5101);">成都</a></li>
					<li>云南：<a href="javascript:date_header_chenge_loc(5301);">昆明</a></li>
					<li>陕西：<a href="javascript:date_header_chenge_loc(6101);">西安</a></li>
					<a href="javascript:;" class="city_close"></a>
				</ul>
			</div>
			<img src="images/apoint_address_files/header_slogan.jpg"
				class="header_slogan">
		</div>
		<div class="date_nav fn-clear">
			<ul class="nav_list fn-clear">
				<li style="display: block;"><a href="index.jsp" target="_blank"
					class="cur">首页 </a></li>
				<li style="display: block;"><a href="" target="_blank">热门活动
				</a></li>
				<li style="display: block;"><a href="" target="_blank">最新会员
				</a></li>
				<li style="display: block;" class="nav_show"><a href="">全国体验店
				</a></li>
				<li style="display: block;" class="nav_show"><a href="">招商加盟
				</a></li>
				<li style="display: block;"><a href="" target="_blank">限时特惠
						<i class="hot_icon"></i>
				</a></li>
				<li style="display: block;" class="nav_show"><a href=""
					target="_blank">脱光秘籍 <i class="hot_icon"></i>
				</a></li>
			</ul>
			<!-- 登录状态 begin -->
			<div class="nav_login">
				<div class="login_user">
					<a class="user_name" href="" target="_blank"></a>
				</div>
				<span>丨</span><a href="">退出</a>
			</div>
			<!-- 登录状态 end -->
			<a href="" class="nav_return" target="_blank">返回真缘</a>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			//send_jy_pv2('|date_all_pvuvx|'+HEAD_USER.uid);
			var from = jy_head_function.get_cookie('DATE_FROM');
			if (!from) {
				from = "daohang";
			}
			var from_key = "date_from_index" + from;
			if ($.trim(from) != '') {
				//send_jy_pv2('|'+"date_from_all"+from+'|'+HEAD_USER.uid);
				//send_jy_pv2('|'+from_key+'|'+HEAD_USER.uid);
				jy_head_function.set_cookie('DATE_FROM', from);
			}
			//send_jy_pv2('|date_pv_v3_index|'+HEAD_USER.uid);
			//dateCount('index',HEAD_USER.uid,'4301','23',from);

		})
	</script>
	<!--  
<script type="text/javascript" src="%E9%A6%96%E9%A1%B5_%E4%B8%96%E7%BA%AA%E4%BD%B3%E7%BC%98%E7%BA%A6%E4%BC%9A%E5%90%A7_%E4%B8%96%E7%BA%AA%E4%BD%B3%E7%BC%98%E4%BA%A4%E5%8F%8B%E7%BD%91_files/lazyload.js"></script>
<script type="text/javascript" src="%E9%A6%96%E9%A1%B5_%E4%B8%96%E7%BA%AA%E4%BD%B3%E7%BC%98%E7%BA%A6%E4%BC%9A%E5%90%A7_%E4%B8%96%E7%BA%AA%E4%BD%B3%E7%BC%98%E4%BA%A4%E5%8F%8B%E7%BD%91_files/common.js"></script>
-->

<!-- banner轮播 begin -->
<div style="width:100%;">
<div class="lubo">
  <ul class="lubo_box">
    <li style=" opacity: 1;filter:alpha(opacity=100);">
    <a href="" style="background:url(images/YueHui/1.jpeg) center top no-repeat" alt="标题1"></a></li>
    <li><a href="" style="background:url(images/YueHui/2.jpeg) center top no-repeat"></a></li>
    <li><a href="" style="background:url(images/YueHui/3.jpeg) center top no-repeat"></a></li>
    <li><a href="" style="background:url(images/YueHui/4.jpeg) center top no-repeat"></a></li>
    <li><a href="" style="background:url(images/YueHui/5.jpeg) center top no-repeat"></a></li>

  </ul>
</div>

<script type="text/javascript">

$(function(){

    $(".lubo").lubo({

    });

})
</script>
</div>
<!-- banner轮播 end -->



<script type="text/javascript">
	$(function() {
		//send_jy_pv2('|date_index_shop23|'+HEAD_USER.uid);
		//send_jy_pv2('|1031769_0|'+HEAD_USER.uid);
	})
</script>
<div style="clear:both">
	<div class="date_wrap_gray">
		<div class="home_act">
			<h1 class="home_title">
				热门活动<a href="" target="_blank">更多&nbsp;&gt;</a>
			</h1>
			<div class="act_list fn-clear">
				<div class="act_detail">
					<div class="act_img">
						<a href="#" target="_blank" onmousedown="javascript:void(0);"><img
							src="images/login/1466647934.jpg" class="activitys" width="378px">
						<div class="ad_reset_icon ad_reset_lb"></div></a>
					</div>
					<h2 class="fn-clear">
						<span>非诚勿扰</span><em>5937人参加过</em>
					</h2>
					<p>本活动是参照江苏卫视的婚恋节目《非诚勿扰》而创立的活动具有很强的娱乐性，参与其中既可以获得极大的乐趣，也...</p>
					<a href="javascript:Date_show_tc('mfty',2774,0,0);" class="act_btn"
						onmousedown="javascript:void(0);" onclick="">免费体验</a>
				</div>
				<div class="act_detail">
					<div class="act_img">
						<a href="#" target="_blank" onmousedown="javascript:void(0);"><img
							src="images/login/1468375651.jpg" class="activitys" width="378px">
						<div class="ad_reset_icon ad_reset_lb"></div></a>
					</div>
					<h2 class="fn-clear">
						<span>爱情转盘</span><em>1253人参加过</em>
					</h2>
					<p>帅哥美女围坐在一起，用转瓶子的方式介绍自己，有喜欢的TA可以选择坐TA旁边~，当然最后能不能和TA牵手成...</p>
					<a href="javascript:Date_show_tc('mfty',2775,0,0);" class="act_btn"
						onmousedown="javascript:void(0);" onclick="javascript:void(0);">免费体验</a>
				</div>
				<div class="act_detail">
					<div class="act_img">
						<a href="#" target="_blank" onmousedown="javascript:void(0);"><img
							src="images/login/20141124023526108.jpg" class="activitys"
							width="378px">
						<div class="ad_reset_icon ad_reset_lb"></div></a>
					</div>
					<h2 class="fn-clear">
						<span>杀人游戏</span><em>6320人参加过</em>
					</h2>
					<p>杀人游戏是时下流行的多人共同参与的著名的智力和心力游戏，是一个可以锻炼口才及增强分析判断能力的推理游戏。...</p>
					<a href="javascript:Date_show_tc('mfty',2776,0,0);" class="act_btn"
						onmousedown="javascript:void(0);" onclick="">免费体验</a>
				</div>
				<div class="act_detail">
					<div class="act_img">
						<a href="#" target="_blank" onmousedown="javascript:void(0);"><img
							src="images/login/1464317539.jpg" class="activitys" width="378px">
						<div class="ad_reset_icon ad_reset_lb"></div></a>
					</div>
					<h2 class="fn-clear">
						<span>制服之夜</span><em>1669人参加过</em>
					</h2>
					<p>非常零距离—制服之夜小心你的眼睛非常零距离—注意你的心脏与异性在游戏的过程中零距离接触1/2问答亲密饼干...</p>
					<a href="javascript:Date_show_tc('mfty',2777,0,0);" class="act_btn"
						onmousedown="javascript:void(0);" onclick="">免费体验</a>
				</div>
				<div class="act_detail">
					<div class="act_img">
						<a href="#" target="_blank" onmousedown=""><img
							src="images/login/1467954237.jpg" class="activitys" width="378px">
						<div class="ad_reset_icon ad_reset_lb"></div></a>
					</div>
					<h2 class="fn-clear">
						<span>我的青春不毕业</span><em>1398人参加过</em>
					</h2>
					<p>游戏环节1、男女搭配系红领巾2、课间传纸条3、课下写情书4、数语英体育课5、校园演出季6、结业考试季等等...</p>
					<a href="javascript:Date_show_tc('mfty',2778,0,0);" class="act_btn"
						onmousedown="javascript:void(0);" onclick="">免费体验</a>
				</div>
				<div class="act_detail">
					<div class="act_img">
						<a href="#" target="_blank" onmousedown="javascript:void(0);"><img
							src="images/login/20141205063310867.jpg" class="activitys"
							width="378px">
						<div class="ad_reset_icon ad_reset_lb"></div></a>
					</div>
					<h2 class="fn-clear">
						<span>缘分亲手抓</span><em>3018人参加过</em>
					</h2>
					<p>本活动主要是通过抽取缘分牌的形式，寻找缘分。本活动适合8~20名会员共同参与，活动中应保持男女比例平衡。...</p>
					<a href="javascript:Date_show_tc('mfty',2779,0,0);" class="act_btn"
						onmousedown="javascript:void(0);" onclick="">免费体验</a>
				</div>
			</div>
		</div>
	</div>
</div>

	<h1 style="margin-left: 70px; margin-top: 20px;" class="home_title">
		最新会员<a href="" _href="" class="change_href_a">更多&nbsp;&gt;</a>
	</h1>


	<!-- 随机图片生成 1100pxmargin-left:120px;-->

	<div style="margin-top: -45px; width: 100%; background-color: #f7f5f5; border-radius: 15px;clear:both;">
		<section id="wrapper">
			<div id="container">
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Sunset Lake</strong>
					<p>A peaceful sunset view...</p>
					<div class="meta">by j osborn</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Bridge to Heaven</strong>
					<p>Where is the bridge lead to?</p>
					<div class="meta">by SigitEko</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Autumn</strong>
					<p>The fall of the tree...</p>
					<div class="meta">by Lars van de Goor</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Winter Whisper</strong>
					<p>Winter feel...</p>
					<div class="meta">by Andrea Andrade</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Light</strong>
					<p>The only shinning light...</p>
					<div class="meta">by Lars van de Goor</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Rooster's Ranch</strong>
					<p>Rooster's ranch landscape...</p>
					<div class="meta">by Andrea Andrade</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Yellow cloudy</strong>
					<p>It is yellow cloudy...</p>
					<div class="meta">by Zsolt Zsigmond</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Herringfleet Mill</strong>
					<p>Just a herringfleet mill...</p>
					<div class="meta">by Ian Flindt</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Battle Field</strong>
					<p>Battle Field for you...</p>
					<div class="meta">by Andrea Andrade</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Sundays Sunset</strong>
					<p>Beach view sunset...</p>
					<div class="meta">by Robert Strachan</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Sun Flower</strong>
					<p>Good Morning Sun flower...</p>
					<div class="meta">by Zsolt Zsigmond</div>
				</div>

				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Sun Flower</strong>
					<p>Good Morning Sun flower...</p>
					<div class="meta">by Zsolt Zsigmond</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Sun Flower</strong>
					<p>Good Morning Sun flower...</p>
					<div class="meta">by Zsolt Zsigmond</div>
				</div>

				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Sun Flower</strong>
					<p>Good Morning Sun flower...</p>
					<div class="meta">by Zsolt Zsigmond</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Sun Flower</strong>
					<p>Good Morning Sun flower...</p>
					<div class="meta">by Zsolt Zsigmond</div>
				</div>

				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Sun Flower</strong>
					<p>Good Morning Sun flower...</p>
					<div class="meta">by Zsolt Zsigmond</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Sun Flower</strong>
					<p>Good Morning Sun flower...</p>
					<div class="meta">by Zsolt Zsigmond</div>
				</div>

				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Sun Flower</strong>
					<p>Good Morning Sun flower...</p>
					<div class="meta">by Zsolt Zsigmond</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Sun Flower</strong>
					<p>Good Morning Sun flower...</p>
					<div class="meta">by Zsolt Zsigmond</div>
				</div>
				<div class="grid">
					<div class="imgholder">
						<img class="img" />
					</div>
					<strong>Sun Flower</strong>
					<p>Good Morning Sun flower...</p>
					<div class="meta">by Zsolt Zsigmond</div>
				</div>
			</div>
	</div>
</body>
<script>
	/*
	设置属性 注意一定要放在body元素后！！！
	document.getElementsByClassName("img")[0].setAttribute("id",1);
	//获取属性
	alert(document.getElementsByClassName("img")[0].attributes["id"].nodeValue);
	=*/
	/*var temp01=11;
	for(var i=0;i<11;i++){
	alert(i);
	}
	

	 */

	/*
	 */
	for (var i = 0; i < 20; i++) {
		document.getElementsByClassName("img")[i].setAttribute("id", i);
	}
	//获取img元素的id属性值
	for (var i = 0; i < 20; i++) {
		//alert(document.getElementsByClassName("img")[i].attributes["id"].nodeValue);
	}

	var randomNum = function(count) {
		var original = new Array;//原始数组
		var originalObj = new Array;//目标数组 
		//给原始数组original赋值 
		for (var i = 0; i < count; i++) {
			original[i] = i + 1;
		}
		for (var num, i = 0; i < count; i++) {
			do {
				num = Math.floor(Math.random() * count);
			} while (original[num] == null);
			//document.write(original[num]+" ");
			if (original[num] != null) {
				originalObj[i] = original[num];
			}
			original[num] = null;
		}
		return originalObj;
	};

	var temp = randomNum(20);
	//alert(temp);
	//alert(randomNum(temp01));

	var url = null;
	for (var i = 0; i < temp.length; i++) {
		url = "images/login\/" + temp[i] + ".jpg";//随机生成图片路径
		// alert(url);
		document.getElementById(i).src = url;
		//alert(url);
	};
</script>

<!-- 随机图片生成结束 -->








<div class="date_footer">

	<div class="footer_wrap">
		<div class="footer_left">
			<p>投诉、举报邮箱：date_supervise@jiayuan.com 电话：010-51627090</p>
			<p>
				<a href="#" target="_blank">联系客服</a><a href="#" target="_blank">关于我们</a><a
					href="#" target="_blank">联系我们</a><a href="#" target="_blank">注册条款</a><a
					href="#" target="_blank">交友信息</a><a href="#" target="_blank">隐私保护</a><a
					href="#" target="_blank">帮助中心</a><a href="#" target="_blank">安全中心</a>
			</p>
		</div>
		<div class="footer_right fn-clear">
			<img src="images/login/date_code.jpg"><span>关注约会吧官方微信，即送价值300元的免费体验。</span>
		</div>
		<div class="clear"></div>
		<p class="footer_cert">
			ICP证书：沪B2-20100074 <a href="#" target="_blank">增值电信业务经营许可证：沪B2-20070313</a>
			<a href="#" target="_blank">ISO9001质量体系认证</a> <a href="#"
				target="_blank">沪网文[2012]0720-106号</a><br>© 2003-2016 版权所有
			京公网安备110105002124号
		</p>
	</div>
</div>
<script type="text/javascript" src="#"></script>
<script type="text/javascript">
	//Developed by liujianfeng
	//通用底的功能文件
	//参与统计的二级域名：www,msg,usercp,profile,photo,search,diary,love,party,gift,map,login,reg,webim,show,book,case,subject,game,caipiao,vip,date,im
	var common_bot_sub_domain = 'other';//通用底频道字符串，二级域名或者栏目目录名，other为不确定频道或者栏目
	var jy_foot_statistics = {};
	jy_foot_statistics.rnd_num = function(d, u) {//随机数
		var rnd = parseInt(Math.random() * (u - d + 1) + d);
		return rnd;
	}
	jy_foot_statistics.get_ie_version = function() {//获取IE版本号
		var rMsie = /(msie\s|trident.*rv:)([\w.]+)/;
		var ua = navigator.userAgent.toLowerCase();
		var b_match = rMsie.exec(ua);
		if (b_match != null) {
			return b_match[2].replace('.0', '');
		}
		return 0;
	};
	jy_foot_statistics.get_ie_ver = function() {//获取IE版本号
		if ("ActiveXObject" in window) {
			if (!document.compatMode) {
				return 5;
			} else if (!window.XMLHttpRequest) {
				return 6;
			} else if (!document.querySelector) {
				return 7;
			} else if (!document.addEventListener) {
				return 8;
			} else if (!window.atob) {
				return 9;
			} else if (/MSIE/i.test(navigator.userAgent) && (function() {
				"use strict";
				return this === undefined;
			}())) {
				return 10;
			} else if (!document.attachEvent) {
				return 11;
			} else {
				return 0;
			}
		}
		return 0;//其他版本
	};
	jy_foot_statistics.get_brower = function() {//获取浏览器
		var ua = navigator.userAgent.toLowerCase();
		if (ua.length > 250) {
			ua = ua.substring(0, 250);
		}
		if (ua.indexOf('qq') != -1) {
			return 'qq';
		}
		if (ua.indexOf("maxthon") != -1) {
			return "mx";
		}
		if (ua.indexOf("metasr") != -1) {
			return "sg";
		}
		if (ua.indexOf("bidu") != -1) {
			return 'bd';
		}
		if (ua.indexOf("lbbrowser") != -1) {
			return 'lb';
		}
		if (ua.indexOf("tao") != -1) {
			return 'tb';
		}
		if (ua.indexOf("opera") != -1 || ua.indexOf("opr") != -1) {
			return "opr";
		}
		if (ua.indexOf("firefox") != -1) {
			return "ff";
		}
		if (ua.indexOf("chrome") != -1) {
			return "gg";
		}
		if (ua.indexOf("safari") != -1) {
			return "safari";
		}
		if ("ActiveXObject" in window) {
			var err = 0;
			if (ua.indexOf("msie") == -1 && ua.indexOf(".net") == -1) {
				err = 1;
			}
			if (err == 1) {
				var ver = 0;
			} else {
				var ver = this.get_ie_ver();
			}
			return 'ie' + ver;
		}
		return "other";
	};
	jy_foot_statistics.get_os = function() {//获取操作系统
		var ua = navigator.userAgent.toLowerCase();
		var pf = navigator.platform.toLowerCase();
		var is_win = (pf == "win32") || (pf == "windows");
		if (is_win) {
			if (ua.indexOf("windows nt 5.1") > -1
					|| ua.indexOf("windows xp") > -1)
				return "xp";
			if (ua.indexOf("windows nt 6.1") > -1
					|| ua.indexOf("windows 7") > -1)
				return "win7";
			if (ua.indexOf("windows nt 6.2") > -1
					|| ua.indexOf("windows 8") > -1)
				return "win8";
			if (ua.indexOf("windows nt 5.0") > -1
					|| ua.indexOf("windows 2000") > -1)
				return "2k";
			if (ua.indexOf("windows nt 5.2") > -1
					|| ua.indexOf("windows 2003") > -1)
				return "2003";
			if (ua.indexOf("windows nt 6.0") > -1
					|| ua.indexOf("windows vista") > -1)
				return "vista";
			return 'non';//不能识别的Win系统
		}
		var is_mac = (pf == "mac68k") || (pf == "macppc")
				|| (pf == "macintosh") || (pf == "macintel");
		if (is_mac)
			return "mac";
		var is_linux = (String(pf).indexOf("linux") > -1);
		if (is_linux)
			return "linux";
		var is_unix = (pf == "x11") && !is_win && !is_mac;
		if (is_unix)
			return "unix";
		return "other";
	};
	jy_foot_statistics.is_pc = function() {//是否是PC端判断
		var ua = navigator.userAgent.toLowerCase();
		var agents = [ "android", "iphone", "symbianos", "windows phone",
				"ipad", "ipod" ];
		var flag = true;
		for (var v = 0; v < agents.length; v++) {
			if (ua.indexOf(agents[v]) > 0) {
				flag = false;
				break;
			}
		}
		return flag;
	};
	jy_foot_statistics.run = function() {//运行统计
		if (document.getElementById("bottom_site_copyright")) {
			document.getElementById("bottom_site_copyright").style.display = '';
		}//显示版权信息区域
		var times = new Date().getTime(); //获取当前时间，配合随机数保证每一次访问小图片参数唯一
		var uid = '';
		if (typeof HEAD_USER == 'object' && HEAD_USER.uid > 0) {
			uid = HEAD_USER.uid + '|'; //如果存在UID，拼接UID字符串
		}
		var user_access = '';
		if (typeof jy_head_function == 'object') {
			common_bot_sub_domain = jy_channel;//获取二级域名（获取相应的频道/栏目标识）
			if (!jy_head_function.get_cookie('user_access')) {
				user_access = 1;
				var exp_time = new Date();
				exp_time.setDate(exp_time.getDate());
				exp_time.setHours(23);
				exp_time.setMinutes(59);
				exp_time.setSeconds(59);//设置COOKIE过期时间
				jy_head_function.set_cookie('user_access', user_access,
						exp_time);//写COOKIE：user_access
				//浏览器种类统计
				var brower_name = this.get_brower();
				var os = this.get_os();
				jy_head_function
						.click_pv('|jy_pc_browser_' + brower_name + '|');
				jy_head_function.click_pv('|jy_pc_browser_' + os + '_'
						+ brower_name + '|');
				//屏幕分辨率统计
				var aw = window.screen.availWidth;//屏幕可用工作区宽度
				var ch = document.documentElement.clientHeight;//屏幕可视区域高度
				var screen_total_aw = '|jy_pc_screen_aw_';//统计标识的KEY
				var screen_total_ch = '|jy_pc_screen_ch_';//统计标识的KEY
				var plat = this.is_pc() ? '' : '_m';//PC端为空，移动设备端拼个"_m"
				if (aw < 800) {
					screen_total_aw += '10' + plat + '|';
				} else if (aw < 850) {
					screen_total_aw += '20' + plat + '|';
				} else if (aw < 950) {
					screen_total_aw += '30' + plat + '|';
				} else if (aw < 1000) {
					screen_total_aw += '40' + plat + '|';
				} else if (aw < 1050) {
					screen_total_aw += '50' + plat + '|';
				} else if (aw < 1100) {
					screen_total_aw += '60' + plat + '|';
				} else if (aw < 1200) {
					screen_total_aw += '70' + plat + '|';
				} else if (aw < 1300) {
					screen_total_aw += '80' + plat + '|';
				} else if (aw < 1400) {
					screen_total_aw += '90' + plat + '|';
				} else if (aw < 1500) {
					screen_total_aw += '100' + plat + '|';
				} else if (aw < 1600) {
					screen_total_aw += '110' + plat + '|';
				} else if (aw < 1700) {
					screen_total_aw += '120' + plat + '|';
				} else if (aw < 1800) {
					screen_total_aw += '130' + plat + '|';
				} else if (aw < 1900) {
					screen_total_aw += '140' + plat + '|';
				} else if (aw < 2000) {
					screen_total_aw += '150' + plat + '|';
				} else if (aw < 2100) {
					screen_total_aw += '160' + plat + '|';
				} else if (aw < 2200) {
					screen_total_aw += '170' + plat + '|';
				} else {
					screen_total_aw += '180' + plat + '|';
				}
				if (ch < 400) {
					screen_total_ch += '0_400|' + plat + '';
				} else if (ch < 500) {
					screen_total_ch += '400_500' + plat + '|';
				} else if (ch < 600) {
					screen_total_ch += '500_600' + plat + '|';
				} else if (ch < 700) {
					screen_total_ch += '600_700' + plat + '|';
				} else if (ch < 800) {
					screen_total_ch += '700_800' + plat + '|';
				} else if (ch < 900) {
					screen_total_ch += '800_900' + plat + '|';
				} else if (ch < 1000) {
					screen_total_ch += '900_1000' + plat + '|';
				} else if (ch < 1200) {
					screen_total_ch += '1000_1200' + plat + '|';
				} else if (ch < 1300) {
					screen_total_ch += '1200_1300' + plat + '|';
				} else if (ch < 1400) {
					screen_total_ch += '1300_1400' + plat + '|';
				} else if (ch < 1500) {
					screen_total_ch += '1400_1500' + plat + '|';
				} else if (ch < 1600) {
					screen_total_ch += '1500_1600' + plat + '|';
				} else if (ch < 1700) {
					screen_total_ch += '1600_1700' + plat + '|';
				} else if (ch < 1800) {
					screen_total_ch += '1700_1800' + plat + '|';
				} else {
					screen_total_ch += '1800_0' + plat + '|';
				}
				jy_head_function.click_pv(screen_total_aw);
				jy_head_function.click_pv(screen_total_ch);
			}
		}
		if (common_bot_sub_domain != 'passport') {//passport使用的是https协议，排除，统计PV和UV
			document
					.write('<img src="#?||jy_site_all_pv|'
							+ common_bot_sub_domain + '|' + uid + '&t=' + times
							+ this.rnd_num(10000, 99999)
							+ '|" style="display:none" />');
		}
	}
	jy_foot_statistics.run();
</script>
<script type="text/javascript">
	var jy_translate = {};
	jy_translate.convert = function(txt, to_ft) {//转换文本
		if (txt == "" || txt == null) {
			return "";
		}
		if (to_ft == 'ft') {
			return this.to_fanti(txt);
		} else {
			return this.to_jianti(txt);
		}
	};
	jy_translate.loop_gogo = function() {//转换对象，使用递归，逐层剥到文本
		var jy_page_ft = arguments[0] ? arguments[0] : '';//简繁标记jt简体，ft繁体，没传递空字符串
		var fobj = arguments[1] ? arguments[1] : '';//转换对象
		if (typeof fobj == "object") {
			var html_o = fobj.childNodes;
		} else {
			var html_o = document.body.childNodes;
		}
		for (var i = 0; i < html_o.length; i++) {
			var OO = html_o.item(i);
			if ("||BR|HR|TEXTAREA|".indexOf("|" + OO.tagName + "|") > 0) {
				continue;
			}
			if (OO.title != "" && OO.title != null) {
				OO.title = this.convert(OO.title, jy_page_ft);
			}
			if (OO.alt != "" && OO.alt != null) {
				OO.alt = this.convert(OO.alt, jy_page_ft);
			}
			if (OO.tagName == "INPUT" && OO.value != "" && OO.type != "text"
					&& OO.type != "hidden") {
				OO.value = this.convert(OO.value, jy_page_ft);
			}
			if (OO.nodeType == 3) {
				OO.data = this.convert(OO.data, jy_page_ft);
			} else {
				this.loop_gogo(jy_page_ft, OO);
			}
		}
	};
	jy_translate.gogo = function() {//转换对象，使用递归，逐层剥到文本
		var jy_page_ft = arguments[0] ? arguments[0] : '';//简繁标记jt简体，ft繁体，没传递空字符串
		var auto = arguments[1] ? arguments[1] : 0;//自动转换
		var fobj = arguments[2] ? arguments[2] : '';//转换对象
		if (jy_page_ft == '') {
			jy_page_ft = jy_head_function.get_cookie('jy_page_ft');//如果有传递，就按传进来的转换，如果没有，就按cookie中记录的转换
		}
		if (jy_page_ft == 'ft' || jy_page_ft == 'jt') {
			if (parseInt(auto) == 0) {//如果是手动翻译并且是第一次执行写COOKIE操作，则修改COOKIE的转换状态
				jy_head_function.set_cookie('jy_page_ft', jy_page_ft, '7d');//不是自动转换就修改COOKIE中的状态
			}
		} else {
			return;
		}
		this.loop_gogo(jy_page_ft, fobj);
	};
	jy_translate.to_fanti = function(cc) {
		var str = '', ss = this.char_jianti(), tt = this.char_fanti();
		for (var i = 0; i < cc.length; i++) {
			if (cc.charCodeAt(i) > 10000 && ss.indexOf(cc.charAt(i)) != -1) {
				str += tt.charAt(ss.indexOf(cc.charAt(i)));
			} else {
				str += cc.charAt(i);
			}
		}
		return str;
	};
	jy_translate.to_jianti = function(cc) {
		var str = '', ss = this.char_jianti(), tt = this.char_fanti();
		for (var i = 0; i < cc.length; i++) {
			if (cc.charCodeAt(i) > 10000 && tt.indexOf(cc.charAt(i)) != -1) {
				str += ss.charAt(tt.indexOf(cc.charAt(i)));
			} else {
				str += cc.charAt(i);
			}
		}
		return str;
	};
	jy_translate.char_jianti = function() {
		return '啊阿埃挨哎唉哀皑癌蔼矮艾碍爱隘鞍氨安俺按暗岸胺案肮昂盎凹敖熬翱袄傲奥懊澳芭捌扒叭吧笆八疤巴拔跋靶把耙坝霸罢爸白柏百摆佰败拜稗斑班搬扳般颁板版扮拌伴瓣半办绊邦帮梆榜膀绑棒磅蚌镑傍谤苞胞包褒剥薄雹保堡饱宝抱报暴豹鲍爆杯碑悲卑北辈背贝钡倍狈备惫焙被奔苯本笨崩绷甭泵蹦迸逼鼻比鄙笔彼碧蓖蔽毕毙毖币庇痹闭敝弊必辟壁臂避陛鞭边编贬扁便变卞辨辩辫遍标彪膘表鳖憋别瘪彬斌濒滨宾摈兵冰柄丙秉饼炳病并玻菠播拨钵波博勃搏铂箔伯帛舶脖膊渤泊驳捕卜哺补埠不布步簿部怖擦猜裁材才财睬踩采彩菜蔡餐参蚕残惭惨灿苍舱仓沧藏操糙槽曹草厕策侧册测层蹭插叉茬茶查碴搽察岔差诧拆柴豺搀掺蝉馋谗缠铲产阐颤昌猖场尝常长偿肠厂敞畅唱倡超抄钞朝嘲潮巢吵炒车扯撤掣彻澈郴臣辰尘晨忱沉陈趁衬撑称城橙成呈乘程惩澄诚承逞骋秤吃痴持匙池迟弛驰耻齿侈尺赤翅斥炽充冲虫崇宠抽酬畴踌稠愁筹仇绸瞅丑臭初出橱厨躇锄雏滁除楚础储矗搐触处揣川穿椽传船喘串疮窗幢床闯创吹炊捶锤垂春椿醇唇淳纯蠢戳绰疵茨磁雌辞慈瓷词此刺赐次聪葱囱匆从丛凑粗醋簇促蹿篡窜摧崔催脆瘁粹淬翠村存寸磋撮搓措挫错搭达答瘩打大呆歹傣戴带殆代贷袋待逮怠耽担丹单郸掸胆旦氮但惮淡诞弹蛋当挡党荡档刀捣蹈倒岛祷导到稻悼道盗德得的蹬灯登等瞪凳邓堤低滴迪敌笛狄涤翟嫡抵底地蒂第帝弟递缔颠掂滇碘点典靛垫电佃甸店惦奠淀殿碉叼雕凋刁掉吊钓调跌爹碟蝶迭谍叠丁盯叮钉顶鼎锭定订丢东冬董懂动栋侗恫冻洞兜抖斗陡豆逗痘都督毒犊独读堵睹赌杜镀肚度渡妒端短锻段断缎堆兑队对墩吨蹲敦顿囤钝盾遁掇哆多夺垛躲朵跺舵剁惰堕蛾峨鹅俄额讹娥恶厄扼遏鄂饿恩而儿耳尔饵洱二贰发罚筏伐乏阀法珐藩帆番翻樊矾钒繁凡烦反返范贩犯饭泛坊芳方肪房防妨仿访纺放菲非啡飞肥匪诽吠肺废沸费芬酚吩氛分纷坟焚汾粉奋份忿愤粪丰封枫蜂峰锋风疯烽逢冯缝讽奉凤佛否夫敷肤孵扶拂辐幅氟符伏俘服浮涪福袱弗甫抚辅俯釜斧脯腑府腐赴副覆赋复傅付阜父腹负富讣附妇缚咐噶嘎该改概钙盖溉干甘杆柑竿肝赶感秆敢赣冈刚钢缸肛纲岗港杠篙皋高膏羔糕搞镐稿告哥歌搁戈鸽胳疙割革葛格蛤阁隔铬个各给根跟耕更庚羹埂耿梗工攻功恭龚供躬公宫弓巩汞拱贡共钩勾沟苟狗垢构购够辜菇咕箍估沽孤姑鼓古蛊骨谷股故顾固雇刮瓜剐寡挂褂乖拐怪棺关官冠观管馆罐惯灌贯光广逛瑰规圭硅归龟闺轨鬼诡癸桂柜跪贵刽辊滚棍锅郭国果裹过哈骸孩海氦亥害骇酣憨邯韩含涵寒函喊罕翰撼捍旱憾悍焊汗汉夯杭航壕嚎豪毫郝好号浩呵喝荷菏核禾和何合盒貉阂河涸赫褐鹤贺嘿黑痕狠很恨哼亨横衡恒轰哄烘虹鸿洪宏弘红喉侯猴吼厚候后呼乎忽瑚壶葫胡蝴狐糊湖弧虎唬护互沪户花哗华猾滑画划化话槐徊怀淮坏欢环桓还缓换患唤痪豢焕涣宦幻荒慌黄磺蝗簧皇凰惶煌晃幌恍谎灰挥辉徽恢蛔回毁悔慧卉惠晦贿秽会烩汇讳诲绘荤昏婚魂浑混豁活伙火获或惑霍货祸击圾基机畸稽积箕肌饥迹激讥鸡姬绩缉吉极棘辑籍集及急疾汲即嫉级挤几脊己蓟技冀季伎祭剂悸济寄寂计记既忌际妓继纪嘉枷夹佳家加荚颊贾甲钾假稼价架驾嫁歼监坚尖笺间煎兼肩艰奸缄茧检柬碱拣捡简俭剪减荐槛鉴践贱见键箭件健舰剑饯渐溅涧建僵姜将浆江疆蒋桨奖讲匠酱降蕉椒礁焦胶交郊浇骄娇嚼搅铰矫侥脚狡角饺缴绞剿教酵轿较叫窖揭接皆秸街阶截劫节桔杰捷睫竭洁结解姐戒藉芥界借介疥诫届巾筋斤金今津襟紧锦仅谨进靳晋禁近烬浸尽劲荆兢茎睛晶鲸京惊精粳经井警景颈静境敬镜径痉靖竟竞净炯窘揪究纠玖韭久灸九酒厩救旧臼舅咎就疚鞠拘狙疽居驹菊局咀矩举沮聚拒据巨具距踞锯俱句惧炬剧捐鹃娟倦眷卷绢撅攫抉掘倔爵觉决诀绝均菌钧军君峻俊竣浚郡骏喀咖卡咯开揩楷凯慨刊堪勘坎砍看康慷糠扛抗亢炕考拷烤靠坷苛柯棵磕颗科壳咳可渴克刻客课肯啃垦恳坑吭空恐孔控抠口扣寇枯哭窟苦酷库裤夸垮挎跨胯块筷侩快宽款匡筐狂框矿眶旷况亏盔岿窥葵奎魁傀馈愧溃坤昆捆困括扩廓阔垃拉喇蜡腊辣啦莱来赖蓝婪栏拦篮阑兰澜谰揽览懒缆烂滥琅榔狼廊郎朗浪捞劳牢老佬姥酪烙涝勒乐雷镭蕾磊累儡垒擂肋类泪棱楞冷厘梨犁黎篱狸离漓理李里鲤礼莉荔吏栗丽厉励砾历利僳例俐痢立粒沥隶力璃哩俩联莲连镰廉怜涟帘敛脸链恋炼练粮凉梁粱良两辆量晾亮谅撩聊僚疗燎寥辽潦了撂镣廖料列裂烈劣猎琳林磷霖临邻鳞淋凛赁吝拎玲菱零龄铃伶羚凌灵陵岭领另令溜琉榴硫馏留刘瘤流柳六龙聋咙笼窿隆垄拢陇楼娄搂篓漏陋芦卢颅庐炉掳卤虏鲁麓碌露路赂鹿潞禄录陆戮驴吕铝侣旅履屡缕虑氯律率滤绿峦挛孪滦卵乱掠略抡轮伦仑沦纶论萝螺罗逻锣箩骡裸落洛骆络妈麻玛码蚂马骂嘛吗埋买麦卖迈脉瞒馒蛮满蔓曼慢漫谩芒茫盲氓忙莽猫茅锚毛矛铆卯茂冒帽貌贸么玫枚梅酶霉煤没眉媒镁每美昧寐妹媚门闷们萌蒙檬盟锰猛梦孟眯醚靡糜迷谜弥米秘觅泌蜜密幂棉眠绵冕免勉娩缅面苗描瞄藐秒渺庙妙蔑灭民抿皿敏悯闽明螟鸣铭名命谬摸摹蘑模膜磨摩魔抹末莫墨默沫漠寞陌谋牟某拇牡亩姆母墓暮幕募慕木目睦牧穆拿哪呐钠那娜纳氖乃奶耐奈南男难囊挠脑恼闹淖呢馁内嫩能妮霓倪泥尼拟你匿腻逆溺蔫拈年碾撵捻念娘酿鸟尿捏聂孽啮镊镍涅您柠狞凝宁拧泞牛扭钮纽脓浓农弄奴努怒女暖虐疟挪懦糯诺哦欧鸥殴藕呕偶沤啪趴爬帕怕琶拍排牌徘湃派攀潘盘磐盼畔判叛乓庞旁耪胖抛咆刨炮袍跑泡呸胚培裴赔陪配佩沛喷盆砰抨烹澎彭蓬棚硼篷膨朋鹏捧碰坯砒霹批披劈琵毗啤脾疲皮匹痞僻屁譬篇偏片骗飘漂瓢票撇瞥拼频贫品聘乒坪苹萍平凭瓶评屏坡泼颇婆破魄迫粕剖扑铺仆莆葡菩蒲埔朴圃普浦谱曝瀑期欺栖戚妻七凄漆柒沏其棋奇歧畦崎脐齐旗祈祁骑起岂乞企启契砌器气迄弃汽泣讫掐洽牵扦钎铅千迁签仟谦乾黔钱钳前潜遣浅谴堑嵌欠歉枪呛腔羌墙蔷强抢橇锹敲悄桥瞧乔侨巧鞘撬翘峭俏窍切茄且怯窃钦侵亲秦琴勤芹擒禽寝沁青轻氢倾卿清擎晴氰情顷请庆琼穷秋丘邱球求囚酋泅趋区蛆曲躯屈驱渠取娶龋趣去圈颧权醛泉全痊拳犬券劝缺炔瘸却鹊榷确雀裙群然燃冉染瓤壤攘嚷让饶扰绕惹热壬仁人忍韧任认刃妊纫扔仍日戎茸蓉荣融熔溶容绒冗揉柔肉茹蠕儒孺如辱乳汝入褥软阮蕊瑞锐闰润若弱撒洒萨腮鳃塞赛三叁伞散桑嗓丧搔骚扫嫂瑟色涩森僧莎砂杀刹沙纱傻啥煞筛晒珊苫杉山删煽衫闪陕擅赡膳善汕扇缮墒伤商赏晌上尚裳梢捎稍烧芍勺韶少哨邵绍奢赊蛇舌舍赦摄射慑涉社设砷申呻伸身深娠绅神沈审婶甚肾慎渗声生甥牲升绳省盛剩胜圣师失狮施湿诗尸虱十石拾时什食蚀实识史矢使屎驶始式示士世柿事拭誓逝势是嗜噬适仕侍释饰氏市恃室视试收手首守寿授售受瘦兽蔬枢梳殊抒输叔舒淑疏书赎孰熟薯暑曙署蜀黍鼠属术述树束戍竖墅庶数漱恕刷耍摔衰甩帅栓拴霜双爽谁水睡税吮瞬顺舜说硕朔烁斯撕嘶思私司丝死肆寺嗣四伺似饲巳松耸怂颂送宋讼诵搜艘擞嗽苏酥俗素速粟塑溯宿诉肃酸蒜算虽隋随绥髓碎岁穗遂隧祟孙损笋蓑梭唆缩琐索锁所塌他它她塔獭挞蹋踏胎苔抬台泰酞太态汰坍摊贪瘫滩坛檀痰潭谭谈坦毯袒碳探叹炭汤塘搪堂棠膛唐糖倘躺淌趟烫掏涛滔绦萄桃逃淘陶讨套特藤腾疼誊梯剔踢锑提题蹄啼体替嚏惕涕剃屉天添填田甜恬舔腆挑条迢眺跳贴铁帖厅听烃汀廷停亭庭挺艇通桐酮瞳同铜彤童桶捅筒统痛偷投头透凸秃突图徒途涂屠土吐兔湍团推颓腿蜕褪退吞屯臀拖托脱鸵陀驮驼椭妥拓唾挖哇蛙洼娃瓦袜歪外豌弯湾玩顽丸烷完碗挽晚皖惋宛婉万腕汪王亡枉网往旺望忘妄威巍微危韦违桅围唯惟为潍维苇萎委伟伪尾纬未蔚味畏胃喂魏位渭谓尉慰卫瘟温蚊文闻纹吻稳紊问嗡翁瓮挝蜗涡窝我斡卧握沃巫呜钨乌污诬屋无芜梧吾吴毋武五捂午舞伍侮坞戊雾晤物勿务悟误昔熙析西硒矽晰嘻吸锡牺稀息希悉膝夕惜熄烯溪汐犀檄袭席习媳喜铣洗系隙戏细瞎虾匣霞辖暇峡侠狭下厦夏吓掀锨先仙鲜纤咸贤衔舷闲涎弦嫌显险现献县腺馅羡宪陷限线相厢镶香箱襄湘乡翔祥详想响享项巷橡像向象萧硝霄削哮嚣销消宵淆晓小孝校肖啸笑效楔些歇蝎鞋协挟携邪斜胁谐写械卸蟹懈泄泻谢屑薪芯锌欣辛新忻心信衅星腥猩惺兴刑型形邢行醒幸杏性姓兄凶胸匈汹雄熊休修羞朽嗅锈秀袖绣墟戌需虚嘘须徐许蓄酗叙旭序畜恤絮婿绪续轩喧宣悬旋玄选癣眩绚靴薛学穴雪血勋熏循旬询寻驯巡殉汛训讯逊迅压押鸦鸭呀丫芽牙蚜崖衙涯雅哑亚讶焉咽阉烟淹盐严研蜒岩延言颜阎炎沿奄掩眼衍演艳堰燕厌砚雁唁彦焰宴谚验殃央鸯秧杨扬佯疡羊洋阳氧仰痒养样漾邀腰妖瑶摇尧遥窑谣姚咬舀药要耀椰噎耶爷野冶也页掖业叶曳腋夜液一壹医揖铱依伊衣颐夷遗移仪胰疑沂宜姨彝椅蚁倚已乙矣以艺抑易邑屹亿役臆逸肄疫亦裔意毅忆义益溢诣议谊译异翼翌绎茵荫因殷音阴姻吟银淫寅饮尹引隐印英樱婴鹰应缨莹萤营荧蝇迎赢盈影颖硬映哟拥佣臃痈庸雍踊蛹咏泳涌永恿勇用幽优悠忧尤由邮铀犹油游酉有友右佑釉诱又幼迂淤于盂榆虞愚舆余俞逾鱼愉渝渔隅予娱雨与屿禹宇语羽玉域芋郁吁遇喻峪御愈欲狱育誉浴寓裕预豫驭鸳渊冤元垣袁原援辕园员圆猿源缘远苑愿怨院曰约越跃钥岳粤月悦阅耘云郧匀陨允运蕴酝晕韵孕匝砸杂栽哉灾宰载再在咱攒暂赞赃脏葬遭糟凿藻枣早澡蚤躁噪造皂灶燥责择则泽贼怎增憎曾赠扎喳渣札轧铡闸眨栅榨咋乍炸诈摘斋宅窄债寨瞻毡詹粘沾盏斩辗崭展蘸栈占战站湛绽樟章彰漳张掌涨杖丈帐账仗胀瘴障招昭找沼赵照罩兆肇召遮折哲蛰辙者锗蔗这浙珍斟真甄砧臻贞针侦枕疹诊震振镇阵蒸挣睁征狰争怔整拯正政帧症郑证芝枝支吱蜘知肢脂汁之织职直植殖执值侄址指止趾只旨纸志挚掷至致置帜峙制智秩稚质炙痔滞治窒中盅忠钟衷终种肿重仲众舟周州洲诌粥轴肘帚咒皱宙昼骤珠株蛛朱猪诸诛逐竹烛煮拄瞩嘱主著柱助蛀贮铸筑住注祝驻抓爪拽专砖转撰赚篆桩庄装妆撞壮状椎锥追赘坠缀谆准捉拙卓桌琢茁酌啄着灼浊兹咨资姿滋淄孜紫仔籽滓子自渍字鬃棕踪宗综总纵邹走奏揍租足卒族祖诅阻组钻纂嘴醉最罪尊遵昨左佐柞做作坐座婵';
	};
	jy_translate.char_fanti = function() {
		return '啊阿埃挨哎唉哀皚癌藹矮艾礙愛隘鞍氨安俺按暗岸胺案肮昂盎凹敖熬翺襖傲奧懊澳芭捌扒叭吧笆八疤巴拔跋靶把耙壩霸罷爸白柏百擺佰敗拜稗斑班搬扳般頒板版扮拌伴瓣半辦絆邦幫梆榜膀綁棒磅蚌鎊傍謗苞胞包褒剝薄雹保堡飽寶抱報暴豹鮑爆杯碑悲卑北輩背貝鋇倍狽備憊焙被奔苯本笨崩繃甭泵蹦迸逼鼻比鄙筆彼碧蓖蔽畢斃毖幣庇痹閉敝弊必辟壁臂避陛鞭邊編貶扁便變卞辨辯辮遍標彪膘表鼈憋別癟彬斌瀕濱賓擯兵冰柄丙秉餅炳病並玻菠播撥缽波博勃搏鉑箔伯帛舶脖膊渤泊駁捕蔔哺補埠不布步簿部怖擦猜裁材才財睬踩采彩菜蔡餐參蠶殘慚慘燦蒼艙倉滄藏操糙槽曹草廁策側冊測層蹭插叉茬茶查碴搽察岔差詫拆柴豺攙摻蟬饞讒纏鏟産闡顫昌猖場嘗常長償腸廠敞暢唱倡超抄鈔朝嘲潮巢吵炒車扯撤掣徹澈郴臣辰塵晨忱沈陳趁襯撐稱城橙成呈乘程懲澄誠承逞騁秤吃癡持匙池遲弛馳恥齒侈尺赤翅斥熾充沖蟲崇寵抽酬疇躊稠愁籌仇綢瞅醜臭初出櫥廚躇鋤雛滁除楚礎儲矗搐觸處揣川穿椽傳船喘串瘡窗幢床闖創吹炊捶錘垂春椿醇唇淳純蠢戳綽疵茨磁雌辭慈瓷詞此刺賜次聰蔥囪匆從叢湊粗醋簇促躥篡竄摧崔催脆瘁粹淬翠村存寸磋撮搓措挫錯搭達答瘩打大呆歹傣戴帶殆代貸袋待逮怠耽擔丹單鄲撣膽旦氮但憚淡誕彈蛋當擋黨蕩檔刀搗蹈倒島禱導到稻悼道盜德得的蹬燈登等瞪凳鄧堤低滴迪敵笛狄滌翟嫡抵底地蒂第帝弟遞締顛掂滇碘點典靛墊電佃甸店惦奠澱殿碉叼雕凋刁掉吊釣調跌爹碟蝶叠諜疊丁盯叮釘頂鼎錠定訂丟東冬董懂動棟侗恫凍洞兜抖鬥陡豆逗痘都督毒犢獨讀堵睹賭杜鍍肚度渡妒端短鍛段斷緞堆兌隊對墩噸蹲敦頓囤鈍盾遁掇哆多奪垛躲朵跺舵剁惰墮蛾峨鵝俄額訛娥惡厄扼遏鄂餓恩而兒耳爾餌洱二貳發罰筏伐乏閥法琺藩帆番翻樊礬釩繁凡煩反返範販犯飯泛坊芳方肪房防妨仿訪紡放菲非啡飛肥匪誹吠肺廢沸費芬酚吩氛分紛墳焚汾粉奮份忿憤糞豐封楓蜂峰鋒風瘋烽逢馮縫諷奉鳳佛否夫敷膚孵扶拂輻幅氟符伏俘服浮涪福袱弗甫撫輔俯釜斧脯腑府腐赴副覆賦複傅付阜父腹負富訃附婦縛咐噶嘎該改概鈣蓋溉幹甘杆柑竿肝趕感稈敢贛岡剛鋼缸肛綱崗港杠篙臯高膏羔糕搞鎬稿告哥歌擱戈鴿胳疙割革葛格蛤閣隔鉻個各給根跟耕更庚羹埂耿梗工攻功恭龔供躬公宮弓鞏汞拱貢共鈎勾溝苟狗垢構購夠辜菇咕箍估沽孤姑鼓古蠱骨谷股故顧固雇刮瓜剮寡挂褂乖拐怪棺關官冠觀管館罐慣灌貫光廣逛瑰規圭矽歸龜閨軌鬼詭癸桂櫃跪貴劊輥滾棍鍋郭國果裹過哈骸孩海氦亥害駭酣憨邯韓含涵寒函喊罕翰撼捍旱憾悍焊汗漢夯杭航壕嚎豪毫郝好號浩呵喝荷菏核禾和何合盒貉閡河涸赫褐鶴賀嘿黑痕很很恨哼亨橫衡恒轟哄烘虹鴻洪宏弘紅喉侯猴吼厚候後呼乎忽瑚壺葫胡蝴狐糊湖弧虎唬護互滬戶花嘩華猾滑畫劃化話槐徊懷淮壞歡環桓還緩換患喚瘓豢煥渙宦幻荒慌黃磺蝗簧皇凰惶煌晃幌恍謊灰揮輝徽恢蛔回毀悔慧卉惠晦賄穢會燴彙諱誨繪葷昏婚魂渾混豁活夥火獲或惑霍貨禍擊圾基機畸稽積箕肌饑迹激譏雞姬績緝吉極棘輯籍集及急疾汲即嫉級擠幾脊己薊技冀季伎祭劑悸濟寄寂計記既忌際妓繼紀嘉枷夾佳家加莢頰賈甲鉀假稼價架駕嫁殲監堅尖箋間煎兼肩艱奸緘繭檢柬鹼揀撿簡儉剪減薦檻鑒踐賤見鍵箭件健艦劍餞漸濺澗建僵姜將漿江疆蔣槳獎講匠醬降蕉椒礁焦膠交郊澆驕嬌嚼攪鉸矯僥腳狡角餃繳絞剿教酵轎較叫窖揭接皆稭街階截劫節桔傑捷睫竭潔結解姐戒藉芥界借介疥誡屆巾筋斤金今津襟緊錦僅謹進靳晉禁近燼浸盡勁荊兢莖睛晶鯨京驚精粳經井警景頸靜境敬鏡徑痙靖竟競淨炯窘揪究糾玖韭久灸九酒廄救舊臼舅咎就疚鞠拘狙疽居駒菊局咀矩舉沮聚拒據巨具距踞鋸俱句懼炬劇捐鵑娟倦眷卷絹撅攫抉掘倔爵覺決訣絕均菌鈞軍君峻俊竣浚郡駿喀咖卡咯開揩楷凱慨刊堪勘坎砍看康慷糠扛抗亢炕考拷烤靠坷苛柯棵磕顆科殼咳可渴克刻客課肯啃墾懇坑吭空恐孔控摳口扣寇枯哭窟苦酷庫褲誇垮挎跨胯塊筷儈快寬款匡筐狂框礦眶曠況虧盔巋窺葵奎魁傀饋愧潰坤昆捆困括擴廓闊垃拉喇蠟臘辣啦萊來賴藍婪欄攔籃闌蘭瀾讕攬覽懶纜爛濫琅榔狼廊郎朗浪撈勞牢老佬姥酪烙澇勒樂雷鐳蕾磊累儡壘擂肋類淚棱楞冷厘梨犁黎籬狸離漓理李裏鯉禮莉荔吏栗麗厲勵礫曆利傈例俐痢立粒瀝隸力璃哩倆聯蓮連鐮廉憐漣簾斂臉鏈戀煉練糧涼梁粱良兩輛量晾亮諒撩聊僚療燎寥遼潦了撂鐐廖料列裂烈劣獵琳林磷霖臨鄰鱗淋凜賃吝拎玲菱零齡鈴伶羚淩靈陵嶺領另令溜琉榴硫餾留劉瘤流柳六龍聾嚨籠窿隆壟攏隴樓婁摟簍漏陋蘆盧顱廬爐擄鹵虜魯麓碌露路賂鹿潞祿錄陸戮驢呂鋁侶旅履屢縷慮氯律率濾綠巒攣孿灤卵亂掠略掄輪倫侖淪綸論蘿螺羅邏鑼籮騾裸落洛駱絡媽麻瑪碼螞馬罵嘛嗎埋買麥賣邁脈瞞饅蠻滿蔓曼慢漫謾芒茫盲氓忙莽貓茅錨毛矛鉚卯茂冒帽貌貿麽玫枚梅酶黴煤沒眉媒鎂每美昧寐妹媚門悶們萌蒙檬盟錳猛夢孟眯醚靡糜迷謎彌米秘覓泌蜜密冪棉眠綿冕免勉娩緬面苗描瞄藐秒渺廟妙蔑滅民抿皿敏憫閩明螟鳴銘名命謬摸摹蘑模膜磨摩魔抹末莫墨默沫漠寞陌謀牟某拇牡畝姆母墓暮幕募慕木目睦牧穆拿哪呐鈉那娜納氖乃奶耐奈南男難囊撓腦惱鬧淖呢餒內嫩能妮霓倪泥尼擬你匿膩逆溺蔫拈年碾攆撚念娘釀鳥尿捏聶孽齧鑷鎳涅您檸獰凝甯擰濘牛扭鈕紐膿濃農弄奴努怒女暖虐瘧挪懦糯諾哦歐鷗毆藕嘔偶漚啪趴爬帕怕琶拍排牌徘湃派攀潘盤磐盼畔判叛乓龐旁耪胖抛咆刨炮袍跑泡呸胚培裴賠陪配佩沛噴盆砰抨烹澎彭蓬棚硼篷膨朋鵬捧碰坯砒霹批披劈琵毗啤脾疲皮匹痞僻屁譬篇偏片騙飄漂瓢票撇瞥拼頻貧品聘乒坪蘋萍平憑瓶評屏坡潑頗婆破魄迫粕剖撲鋪仆莆葡菩蒲埔樸圃普浦譜曝瀑期欺棲戚妻七淒漆柒沏其棋奇歧畦崎臍齊旗祈祁騎起豈乞企啓契砌器氣迄棄汽泣訖掐洽牽扡釺鉛千遷簽仟謙乾黔錢鉗前潛遣淺譴塹嵌欠歉槍嗆腔羌牆薔強搶橇鍬敲悄橋瞧喬僑巧鞘撬翹峭俏竅切茄且怯竊欽侵親秦琴勤芹擒禽寢沁青輕氫傾卿清擎晴氰情頃請慶瓊窮秋丘邱球求囚酋泅趨區蛆曲軀屈驅渠取娶齲趣去圈顴權醛泉全痊拳犬券勸缺炔瘸卻鵲榷確雀裙群然燃冉染瓤壤攘嚷讓饒擾繞惹熱壬仁人忍韌任認刃妊紉扔仍日戎茸蓉榮融熔溶容絨冗揉柔肉茹蠕儒孺如辱乳汝入褥軟阮蕊瑞銳閏潤若弱撒灑薩腮鰓塞賽三三傘散桑嗓喪搔騷掃嫂瑟色澀森僧莎砂殺刹沙紗傻啥煞篩曬珊苫杉山刪煽衫閃陝擅贍膳善汕扇繕墒傷商賞晌上尚裳梢捎稍燒芍勺韶少哨邵紹奢賒蛇舌舍赦攝射懾涉社設砷申呻伸身深娠紳神沈審嬸甚腎慎滲聲生甥牲升繩省盛剩勝聖師失獅施濕詩屍虱十石拾時什食蝕實識史矢使屎駛始式示士世柿事拭誓逝勢是嗜噬適仕侍釋飾氏市恃室視試收手首守壽授售受瘦獸蔬樞梳殊抒輸叔舒淑疏書贖孰熟薯暑曙署蜀黍鼠屬術述樹束戍豎墅庶數漱恕刷耍摔衰甩帥栓拴霜雙爽誰水睡稅吮瞬順舜說碩朔爍斯撕嘶思私司絲死肆寺嗣四伺似飼巳松聳慫頌送宋訟誦搜艘擻嗽蘇酥俗素速僳塑溯宿訴肅酸蒜算雖隋隨綏髓碎歲穗遂隧祟孫損筍蓑梭唆縮瑣索鎖所塌他它她塔獺撻蹋踏胎苔擡台泰酞太態汰坍攤貪癱灘壇檀痰潭譚談坦毯袒碳探歎炭湯塘搪堂棠膛唐糖倘躺淌趟燙掏濤滔縧萄桃逃淘陶討套特藤騰疼謄梯剔踢銻提題蹄啼體替嚏惕涕剃屜天添填田甜恬舔腆挑條迢眺跳貼鐵帖廳聽烴汀廷停亭庭挺艇通桐酮瞳同銅彤童桶捅筒統痛偷投頭透凸禿突圖徒途塗屠土吐兔湍團推頹腿蛻褪退吞屯臀拖托脫鴕陀馱駝橢妥拓唾挖哇蛙窪娃瓦襪歪外豌彎灣玩頑丸烷完碗挽晚皖惋宛婉萬腕汪王亡枉網往旺望忘妄威巍微危韋違桅圍唯惟爲濰維葦萎委偉僞尾緯未蔚味畏胃餵魏位渭謂尉慰衛瘟溫蚊文聞紋吻穩紊問嗡翁甕撾蝸渦窩我斡臥握沃巫嗚鎢烏汙誣屋無蕪梧吾吳毋武五捂午舞伍侮塢戊霧晤物勿務悟誤昔熙析西硒矽晰嘻吸錫犧稀息希悉膝夕惜熄烯溪汐犀檄襲席習媳喜銑洗系隙戲細瞎蝦匣霞轄暇峽俠狹下廈夏嚇掀鍁先仙鮮纖鹹賢銜舷閑涎弦嫌顯險現獻縣腺餡羨憲陷限線相廂鑲香箱襄湘鄉翔祥詳想響享項巷橡像向象蕭硝霄削哮囂銷消宵淆曉小孝校肖嘯笑效楔些歇蠍鞋協挾攜邪斜脅諧寫械卸蟹懈泄瀉謝屑薪芯鋅欣辛新忻心信釁星腥猩惺興刑型形邢行醒幸杏性姓兄凶胸匈洶雄熊休修羞朽嗅鏽秀袖繡墟戌需虛噓須徐許蓄酗敘旭序畜恤絮婿緒續軒喧宣懸旋玄選癬眩絢靴薛學穴雪血勳熏循旬詢尋馴巡殉汛訓訊遜迅壓押鴉鴨呀丫芽牙蚜崖衙涯雅啞亞訝焉咽閹煙淹鹽嚴研蜒岩延言顔閻炎沿奄掩眼衍演豔堰燕厭硯雁唁彥焰宴諺驗殃央鴦秧楊揚佯瘍羊洋陽氧仰癢養樣漾邀腰妖瑤搖堯遙窯謠姚咬舀藥要耀椰噎耶爺野冶也頁掖業葉曳腋夜液一壹醫揖銥依伊衣頤夷遺移儀胰疑沂宜姨彜椅蟻倚已乙矣以藝抑易邑屹億役臆逸肄疫亦裔意毅憶義益溢詣議誼譯異翼翌繹茵蔭因殷音陰姻吟銀淫寅飲尹引隱印英櫻嬰鷹應纓瑩螢營熒蠅迎贏盈影穎硬映喲擁傭臃癰庸雍踴蛹詠泳湧永恿勇用幽優悠憂尤由郵鈾猶油遊酉有友右佑釉誘又幼迂淤于盂榆虞愚輿余俞逾魚愉渝漁隅予娛雨與嶼禹宇語羽玉域芋郁籲遇喻峪禦愈欲獄育譽浴寓裕預豫馭鴛淵冤元垣袁原援轅園員圓猿源緣遠苑願怨院曰約越躍鑰嶽粵月悅閱耘雲鄖勻隕允運蘊醞暈韻孕匝砸雜栽哉災宰載再在咱攢暫贊贓髒葬遭糟鑿藻棗早澡蚤躁噪造皂竈燥責擇則澤賊怎增憎曾贈紮喳渣劄軋鍘閘眨柵榨咋乍炸詐摘齋宅窄債寨瞻氈詹粘沾盞斬輾嶄展蘸棧占戰站湛綻樟章彰漳張掌漲杖丈帳賬仗脹瘴障招昭找沼趙照罩兆肇召遮折哲蟄轍者鍺蔗這浙珍斟真甄砧臻貞針偵枕疹診震振鎮陣蒸掙睜征猙爭怔整拯正政幀症鄭證芝枝支吱蜘知肢脂汁之織職直植殖執值侄址指止趾只旨紙志摯擲至致置幟峙制智秩稚質炙痔滯治窒中盅忠鍾衷終種腫重仲衆舟周州洲謅粥軸肘帚咒皺宙晝驟珠株蛛朱豬諸誅逐竹燭煮拄矚囑主著柱助蛀貯鑄築住注祝駐抓爪拽專磚轉撰賺篆樁莊裝妝撞壯狀椎錐追贅墜綴諄准捉拙卓桌琢茁酌啄著灼濁茲咨資姿滋淄孜紫仔籽滓子自漬字鬃棕蹤宗綜總縱鄒走奏揍租足卒族祖詛阻組鑽纂嘴醉最罪尊遵昨左佐柞做作坐座嬋';
	};
	//自动转换繁体
	if (typeof jy_head_function == 'object') {
		var user_cur_loc = '';//当前会员所在地
		if (HEAD_USER.uid > 0) {
			user_cur_loc = HEAD_USER.work_location;//登录获取其设置的工作所在地
		} else {
			user_cur_loc = jy_head_function.get_cookie('ip_loc');//未登录，获取通过IP得到的地区
			if (user_cur_loc == '')
				user_cur_loc = 0;
		}
		var jy_page_ft = jy_head_function.get_cookie('jy_page_ft');//获取页面字体状态，jt简体，ft繁体
		if (jy_page_ft == 'ft') {//如果设置的是繁体，则默认都会一直自动翻译全页面
			document.onreadystatechange = function() {
				if (document.readyState == "complete") {
					jy_translate.gogo('ft', 1);
					jy_head_function.click_pv('|translate_ft_pv|'
							+ user_cur_loc + '|' + HEAD_USER.uid + '|');
				}
			}
			//	}else if(jy_page_ft != 'jt'){
			//		if(user_cur_loc == '71' || user_cur_loc == '81' || user_cur_loc == '82'){//如果是港澳台地区，默认自动切换到繁体
			//			jy_page_ft = 'ft';
			//			jy_head_function.set_cookie('jy_page_ft', jy_page_ft, '7d');//不是自动转换就修改COOKIE中的状态
			//		}
		}
	}
</script>
<style type="text/css">
html, body {
	*overflow-x: hidden
}

#finance_redBox {
	position: relative;
}
/*.finance_redBox_img{display:block;width:154px;height:131px;background:url(#);_background:url(#);}*/
</style>
<div id="jy_translate_tpl" style="display: none"></div>
<div id="jy_mobile_tpl" style="display: none">
	<a id="jy_mobile_authentication" class="jy_mobile_authentication"
		onmousedown="javascript:jy_head_function.click_pv('|jy_mobile_authentication|');"
		href="#" target="_blank"></a>
</div>
<div id="jy_yuehuiba_tpl" style="display: none">
	<a id="yuehuiba_url"
		onmousedown="javascript:jy_head_function.click_pv('|date_pc_cfl_click|'+HEAD_USER.uid);"
		href="#" target="_blank"></a>
</div>
<div id="jr_finance_redBox" style="display: none">
	<a href="#"
		onmousedown="javascript:jy_head_function.click_pv('|jr_jrfc_click|');"
		target="_blank" class="finance_redBox_img"></a>
</div>
<script type="text/javascript">
	/*==========JS业务部分【以上的HTML和CSS均为业务部分代码】==========*/
	function foot_real_name_reload() {//实名制成功后回调方法
		jy_head_function.del_real_name_cookie();
		location.reload(true);//重新请求刷新页面
	}
	if (typeof jy_head_function == "object"
			&& typeof jy_pos_float_layer == "object") {
		if (HEAD_USER.uid > 0 && typeof jy_foot_cfl_hide == 'undefined') {//会员登录并且没有设置通过用浮层隐藏，则按条件显示浮层
		//手机认证
			var not_allow_arr = new Array;//不显示浮层的路径配置
			not_allow_arr[0] = 'www.' + jy_top_domain + '/club/yangnian.php';
			not_allow_arr[1] = 'www.' + jy_top_domain + '/parties/app/yfsp/';
			not_allow_arr[2] = 'www.' + jy_top_domain
					+ '/parties/app/guesslike/';
			not_allow_arr[3] = 'www.' + jy_top_domain + '/wenda/';
			not_allow_arr[4] = 'www.' + jy_top_domain
					+ '/usercp/service/bmsg_tg2.php';
			not_allow_arr[5] = 'www.' + jy_top_domain
					+ '/usercp/service/bmsg.php';
			not_allow_arr[6] = 'case.' + jy_top_domain + '/2012/llkan/';
			not_allow_arr[7] = 'case.' + jy_top_domain + '/paoxue/';
			not_allow_arr[8] = 'case.' + jy_top_domain + '/face/';
			not_allow_arr[9] = 'www.' + jy_top_domain
					+ '/parties/app/lolita_wish/';
			not_allow_arr[10] = 'www.' + jy_top_domain + '/guard/';
			not_allow_arr[11] = 'map.' + jy_top_domain + '/result.php';
			not_allow_arr[12] = 'www.' + jy_top_domain + '/parties/app/lctuan/';
			not_allow_arr[13] = 'www.' + jy_top_domain
					+ '/parties/app/hongbao/';
			not_allow_arr[14] = 'www.' + jy_top_domain
					+ '/parties/app/peach_garden/';
			not_allow_arr[15] = 'www.' + jy_top_domain
					+ '/parties/app/contact_cart/';
			not_allow_arr[16] = 'www.' + jy_top_domain + '/usercp/yueliao/';
			var show_float_layer = new Array;//浮层标记
			var jy_bottom_cur_url = window.location.href;//获取当前URL
			//手机验证浮层处理
			if (HEAD_USER.mobile != '1') {
				show_float_layer['mobile'] = 1;//默认显示，手机验证跟随浮层
				if (jy_channel == 'msg') {
					jy_pos_float_layer.add('jy_mobile_tpl', {
						pos : "RT",
						x : 40,
						y : 80,
						w : 102,
						h : 147,
						display : true,
						page_width : 1000
					});
				} else {
					for ( var no_allow_num in not_allow_arr) {
						if (jy_bottom_cur_url
								.indexOf(not_allow_arr[no_allow_num]) != -1) {//找到限制条件
							show_float_layer['mobile'] = 0;//不显示手机验证浮层
							break;
						}
					}
					if (jy_channel == 'date') {
						show_float_layer['mobile'] = 0;//不显示手机验证浮层
					}
					if (show_float_layer['mobile']) {
						jy_pos_float_layer.add('jy_mobile_tpl', {
							pos : "RT",
							x : 10,
							y : 80,
							w : 102,
							h : 147,
							display : true,
							page_width : 1000
						});
					}
				}
				//强制拦截手机验证
				if (jy_head_function.get_cookie("nov_jym")
						&& (jy_channel == 'case')) {
					document.domain = jy_top_domain;
					var check_mobile_layer_close = '';
					if (typeof jy_skip_real_name != "undefined") {
						check_mobile_layer_close = "has_close=1";//变量存在则弹层增加关闭按钮
					}
					jy_head_function.lbg_tpl = '<iframe src="http://www.'
							+ jy_top_domain
							+ '/usercp/validateemail/gmcglj_checkmobile.php?domain_type=1&tj_key=jy_smz&htd=foot_real_name_reload&'
							+ check_mobile_layer_close
							+ '" id="ifr_tpl" width="450" height="300" scrolling="no" frameborder="0"></iframe>';
					jy_head_function.lbg_show({
						lbg_z_index : '99999'
					});
					jy_head_function.click_pv('|jy_foot_msg_layer|'
							+ jy_channel + '|' + HEAD_USER.uid);
				}
			}
			//约会吧全站浮层	
			if (HEAD_USER.mobile == '1' && HEAD_USER.age < 40) {
				show_float_layer['yuehuiba'] = 1;//默认显示约会吧跟随浮层
				if (jy_channel != 'game' && jy_channel != 'date') {
					for ( var no_allow_num in not_allow_arr) {
						if (jy_bottom_cur_url
								.indexOf(not_allow_arr[no_allow_num]) != -1) {//找到限制条件
							show_float_layer['yuehuiba'] = 0;//不显示约会吧浮层
							break;
						}
					}
					if (show_float_layer['yuehuiba']) {
						var yhb_float_id = jy_pos_float_layer.add(
								'jy_yuehuiba_tpl', {
									pos : "RT",
									x : 10,
									y : 50,
									w : 120,
									h : 240,
									display : false,
									close_btn : 1,
									page_width : 1000
								});
						document.getElementById('yuehuiba_url').innerHTML = '<img src="'+head_logo_config['layer_right1']+'" class="fixPNG" />';
						document.getElementById('yuehuiba_url').href = head_logo_config['layer_right1_url'];
						if (yhb_float_id) {
							jy_pos_float_layer.show(yhb_float_id);//添加浮层后不现实，处理完之后，显示浮层
						}
					}
				}
			}
			//金融全站浮层
			if (jy_head_function.get_cookie("jr_ident") != 1) {
				show_float_layer['jrbao'] = 1;//默认显示，金融跟随浮层
				if (jy_channel != 'game' && jy_channel != 'help'
						&& jy_channel != 'date' && jy_channel != 'party'
						&& jy_channel != 'qinggan') {
					for ( var no_allow_num in not_allow_arr) {
						if (jy_bottom_cur_url
								.indexOf(not_allow_arr[no_allow_num]) != -1) {//找到限制条件
							show_float_layer['jrbao'] = 0;//不显示手机验证浮层
							break;
						}
					}
					if (show_float_layer['jrbao']) {
						/*jy_pos_float_layer.add('jr_finance_redBox',{pos:"LT",x:10,y:84,w:154,h:131,display:true,close_btn:1,close_css:'right:8px;top:3px;width:14px;height:14px;background:url(#) no-repeat 4px 3px',page_width:1000});*/
					}
				}
			}
		}
		//繁简转换
		jy_pos_float_layer.add('jy_translate_tpl', {
			pos : "RT",
			x : 0,
			y : 260,
			w : 23,
			h : 83,
			display : true,
			r : 1
		});
		var jy_translate_box = document.getElementById('jy_translate_box');
		jy_translate_box.onmouseover = function() {
			jy_translate_box.style.right = '0px';
		};
		jy_translate_box.onmouseout = function() {
			jy_translate_box.style.right = '-40px';
		};
		if (typeof DD_belatedPNG == "object") {
			DD_belatedPNG.fix('.jy_translate_box, .jy_mobile_authentication');
		}
	}

	function foot_record_ajax(jy_ubt_user_id, refer_site) {//异步请求发送
	//设置采样条件
		if (typeof jy_head_function != 'undefined') {//记录
			var jy_ubt_user_tmp = jy_ubt_user_id.substr(-1, 1);//取ID的最后一位
			if (jy_ubt_user_tmp == '0') {//取万分之一的样本
				jy_head_function.set_cookie('jy_ubt_chl', jy_channel + '|'
						+ time);//将当前频道和当前时间写入COOKIE
				jy_head_function.click_pv('|1032727_0|' + jy_ubt_user_id);//ajax请求统计
			}
			//		jQuery.ajax({
			//			type : "GET",
			//			url : "http://" + mydomain + "/dynmatch/ajax/ubt.php",
			//			dataType : "jsonp",
			//			jsonpCallback : "jy_jsonp",
			//			data : 'c='+jy_channel+'&u='+HEAD_USER.uid+'&url='+refer_site+'|'+encodeURIComponent(window.location.href),
			//			success : function(ret){}
			//		});
		}
	}
	function record_infos(refer_site) {//异步调用
		if (typeof jy_head_function != 'undefined') {//记录
			/*
			if(typeof jQuery == 'undefined' || parseFloat(jQuery.fn.jquery) < 1.4){
			jy_head_function.load_script('#', function(){
			foot_record_ajax(refer_site);
			});*/
		} else {
			foot_record_ajax(refer_site);
		}
	}
	/*}*/

	var jy_foot_se = {};//来路分析
	jy_foot_se.get_referer = function() {//获取来路地址
		var ref = '';
		if (typeof jy_head_function == "object" && document.referrer.length > 0) {
			ref = document.referrer;
			var ref_url = ref.replace('http://', '').replace('https://', '');//过滤掉http://和https://
			var ref_domain_name = ref_url.split('/')[0];//获取来路域名
			if (ref_domain_name.indexOf('jiayuan.com') != -1
					|| ref_domain_name.indexOf('miuu.' + 'cn') != -1
					|| ref_domain_name.indexOf('izhenxin.com') != -1) {
				ref = jy_head_function.get_cookie('jy_refer');//如果有来路，来路是站内，就读取cookie，有cookie说明是站外推广来的获取到来路URL，否则是本站跳转忽略来路
			}
		}
		return ref;
	};
	jy_foot_se.get_identification = function() {//获取唯一标识
		return 'jy_ubt_' + new Date().getTime();
		;
	}
	jy_foot_se.record = function() {//记录数据
		if (typeof jy_head_function == "object") {
			var ref_domain = new Array(), nav_domain = new Array();
			ref_domain['101'] = 'baidu.' + 'com';
			ref_domain['102'] = 'google.' + 'com';
			ref_domain['103'] = 'www.sogou.' + 'com';
			ref_domain['104'] = 'so.' + 'com';
			ref_domain['105'] = 'youdao.' + 'com';
			nav_domain['201'] = 'hao123.' + 'com';
			nav_domain['202'] = 'hao.360.' + 'cn';
			nav_domain['203'] = '123.sogou.' + 'com';
			nav_domain['204'] = '265.' + 'com';
			nav_domain['205'] = '2345.' + 'com';
			nav_domain['206'] = '114la.' + 'com';
			nav_domain['207'] = 'hao.qq.' + 'com';
			nav_domain['208'] = 'www.3456.' + 'cc';
			nav_domain['209'] = 'hao.ylmf.' + 'com';
			nav_domain['210'] = 'duba.' + 'com';
			nav_domain['211'] = '5566.' + 'net';
			nav_domain['212'] = '57616.' + 'com';
			nav_domain['213'] = '188hi.' + 'com';
			nav_domain['214'] = 'timeon.' + 'cn/';
			nav_domain['215'] = '9991.' + 'com';
			nav_domain['216'] = '9991.' + 'me';
			var refer = this.get_referer();
			var is_total = 0;
			var refer_site = 0;
			if (refer) {//统计站外来的次数
				for ( var ref_d in ref_domain) {
					if (refer.indexOf(ref_domain[ref_d]) != -1) {
						jy_head_function.click_pv('|jy_site_refer|' + ref_d);
						is_total = 1;
						refer_site = ref_d;
						break;
					}
				}
				if (is_total == 0) {
					for ( var nav_d in nav_domain) {
						if (refer.indexOf(nav_domain[nav_d]) != -1) {
							jy_head_function
									.click_pv('|jy_site_refer|' + nav_d);
							is_total = 1;
							refer_site = nav_d;
							break;
						}
					}
				}
				if (is_total == 0) {
					jy_head_function.click_pv('|jy_site_refer|0');//其他情况
				}
				//有来路，就更新COOKIE中的唯一标识
				var jy_ubt_test = jy_head_function.get_cookie('jy_ubt_test');
				if (!jy_ubt_test) {//如果有原来的值，就一直读取并重复写入，如果没有获取新的唯一标识
					jy_ubt_test = this.get_identification();//获取一个新的唯一标识
				}
				jy_head_function.set_cookie('jy_ubt_test', jy_ubt_test, '1d');//记录当前会员1天，每次从站外跳入都重写cookie保证cookie一直存在

				var jy_ubt_test_tmp = jy_head_function
						.get_cookie('jy_ubt_test');
				if (jy_ubt_test_tmp) {
					jy_head_function.click_pv('|jy_site_refer3|'
							+ jy_ubt_test_tmp);//验证统计，看看有多少COOKIE设置或者读取失败
				}
				jy_head_function.click_pv('|jy_site_refer2|' + jy_ubt_test);//访问者UV/PV统计
			}

			var jy_ubt_user_id = jy_head_function.get_cookie('jy_ubt_test');//获取会员的唯一标识
			if (jy_ubt_user_id) {//有COOKIE存在，发送请求统计
				var _jy_ubt_chl = jy_head_function.get_cookie('jy_ubt_chl');//记录上一次的频道标识和访问时间，格式：channel_timestamp
				var jy_ubt_channel = '';
				var jy_ubt_time = 0;
				if (_jy_ubt_chl) {
					var jy_ubt_chl = _jy_ubt_chl.split("|");
					jy_ubt_channel = jy_ubt_chl[0];
					jy_ubt_time = jy_ubt_chl[1];
				}
				var time = new Date().getTime();//获取当前时间
				if (jy_ubt_channel != jy_channel) {//频道切换，发一次请求
					record_infos(jy_ubt_user_id, refer_site);//正常发送请求
				} else {
					if (time - jy_ubt_time > 180000) {//频道没有切换3分钟发一次请求
						record_infos(jy_ubt_user_id, refer_site);
					} else {
						jy_head_function.click_pv('|1032727_2|'
								+ jy_ubt_user_id);//同频道不超过3分钟
					}
				}
			}
		}
	};
	jy_foot_se.record();
</script>


</html>
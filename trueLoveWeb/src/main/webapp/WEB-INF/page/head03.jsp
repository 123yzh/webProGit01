<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<!-- 导入首页样式 -->
<link rel="stylesheet" type="text/css" href="css/mainCss/main.css"/>
<!-- 导航栏样式文件 -->
<link type="text/css" href="css/navi/css/css.css" rel="stylesheet" />
</head>

<body style="font-size:14px">
<!--这个div不设置为百分比的原因是，防止破坏整体布局，这个效果好比是绝对定位-->
<div class="index_page_top" align="center" style="width:1380px;height:5%;background-color:#000">
		<table align="center" style="font-size:12px;">
			<tr align="center">
				<td align="right" valign="middle" style="color:#FFF;">账号:</td>
				<td>
					<form name="form1" method="post" action="">
							<label for="textfield"></label>
							<input name="textfield" type="text" id="textfield" value="" placeholder="邮箱/手机/ID">
					</form>
				</td>
				<td align="right" valign="middle" style="color:#FFF;">密码:</td>
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
				<td valign="middle" align="right" style="width:80px;color:#FFF;">使用QQ登录?</td>
				<td valign="middle" align="left"><img style="margin-top:2px;" src="images/qq.PNG" width="20" height="20"></td>
				<td>
					<form name="form4" method="post" action="">
						<input class="index_page_top_button" type="submit" name="button2" id="button2" value="忘记密码?">
					</form>
				</td>
				<td>
					<form name="form5" method="post" action="register.jsp">
							<input class="index_page_top_button" type="submit" name="button3" id="button3" value="免费注册">
					</form>
				</td>
			</tr>
		</table>
</div>
<div style="margin-left:150px;width:1055px;">
<table style="width:1055px;">
	<tr>
		<td><img style="margin-left:-20px;" src="images/logo.png" width="261" height="66"></td>
		<td align="right"><img src="images/logo_1474453201.gif" width="215" height="70">	</td>
	</tr>
</table>
</div>
<!-- 
<div class="index_page_div">
	<div class="love_web_head_page">
		<div class="love_web_head_page">
			<div class="love_web_head_page_left">
				<img style="margin-left:-20px;" src="images/logo.png" width="261" height="66">
			</div>
			<div class="love_web_head_page_right">
				<img src="images/logo_1474453201.gif" width="215" height="70">	
			</div>
		</div>
	</div>
-->
	
	<!--<div class="love_web_navi_page" >
		<div class="love_web_navi_page_left">
			<table width="120%" border="0" align="center">
					<tr align="center">
						<td><a href="index.jsp">首页</a></td>
						<td><a href="#">我的真缘</a></td>
						<td><a href="#">俱乐部</a></td>
						<td><a href="#">搜索</a></td>
						<td><a href="#">聊天吧</a></td>
						<td><a href="#">新会员</a></td>
						<td><a href="#">约会吧</a></td>
						<td><a href="#">晒幸福</a></td>
						<td><a href="true_love_story.jsp">真缘故事</a></td>
						<td><a href="#">真缘测试</a></td>
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

	</div>-->
	
	<div style="height:25px;clear:both;margin-left:-20px;">
	<div id="content">
    	<div id="button">
        	<ul>
            	<li><a href="index.jsp">首页</a></li>
                <li><a href="myTrueLove.jsp">我的真缘</a></li>
                <li><a href="club.jsp">俱乐部</a></li>
				<li><a href="#">搜索</a></li>
                <li><a href="#">聊天吧</a></li>
                <li><a href="#">新会员</a></li>
				<li><a href="YueHui.jsp">约会吧</a></li>
                <li><a href="showHappiness.jsp">晒幸福</a></li>
                <li><a href="true_love_story.jsp">真缘故事</a></li>
				<li><a href="testYourLove.jsp">真缘测试</a></li>
                <li><a href="#">红娘一对一</a></li>
            </ul>
        </div>
        
    </div>
    </div>
    <!--<div>1111111111</div>-->
    <script type="text/javascript">
    	$(function() {
			//把图片写入htm
			/*var imgArr = "";
			for(var i = 1; i <= 25; i++) {
				if(i <= 25) {//因上传到17素材超过规定大小，不得不将过多的图片略去，为了达到更好的效果，可以自行修改此循环代码，并且增加其余图片，体验异步加载
					imgArr += '<img class="scrollLoading" data-url="image/'+ i +'.jpg" src="image/grey.gif" />';
				} else {
					imgArr += '<img class="scrollLoading" data-url="image/13.jpg" src="image/grey.gif" />';  //超过26张后显示的图片
				}
			}
			$("#image").append(imgArr);
			$("img").load(function () {
				//图片默认隐藏  
				$(this).hide();
				//使用fadeIn特效  
				$(this).stop().fadeIn("5000");
			});
			// 异步加载图片，实现逐屏加载图片
			$(".scrollLoading").scrollLoading(); 
			
			*/
			////以下代码为效果代码，非异步加载核心
			
			//设置页面最外层容器的最小高度为屏幕的高度
			$("#content").css({"min-height" : $(window).height()});
			//$("#button li:first-child").addClass("li_hover");
			var index_button=-1;
			
			$("#button").on("click", "ul li", function(){
				index_button = $(this).index();
				//$("#button li").removeClass("li_hover");
			});
			$("#button li").hover(function(){
				$(this).addClass("li_hover");
			},function(){
				if(index_button != $(this).index()) {
					$(this).removeClass("li_hover");
				}
			});
			
		});
    </script>
</body>

</html>
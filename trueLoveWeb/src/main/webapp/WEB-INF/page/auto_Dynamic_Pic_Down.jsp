<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta content="text/html; charset=gb2312" http-equiv="Content-Type">

<script type=text/javascript src="js/auto_dynamic_pic_down/jquery.js"></script>
<script type=text/javascript src="js/auto_dynamic_pic_down/zzsc.js"></script>
<link rel=stylesheet type=text/css
	href="css/auto_dynamic_pic_down/zzsc.css">

<title></title>
<style>
#waterfall .dym img {
	height: 146px;
	width: 113px;
}
</style>
</head>
<body>
	<!--代码开始,注意该插件的第0,13,15不能显示图片，因此只能强制插入图片-->
	<div
		style="width: 120px; height: 24px; border-radius: 5px; background-color: #F39;">
		<center>
			<span
				style="font-size: 18px; color: #FFF; font-weight: bold; font-family: '仿宋'; font-style: italic;">今日推荐</span>
		</center>
	</div>

	<div id="content"
		style="height:430px; width: 528px; background-color: #EEE; border-radius: 10px; color: #F39; font-weight: bold; font-family: '仿宋'; font-style: italic;">
	
		<div id="waterfall" class="waterfall">
		
	<%
			int count=0;
			for(int i=0;i<4;i++){
		%>
			<div class="dym-dl">
			<%
				for(int m=0;m<4;m++){
			%>
					<div class="dym">
						<%
							if(count==0){
						%>
							<img class="imgs" alt="1233" src="images/auto_dynamic_pic_down/17.jpg"/>
							<div style="margin:0px 7px;">
								<span><%="小翠"%></span>
								<span><%="23岁"%></span>
								<span><%="湖南"%></span>
								<span><%="爱情宣言:将其爱情进行到底"%></span>
							</div>
						<% 
							}else if(count==13){
						%>
							<img class="imgs" alt="1233" src="images/auto_dynamic_pic_down/18.jpg"/>
							<div style="margin:0px 7px;">
								<span><%="小明"%></span>
								<span><%="28岁"%></span>
								<span><%="湖南"%></span>
								<span><%="爱情宣言:将其爱情进行到底"%></span>
							</div>
						<%
							}else if(count==15){
						%>
							<img class="imgs" alt="1233" src="images/auto_dynamic_pic_down/19.jpg"/>
							<div style="margin:0px 7px;">
								<span><%="张三"%></span>
								<span><%="25岁"%></span>
								<span><%="湖南"%></span>
								<span><%="爱情宣言:将其爱情进行到底"%></span>
							</div>	
						<% 
							}else{
						%>
							<img class="imgs" />
							<div style="margin:0px 7px;">
								<span><%="李四"%></span>
								<span><%="29岁"%></span>
								<span><%="湖南"%></span>
								<span><%="爱情宣言:将其爱情进行到底"%></span>
							</div>
						<% 
							}
						%>
					</div>
				<% 
					count++;
				}
				%>
			</div>
		<%
			}
		%>
			<!-- 
		<div class="dym-dl">
			<div class="dym">
				<img class="imgs" alt="1233" src="images/auto_dynamic_pic_down/17.jpg"/>
			</div>
			<div class="dym">
				<img class="imgs" />
				<div>
					<span>111</span>
				</div>
			</div>
			<div class="dym">
				<img class="imgs" />
			</div>
			<div class="dym">
				<img class="imgs" />
			</div>
		</div>
		<div class="dym-dl">
			<div class="dym">
				<img class="imgs" />
			</div>
			<div class="dym">
				<img class="imgs" />
			</div>
			<div class="dym">
				<img class="imgs" />
			</div>
			<div class="dym">
				<img class="imgs" />
			</div>
		</div>
		<div class="dym-dl">
			<div class="dym">
				<img class="imgs" />
			</div>
			<div class="dym">
				<img class="imgs" />
			</div>
			<div class="dym">
				<img class="imgs" />
			</div>
			<div class="dym">
				<img class="imgs" />
			</div>
		</div>
		<div class="dym-dl">
			<div class="dym">
				<img class="imgs" />
			</div>
			<div class="dym">
				<img class="imgs" src="images/auto_dynamic_pic_down/18.jpg"/>
			</div>
			<div class="dym">
				<img class="imgs" />
			</div>
			<div class="dym">
				<img class="imgs" src="images/auto_dynamic_pic_down/19.jpg"/>
			</div>
		</div>
		-->

			<!-- 
	
		<div class="dym-dl">
			<div class="dym">
				<img src="images/auto_dynamic_pic_down/1.jpg" />
			</div>
			<div class="dym">
				<img src="images/auto_dynamic_pic_down/2.jpg" />
			</div>
			<div class="dym">
				<img  src="images/auto_dynamic_pic_down/3.jpg" />
			</div>
			<div class="dym">
				<img src="images/auto_dynamic_pic_down/4.jpg" />
			</div>
		</div>
		<div class="dym-dl">
			<div class="dym">
				<img src="images/auto_dynamic_pic_down/5.jpg" />
			</div>
			<div class="dym">
				<img src="images/auto_dynamic_pic_down/6.jpg" />
			</div>
			<div class="dym">
				<img  src="images/auto_dynamic_pic_down/7.jpg" />
			</div>
			<div class="dym">
				<img src="images/auto_dynamic_pic_down/8.jpg" />
			</div>
		</div>
		<div class="dym-dl">
			<div class="dym">
				<img src="images/auto_dynamic_pic_down/9.jpg" />
			</div>
			<div class="dym">
				<img src="images/auto_dynamic_pic_down/10.jpg" />
			</div>
			<div class="dym">
				<img  src="images/auto_dynamic_pic_down/11.jpg" />
			</div>
			<div class="dym">
				<img src="images/auto_dynamic_pic_down/12.jpg" />
			</div>
		</div>
		<div class="dym-dl">
			<div class="dym">
				<img src="images/auto_dynamic_pic_down/13.jpg" />
			</div>
			<div class="dym">
				<img src="images/auto_dynamic_pic_down/14.jpg" />
			</div>
			<div class="dym">
				<img src="images/auto_dynamic_pic_down/15.jpg" />
			</div>
			<div class="dym">
				<img src="images/auto_dynamic_pic_down/16.jpg" />
			</div>
		</div>
	</div>
	 -->
		</div>
	</div>

</body>

<script>
	//设置属性 注意一定要放在body元素后！！！
	//document.getElementsByClassName("imgs")[0].setAttribute("id",1);
	//获取属性
	//alert(document.getElementsByClassName("img")[0].attributes["id"].nodeValue);

	/*var temp01=11;
	for(var i=0;i<11;i++){
	alert(i);
	}
	

	 */

	/*
	 */
	for (var i = 0; i <16; i++) {
		document.getElementsByClassName("imgs")[i].setAttribute("id", i);
	}
	//获取img元素的id属性值
	//for(var i=0;i<16;i++){
	//alert(document.getElementsByClassName("img")[i].attributes["id"].nodeValue);
	//}

	var randomNum = function(count) {
		var original = new Array;//原始数组
		var originalObj = new Array;//目标数组 
		//给原始数组original赋值 
		for (var i = 0; i < count; i++) {
			original[i] = i + 1;
		}
		for (var num, i = 0; i < count; i++) {
			do {
				num = parseInt(Math.floor(Math.random() * count));
			} while (original[num] == null);
			//document.write(original[num]+" ");
			if (original[num] != null) {
				originalObj[i] = original[num];
			}
			original[num] = null;
		}
		return originalObj;
	};

	var temp = randomNum(16);
	//alert(temp);
	//alert(randomNum(temp01));

	var url = null;
	for (var i = 0; i <16; i++) {
		url = "images/auto_dynamic_pic_down\/" + (temp[i]) + ".jpg";/*随机生成图片路径*/
		//alert(url);
		document.getElementById(i).src = url;
		//alert(url);
	};
</script>

</html>

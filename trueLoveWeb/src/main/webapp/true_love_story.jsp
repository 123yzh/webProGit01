<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<title>晒幸福</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel='stylesheet' href='css/limitPicLoader/style.css' media='screen' />
<script src="js/limitPicLoader/jquery.min.js"></script>
<!--[if lt IE 9]>
<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script src="js/limitPicLoader/blocksit.min.js"></script>
<script>
$(document).ready(function() {
	 
	
	//blocksit define
	$(window).load( function() {
		$('#container').BlocksIt({
			numOfCol: 5,
			offsetX: 8,
			offsetY: 8,
			blockElement: '.grid'
		});
	});
	
	//window resize
	var currentWidth = 1100;
	$(window).resize(function() {
		var winWidth = $(window).width();
		var conWidth;
		if(winWidth < 660) {
			conWidth = 440;
			col = 2
		} else if(winWidth < 880) {
			conWidth = 660;
			col = 3
		} else if(winWidth < 1100) {
			conWidth = 880;
			col = 4;
		} else {
			conWidth = 1100;
			col = 5;
		}
		
		if(conWidth != currentWidth) {
			currentWidth = conWidth;
			$('#container').width(conWidth);
			$('#container').BlocksIt({
				numOfCol: col,
				offsetX: 8,
				offsetY: 8
			});
		}
	});
});


/*重排为每行五列*/

$(window).scroll(function(){
	// 当滚动到最底部以上50像素时， 加载新内容
if ($(document).height() - $(this).scrollTop() - $(this).height()<50){
	$('#container').append($("#test").html());		
	$('#container').BlocksIt({
		numOfCol:4,
		offsetX: 8,
		offsetY: 8
	});
	$("img.lazy").lazyload();
}
});

</script>

</head>
<body>
<!-- Content -->
<jsp:include page="WEB-INF/page/head03.jsp"></jsp:include>
<div style="margin-left:120px;margin-top:-45px;width:1100px;background-color:#f7f5f5;border-radius:15px;">
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
			<img class="img"/>
		</div>
		<strong>Light</strong>
		<p>The only shinning light...</p>
		<div class="meta">by Lars van de Goor</div>
	</div>
	<div class="grid">
		<div class="imgholder">
			<img class="img"/>
		</div>
		<strong>Rooster's Ranch</strong>
		<p>Rooster's ranch landscape...</p>
		<div class="meta">by Andrea Andrade</div>
	</div>
	<div class="grid">
		<div class="imgholder">
			<img class="img"/>
		</div>
		<strong>Yellow cloudy</strong>
		<p>It is yellow cloudy...</p>
		<div class="meta">by Zsolt Zsigmond</div>
	</div>
	<div class="grid">
		<div class="imgholder">
			<img class="img"/>
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
			<img class="img"/>
		</div>
		<strong>Sundays Sunset</strong>
		<p>Beach view sunset...</p>
		<div class="meta">by Robert Strachan</div>
	</div>
	<div class="grid">
		<div class="imgholder">
			<img class="img"/>
		</div>
		<strong>Sun Flower</strong>
		<p>Good Morning Sun flower...</p>
		<div class="meta">by Zsolt Zsigmond</div>
	</div>
	
	<div class="grid">
		<div class="imgholder">
			<img class="img"/>
		</div>
		<strong>Sun Flower</strong>
		<p>Good Morning Sun flower...</p>
		<div class="meta">by Zsolt Zsigmond</div>
	</div>
	<div class="grid">
		<div class="imgholder">
			<img class="img"/>
		</div>
		<strong>Sun Flower</strong>
		<p>Good Morning Sun flower...</p>
		<div class="meta">by Zsolt Zsigmond</div>
	</div>
	
		<div class="grid">
		<div class="imgholder">
			<img class="img"/>
		</div>
		<strong>Sun Flower</strong>
		<p>Good Morning Sun flower...</p>
		<div class="meta">by Zsolt Zsigmond</div>
	</div>
	<div class="grid">
		<div class="imgholder">
			<img class="img"/>
		</div>
		<strong>Sun Flower</strong>
		<p>Good Morning Sun flower...</p>
		<div class="meta">by Zsolt Zsigmond</div>
	</div>
	
		<div class="grid">
		<div class="imgholder">
			<img class="img"/>
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
			<img class="img"/>
		</div>
		<strong>Sun Flower</strong>
		<p>Good Morning Sun flower...</p>
		<div class="meta">by Zsolt Zsigmond</div>
	</div>
	<div class="grid">
		<div class="imgholder">
			<img class="img"/>
		</div>
		<strong>Sun Flower</strong>
		<p>Good Morning Sun flower...</p>
		<div class="meta">by Zsolt Zsigmond</div>
	</div>
		<div class="grid">
		<div class="imgholder">
			<img class="img"/>
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
	for(var i=0;i<20;i++){
		document.getElementsByClassName("img")[i].setAttribute("id",i);
	}
	//获取img元素的id属性值
	for(var i=0;i<20;i++){
		//alert(document.getElementsByClassName("img")[i].attributes["id"].nodeValue);
	}
	 	
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
		};
	
	var temp=randomNum(20);
	//alert(temp);
	//alert(randomNum(temp01));

  var url=null; 
  for(var i=0;i<temp.length;i++){
	 url="images/noLimitImages\/"+temp[i]+".jpg";//随机生成图片路径
	// alert(url);
	document.getElementById(i).src = url;
	//alert(url);
  };
	  
</script>
</html>
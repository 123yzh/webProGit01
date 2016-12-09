<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Cache-Control" content="max-age=300">
<link rel="stylesheet" href="./css/selections/font-awesome.min.css">
<link rel="stylesheet" href="./css/selections/reset.css">
<link rel="stylesheet" href="./css/selections/style.css">
<style>
 .yzh_a:hover{
	 background-color:#F39;
	 border-radius:10px;
	 color:#fff;
}
.head_a{
	
}
</style>
<script src="./js/selections/jquery.min.js"></script>
</head>
<body>
<div style="margin:0 auto;width:1046px;">
    <div class="clearfix">
    	<table width="100%">
    		<tr>
    			<td class="shaixuan-tj floatLeft clearfix" align="left">
    				 <span><a href="#">全部搜索</a></span>
    			</td>
    			<td align="right" background="red" id="sxbtn" class="shaixuan-btn clearfix" style="width:80px;margin-left:-15px;height:30px;margin-top:-20px;">
    				<span style="border:0;width:80px;background-color:#ccc;border-radius:10px;height:25px;"><em style="background-color:#F39;width:80px; border-radius:6px;color:#FFF;">收起筛选</em></span>
    			</td>
    		</tr>
    	</table>
        <!-- 
        <p class="shaixuan-tj floatLeft clearfix">
           <span><a href="#">全部搜索</a></span>
           <i class="icon-angle-right"></i>
           <i class="icon-angle-right"></i>
        </p>
        <div id="sxbtn" class="shaixuan-btn clearfix" style="width:80px;margin-left:-15px;"><span style="border:0;background-color:#FFF;width:80px;"><em style="background-color:#F39;width:80px; border-radius:6px;color:#FFF;">收起筛选</em></span></div>
         -->
    </div>
  	<!-- 表单隐藏技术 -->
    <input type="text" id="position_input_01" name="position_input_01" value="" hidden="true" /> <!-- 职位表单 -->
    <input type="text" id="Constellation_input_01" name="Constellation_input_01" value="" hidden="true" /> <!-- 星座表单 -->
    <input type="text" id="12_ChineseZodiac_Signs_input_01" name="12_ChineseZodiac_Signs_input_01" value="" hidden="true"/> <!-- 12生肖表单 -->
    <input type="text" id="have_married_input_01" name="have_married_input_01" value="" hidden="true" /><!-- 结婚标签表单 -->
    <input type="text" id="have_house_input_01" name="have_house_input_01" value="" hidden="true" /> <!-- 是否有房子表单 -->
    <input type="text" id="have_car_input_01" name="have_car_input_01" value="" hidden="true" /> <!-- 是否有车子表单 -->
    <input type="text" id="nation_input_01" name="nation_input_01" value="" hidden="true" /><!-- 民族表单 -->
    <input type="text" id="belief_input_01" name="belief_input_01" value="" hidden="true" /> <!--信仰表单 -->
    <input type="text" id="height_input_01" name="height_input_01" value="" hidden="true" /><!--身高表单 -->
    <input type="text" id="glamour_value_input_01" name="glamour_value_input_01" value="" hidden="true" /><!--魅力等级表单 -->    
    <div id="page-search-store" class="mb10 border sxcon" style="display: block; background-image:url(images/selections/background.jpg);clear:both;">
        <div class="search-by by-category relative"> 
            <dl class="relative clearfix" style="border-bottom:#F09 dotted 1px;" >
                <dt id="position_dl_01" class="floatLeft"><a href="#" style="font-size:14px;color:#F09;font-weight:bold;">职业:</a></dt>
                <dd class="floatLeft show-con" style="height: auto;">
                    <a href="#" class="yzh_a">政府官员</a>
                    <a href="#" class="yzh_a">医生</a>
                    <a href="#" class="yzh_a">教师</a>
                    <a href="#" class="yzh_a">销售</a>
                    <a href="#" class="yzh_a">企业经理</a>
                    <a href="#" class="yzh_a">会计</a>
                    <a href="#" class="yzh_a">技术员</a>
                    <a href="#" class="yzh_a">自由职业</a>
                    <a href="#" class="yzh_a">护士</a>
                    <a href="#" class="yzh_a">行政助理</a>
                    <a href="#" class="yzh_a">工程师</a>
                    <a href="#" class="yzh_a">建筑师</a>
		    		<a href="#" class="yzh_a">摄影</a>
                    <a href="#" class="yzh_a">营销管理</a>
                    <a href="#" class="yzh_a">律师</a>
                    <a href="#" class="yzh_a">司机</a>
                    <a href="#" class="yzh_a">秘书</a>
                    <a href="#" class="yzh_a">文员</a>
                    <a href="#" class="yzh_a">工程制图</a>
                    <a href="#" class="yzh_a">广告设计</a>
                    <a href="#" class="yzh_a">厨师</a>
					<a href="#" class="yzh_a">其他</a>
                </dd>
                <dd class="floatLeft show-more zk"><h3 class="pointer clearfix"><span style="background-color:#F39; border-radius:6px;color:#FFF">收起</span><!--<i class="icon-angle-up"></i>--></h3></dd>
            </dl>
            <dl class="relative_clearfix" style="border-bottom:#F09 dotted 1px;">
                <dt class="floatLeft"><a href="#" style="font-size:14px;color:#F09;font-weight:bold;">星座:</a></dt>
                <dd class="floatLeft show-con">
					 <a href="#" class="yzh_a1" style="color:#F30;font-weight:bold"><img src="images/selections/xingzuo/Capricorn.jpg" height="24px" width="24px"/>摩羯座</a>
					 <a href="#" class="yzh_a1" style="color:#F36;font-weight:bold"><img src="images/selections/xingzuo/Aquarius.jpg" height="24px" width="24px"/>水瓶座</a>
					 <a href="#" class="yzh_a1" style="color:#F0C;font-weight:bold"><img src="images/selections/xingzuo/Pisces.jpg" height="24px" width="24px"/>双鱼座</a>
					 <a href="#" class="yzh_a1" style="color:#C3F;font-weight:bold"><img src="images/selections/xingzuo/Aries.jpg" height="24px" width="24px"/>白羊座</a>
					 <a href="#" class="yzh_a1" style="color:#C06;font-weight:bold"><img src="images/selections/xingzuo/Taurus.jpg" height="24px" width="24px"/>金牛座</a>
					 <a href="#" class="yzh_a1" style="color:#600;font-weight:bold"><img src="images/selections/xingzuo/Gemini.jpg" height="24px" width="24px"/>双子座</a>
					 <a href="#" class="yzh_a1" style="color:#7D0000;font-weight:bold"><img src="images/selections/xingzuo/Cancer.jpg" height="24px" width="24px"/>巨蟹座</a>
					 <a href="#" class="yzh_a1" style="color:#330;font-weight:bold"><img src="images/selections/xingzuo/Leo.jpg" height="24px" width="24px"/>狮子座</a>
					 <a href="#" class="yzh_a1" style="color:#390;font-weight:bold"><img src="images/selections/xingzuo/Virgo.jpg" height="24px" width="24px"/>处女座</a>
					 <a href="#" class="yzh_a1" style="color:#3C0;font-weight:bold"><img src="images/selections/xingzuo/Libra.jpg" height="24px" width="24px"/>天秤座</a>
					 <a href="#" class="yzh_a1" style="color:#6CF;font-weight:bold"><img src="images/selections/xingzuo/Scorpio.jpg" height="24px" width="24px"/>天蝎座</a>
					 <a href="#" class="yzh_a1" style="color:#09F;font-weight:bold"><img src="images/selections/xingzuo/Sagittarius.jpg" height="24px" width="24px"/>射手座</a>
					 <dd class="floatLeft show-more zk"><h3 class="pointer clearfix"><span style="background-color:#F39; border-radius:6px;color:#FFF">更多</span><!--<i class="icon-angle-up"></i>--></h3></dd> 
                </dd>
            </dl>
			 <dl class="relative_clearfix" style="border-bottom:#F09 dotted 1px;">
                <dt class="floatLeft"><a href="#" style="font-size:14px;color:#F09;font-weight:bold;">生肖:</a></dt>
                <dd class="floatLeft show-con">
                     <a href="#" class="yzh_a1" style="color:#F30;font-weight:bold"><img src="images/selections/animals/Money.png" height="24px" width="24px"/>猴</a>
					 <a href="#" class="yzh_a1" style="color:#F36;font-weight:bold"><img src="images/selections/animals/Rooster.png" height="24px" width="24px"/>鸡</a>
					 <a href="#" class="yzh_a1" style="color:#F0C;font-weight:bold"><img src="images/selections/animals/Dog.png" height="24px" width="24px"/>狗</a>
					 <a href="#" class="yzh_a1" style="color:#C3F;font-weight:bold"><img src="images/selections/animals/Pig.png" height="24px" width="24px"/>猪</a>
					 <a href="#" class="yzh_a1" style="color:#C06;font-weight:bold"><img src="images/selections/animals/Rat.png" height="24px" width="24px"/>鼠</a>
					 <a href="#" class="yzh_a1" style="color:#600;font-weight:bold"><img src="images/selections/animals/Ox.png" height="24px" width="24px"/>牛</a>
					 <a href="#" class="yzh_a1" style="color:#7D0000;font-weight:bold"><img src="images/selections/animals/Tiger.png" height="24px" width="24px"/>虎</a>
					 <a href="#" class="yzh_a1" style="color:#330;font-weight:bold"><img src="images/selections/animals/Rabbit.png" height="24px" width="24px"/>兔</a>
					 <a href="#" class="yzh_a1" style="color:#390;font-weight:bold"><img src="images/selections/animals/Dragon.png" height="24px" width="24px"/>龙</a>
					 <a href="#" class="yzh_a1" style="color:#3C0;font-weight:bold"><img src="images/selections/animals/Snake.png" height="24px" width="24px"/>蛇</a>
					 <a href="#" class="yzh_a1" style="color:#6CF;font-weight:bold"><img src="images/selections/animals/Horse.png" height="24px" width="24px"/>马</a>
					 <a href="#" class="yzh_a1" style="color:#09F;font-weight:bold"><img src="images/selections/animals/Goat.png" height="24px" width="24px"/>羊</a>
                </dd>
            </dl>
			 <dl class="relative_clearfix" style="border-bottom:#F09 dotted 1px;">
                <dt class="floatLeft"><a class="head_a" href="#" style="font-size:14px;color:#F09;font-weight:bold;">婚史:</a></dt>
                <dd class="floatLeft show-con" style="margin-left:-10px;">
					 <a href="#" class="yzh_a1"><input type="checkbox" />未婚</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />离异</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />丧偶</a>
                </dd>
            </dl>
			  <dl class="relative_clearfix" style="border-bottom:#F09 dotted 1px;">
                <dt class="floatLeft"><a class="head_a" style="font-size:14px;color:#F09;font-weight:bold;" href="#">是否有房:</a></dt>
                <dd class="floatLeft show-con">
                    <a href="#" class="yzh_a1"><input type="checkbox" />有</a>
					<a href="#" class="yzh_a1"><input type="checkbox" />无</a>
                </dd>
            </dl>
			 <dl class="relative_clearfix" style="border-bottom:#F09 dotted 1px;">
                <dt class="floatLeft"><a class="head_a" style="font-size:14px;color:#F09;font-weight:bold;" href="#">是否有车:</a></dt>
                <dd class="floatLeft show-con">
                    <a href="#" class="yzh_a1"><input type="checkbox" />有</a>
					<a href="#" class="yzh_a1"><input type="checkbox" />无</a>
                </dd>
            </dl>
		 	<dl class="relative_clearfix" style="border-bottom:#F09 dotted 1px;">
                <dt class="floatLeft"><a class="head_a" href="#" style="font-size:14px;color:#F09;font-weight:bold;">民族:</a></dt>
                <dd class="floatLeft show-con" style="margin-left:-10px;">
					 <a href="#" class="yzh_a1"><input type="checkbox" />汉族</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />少数民族</a>
                </dd>
            </dl>
			<dl class="relative_clearfix" style="border-bottom:#F09 dotted 1px;">
                <dt class="floatLeft"><a class="head_a" href="#" style="font-size:14px;color:#F09;font-weight:bold;">信仰:</a></dt>
                <dd class="floatLeft show-con" style="margin-left:-10px;">
					 <a href="#" class="yzh_a1"><input type="checkbox" />伊斯兰教</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />基督教</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />佛教</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />道教</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />天主教</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />无宗教主义</a>
                </dd>
                <dd class="floatLeft show-more zk"><h3 class="pointer clearfix"><span style="background-color:#F39; border-radius:6px;color:#FFF">更多</span><!--<i class="icon-angle-up"></i>--></h3></dd> 
            </dl>
			<dl class="relative_clearfix" style="border-bottom:#F09 dotted 1px;">
                <dt class="floatLeft"><a class="head_a" href="#" style="font-size:14px;color:#F09;font-weight:bold;">身高:</a></dt>
                <dd class="floatLeft show-con" style="margin-left:-10px;">
					 <a href="#" class="yzh_a1"><input type="checkbox" /><140cm</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />140~149cm</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />150~159cm</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />160~169cm</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />170~179cm</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />180~189cm</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />190~199cm</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />>=200cm</a>
                </dd>
				<dd class="floatLeft show-more zk"><h3 class="pointer clearfix"><span style="background-color:#F39; border-radius:6px;color:#FFF">更多</span><!--<i class="icon-angle-up"></i>--></h3></dd> 
            </dl>
			
			<dl class="relative_clearfix" style="border-bottom:#F09 dotted 1px;">
                <dt class="floatLeft"><a class="head_a" href="#" style="font-size:14px;color:#F09;font-weight:bold;">魅力等级:</a></dt>
                <dd class="floatLeft show-con" style="margin-left:-10px;">
					 <a href="#" class="yzh_a1"><input type="checkbox" />0</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />1</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />2</a>
					 <a href="#" class="yzh_a1"><input type="checkbox" />3及以上</a>
                </dd> 
            </dl>
        </div>
    </div>
</div>
<script>
	var count=0;
	//获取各表单对象
	var $position_input_01=$("#position_input_01");//职位表单对象
	var $Constellation_input_01=$("#Constellation_input_01");//星座表单对象
	var $12_ChineseZodiac_Signs_input_01=$("#12_ChineseZodiac_Signs_input_01");// 12生肖表单对象
	var $have_married_input_01=$("#have_married_input_01");//结婚标签表单对象
	var $have_house_input_01=$("#have_house_input_01");//是否有房子表单对象
	var $have_car_input_01=$("#have_car_input_01");//是否有车子表单对象
	var $nation_input_01=$("#nation_input_01");//民族表单对象
	var $belief_input_01=$("#belief_input_01");//信仰表单对象
	var $height_input_01=$("#height_input_01");//身高表单对象
	var $glamour_value_input_01=$("#glamour_value_input_01");//魅力等级表单对象
    $(function(){
        $(".shaixuan-tj span.crumb-select-item").live('hover',function(event){
            if(event.type=='mouseenter'){ 
            $(this).addClass("crumb-select-itemon");
            }else{ 
            $(this).removeClass("crumb-select-itemon");
            } 
        });
        $(".shaixuan-tj span.crumb-select-item").live('click', function(event){
        	count--;//如果用户放弃选择，则使count减1
        	//alert(count);//防止count无限增长
            event.preventDefault();
            $(this).remove();//搜索条件删除
            var TTR = $(this).find("em").text();
            //var TTB = $(this).find("a b"[0]).text();取到第一个元素
            var TTB = $(this).find("a b").text();//取到数组
            $(".show-con a").each(function(){
                var TT = $(this).text();
                //alert(TTB.toString().trim());
                if(TTB.toString().trim()=="职业:"){
             		$position_input_01.val('');//置空
             	}else if(TTB.toString().trim()=="星座:"){
             		$Constellation_input_01.val('');//置空
             	}else if(TTB.toString().trim()=="生肖:"){
             		$12_ChineseZodiac_Signs_input_01.val('');
             	}else if(TTB.toString().trim()=="婚史:"){
             		$have_married_input_01.val('');//置空
             	}else if(TTB.toString().trim()=="是否有房:"){
             		$have_house_input_01.val('');//置空
             	}else if(TTB.toString().trim()=="是否有车:"){
             		$have_car_input_01.val('');//置空
             	}else if(TTB.toString().trim()=="民族:"){
             		$nation_input_01.val('');//置空
             	}else if(TTB.toString().trim()=="信仰:"){
             		$belief_input_01.val('');//置空
             	}else if(TTB.toString().trim()=="身高:"){
             		$height_input_01.val('');//置空
             	}else if(TTB.toString().trim()=="魅力等级:"){
             		$glamour_value_input_01.val('');//置空
             	}
                    THI = $(this);
                    THIPP = $(this).parents("dl");
                if(TTR==TT){
                    THI.removeClass("nzw12");
                    THIPP.css("display","block");
                }
            })
        });
      
        $(".show-con a").click(function(event){
            event.preventDefault();
                 THIP = $(this).parents("dl");
            if(count<7){//限制搜索条件
	            if($(this).hasClass("nzw12")){
	            }else{
	                $(this).addClass("nzw12");
	                var zhiclass = $(this).parents("dd").siblings("dt").find("a").text();
	                    zhicon = $(this).text();
	                 	if(zhiclass=="职业:"){
	                 		$position_input_01.val(zhiclass+zhicon);
	                 	}else if(zhiclass=="星座:"){
	                 		$Constellation_input_01.val(zhiclass+zhicon);
	                 	}else if(zhiclass=="生肖:"){
	                 		$12_ChineseZodiac_Signs_input_01.val(zhiclass+zhicon);
	                 	}else if(zhiclass=="婚史:"){
	                 		$have_married_input_01.val(zhiclass+zhicon);
	                 	}else if(zhiclass=="是否有房:"){
	                 		$have_house_input_01.val(zhiclass+zhicon);
	                 	}else if(zhiclass=="是否有车:"){
	                 		$have_car_input_01.val(zhiclass+zhicon);
	                 	}else if(zhiclass=="民族:"){
	                 		$nation_input_01.val(zhiclass+zhicon);
	                 	}else if(zhiclass=="信仰:"){
	                 		$belief_input_01.val(zhiclass+zhicon);
	                 	}else if(zhiclass=="身高:"){
	                 		$height_input_01.val(zhiclass+zhicon);
	                 	}else if(zhiclass=="魅力等级:"){
	                 		$glamour_value_input_01.val(zhiclass+zhicon);
	                 	}
	                   // $(position_dl_01).text();
						//alert(zhicon);取到内容标签的目标内容
						
						//为表单添加value
						//必须一对一获取每一个dl对象才行
						
						//alert($position_input_.val());
						
	                    tianjaneir="<span style='font-size:12px;' class='crumb-select-item'><a href='/'><b>"+zhiclass+"</b><em>"+zhicon+"</em><i class='icon-removes'></i></a></span>"
	                    count++;//控制条件数量
	                    //alert(count);
	                   // alert($position_input_01.val());
	                $(".shaixuan-tj").children().last().after(tianjaneir);
	                THIP.css("display","none");
	            }
            }else{
            	count=7;//防止count无限增长
            	alert("您最多只能选择7个条件进行搜索!!!");
            	//alert(count);
            }
        });
        $(".show-more").click(function(event){
            event.preventDefault();
            var ticon = $(this).find("i");
                tspan = $(this).find("span");
                if($(this).hasClass("zk")){
                    $(this).siblings(".show-con").css("height","30px");
                    ticon.removeClass("icon-angle-up");
                    ticon.addClass("icon-angle-down");
                    tspan.html("更多");
                    $(this).removeClass("zk")
                }else{
                    $(this).siblings(".show-con").css("height","auto");
                    ticon.removeClass("icon-angle-down");
                    ticon.addClass("icon-angle-up");
                    tspan.html("收起");
                    $(this).addClass("zk")
                }
        });
        $("#sxbtn").click(function(event){
            event.preventDefault();
            var xicon = $(this).find("span i");
                xspan = $(this).find("span em");
            if($(this).hasClass("zkon")){
                xspan.text("收起筛选");
                xicon.removeClass("icon-angle-down");
                xicon.addClass("icon-angle-up");
                $(".sxcon").slideDown();
                $(this).removeClass("zkon")
            }else{
                xspan.text("查看筛选");
                xicon.removeClass("icon-angle-up");
                xicon.addClass("icon-angle-down");
                $(".sxcon").slideUp();
                $(this).addClass("zkon")
            }
        })
    })
</script>

</body>
</html>
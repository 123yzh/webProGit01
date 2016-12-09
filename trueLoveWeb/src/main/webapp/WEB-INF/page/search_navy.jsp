<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title></title>

<link href="css/search_navy/css/style.css" rel="stylesheet" type="text/css">
<script src="js/search_navy/js/jquery.min.js"></script>

<!--省市级联css-->
<link href="css/search_navy/css/pc/css/city-picker.css" rel="stylesheet">
<link href="css/search_navy/css/pc/css/main.css" rel="stylesheet">
<style type="text/css">
	#select_area{
		text-decoration: none;
		color:#FFF;
	}
	#select_area:hover{
		text-decoration: none;
		color:#FFF;
	}
</style>
</head>

<body>
<!--  
<form class="form-inline"></form>
-->
<div class="selectbox">
    <div class="selemediv">
		<!--省市级联开始-->
		<div>
			<!-- Content -->
			<div class="container">
			
			<!--h2 class="page-header">选择地区</h2-->
			
			<div class="docs-methods">
			
				<!-- 表单隐藏技术 ,为了解决div（没有name属性）无法直接传值或div内容的问题，其思路是通过dom控制iuput的value接收div的内容-->
				<input name="sex" id="sex_input" type="text" value="" hidden="true" />
				<input name="age" id="age_input" type="text" value="" hidden="true" />
				<input name="education" id="education_input" type="text" value="" hidden="true" />
				<input name="salary" id="salary_input" type="text" value="" hidden="true" />
					<div id="distpicker">
						<div class="form-group" style=" background-color:#F09;width:193px; height:25px;padding:10px;">
							<center><a href="javascript:void(0);" onClick="obj_click()" id="select_area"><div style="font-size:18px;font-weight:bold">选择地区</div></a></center>
							<div id="province_city" style="position: relative;margin-left:-8px;visibility:hidden"><!-- 设置初始化隐藏 display:none-->
								<!--<div style="background:#F39; width:170px; height:30px;clear:both">请选择地区</div>-->
								<!--设置默认的地区-->
								<input id="city-picker3" name="city-picker3" class="form-control" readonly type="text" value="湖南省/衡阳市/珠晖" data-toggle="city-picker" style="margin-top:4px;height:10px;width:353px;">
							</div>
							<!-- <div>11111111</div>-->
						</div>
						<!--<div class="form-group">
							
							<button class="btn btn-warning" id="reset" type="button">Reset</button>
							<button class="btn btn-danger" id="destroy" type="button">Destroy</button>
							
						</div>-->
					</div>
				
			</div>
			</div>
			<!--省市级联js文件-->
			<script type="text/javascript">
			//var obj_a=document.getElementById("select_area");
			var obj_select=document.getElementById("province_city");
			//var $obj_a = $("#select_area");//获取#select_area对象
			var obj_click=function(){
				//obj_select.style.display="block";//单击则显示，否则隐藏
				obj_select.style.visibility="visible";
			}
			</script>
			<script src="js/search_navy/js/jquery.js"></script>
			<script src="js/search_navy/js/bootstrap.js"></script>
			<script src="js/search_navy/js/city-picker.data.js"></script>
			<script src="js/search_navy/js/city-picker.js"></script>
			<script src="js/search_navy/js/main.js"></script>
		</div>
		<!--省市级联开始结束-->
	<!--
    <div class="selemenu " >
	
    <span class="sqinput">洛杉矶</span><span class="csinput"></span></div>
                            
                            <div class="citylist2">
                              <div class="xzk">
                                <div class="leibie">商圈</div>
                                 <ul class="shangquan">
                                 <li>菜单一</li>
                                 <li>菜单二</li>
                                 <li>菜单三</li>
                                 <li>菜单四</li>
                                 </ul>
                             </div>
                             <div class="xzk">
                                <div class="leibie">城市</div>
                                 <ul class="chengshi">
                                 <li class="active">菜单一</li>
                                 <li>菜单二</li>
                                 <li>菜单三</li>
                                 <li>菜单四</li>
                                 <li>菜单一</li>
                                 <li>菜单二</li>
                                 <li>菜单三</li>
                                 <li>菜单四</li>
                                 <li>菜单一</li>
                                 <li>菜单二</li>
                                 <li>菜单三</li>
                                 <li>菜单四</li>
                                 <li>菜单一</li>
                                 <li>菜单二</li>
                                 <li>菜单三</li>
                                 <li>菜单四</li>
                                 <li>菜单一</li>
                                 <li>菜单二</li>
                                 <li>菜单三</li>
                                 <li>菜单四</li>
                                 <li>菜单一</li>
                                 <li>菜单二</li>
                                 <li>菜单三</li>
                                 <li>菜单四</li><li>菜单一</li>
                                 <li>菜单二</li>
                                 <li>菜单三</li>
                                 <li>菜单四</li>
                                 </ul>
                             </div>
                           </div>
						   -->
    </div>
    <div class="selemediv"> <div id="sex_div" class="selemenu">请选择性别</div>
                            <div class="citylist">
                           	<span><img width="15px; height:12px;" src="images/search_navy/images/male.jpg" />男</span>
                             <span><img width="15px; height:12px;" src="images/search_navy/images/female.jpg" />女</span>
							 <!--
                             <span>菜单三</span>
                             <span>菜单四</span>
							 -->
                            </div>
    </div>
    <div class="selemediv"> <div id="age_div" class="selemenu">请选择年龄</div>
	                            <div class="citylist">
								<!--<select style=" width:100px;">-->
								<span><img width="12px; height:12px;" src="images/search_navy/images/4_ico.jpg" />18~23岁</span>
								<span><img width="12px; height:12px;" src="images/search_navy/images/4_ico.jpg" />24~29岁</span>
								<span><img width="12px; height:12px;" src="images/search_navy/images/4_ico.jpg" />30~35岁</span>
								<span><img width="12px; height:12px;" src="images/search_navy/images/4_ico.jpg" />36~41岁</span>
								<span><img width="12px; height:12px;" src="images/search_navy/images/4_ico.jpg" />42~47岁</span>
								<span><img width="12px; height:12px;" src="images/search_navy/images/4_ico.jpg" />48~53岁</span>
								<span><img width="12px; height:12px;" src="images/search_navy/images/4_ico.jpg" />54~59岁</span>
								<span><img width="12px; height:12px;" src="images/search_navy/images/4_ico.jpg" />60岁及以上</span>
							<!--
								<option>19</option>
								<option>20</option>
								<option>21</option>
								<option>22</option>
								<option>23</option>
								<option>24</option>
								<option>25</option>
								<option>26</option>
								<option>27</option>
								<option>28</option>
								<option>29</option>
								<option>30</option>
								<option>31</option>
								<option>32</option>
								<option>33</option>
								<option>34</option>
								<option>35</option>
								<option>36</option>
								<option>37</option>
								<option>38</option>
								<option>39</option>
								<option>40</option>
								<option>41</option>
								<option>42</option>
								<option>43</option>
								<option>44</option>
								<option>45</option>
								<option>46</option>
								<option>47</option>
								<option>48</option>
								<option>49</option>
							</select>
						-->
                            <!--
							 <span>菜单一</span>
                             <span>菜单二</span>
                             <span>菜单三</span>
                             <span>菜单四</span>
							-->
                            </div>
    </div>
    <div class="selemediv"> <div id="education_div" class="selemenu">请选择学历</div>
                            <div class="citylist">
                             <span><img width="12px; height:12px;" src="images/search_navy/images/6_ico.jpg" />高中及以下</span>
                             <span><img width="12px; height:12px;" src="images/search_navy/images/6_ico.jpg" />大专</span>
                             <span><img width="12px; height:12px;" src="images/search_navy/images/6_ico.jpg" />本科</span>
                             <span><img width="12px; height:12px;" src="images/search_navy/images/6_ico.jpg" />硕士</span>
							 <span><img width="12px; height:12px;" src="images/search_navy/images/6_ico.jpg" />博士</span>
                            </div>
    </div>
    <div class="selemediv"> <div id="salary_div" class="selemenu">请选择月收入</div>
                            <div class="citylist">
                             <span><img width="12px; height:12px;" src="images/search_navy/images/10_ico.jpg" />1000元以下</span>
                             <span><img width="12px; height:12px;" src="images/search_navy/images/10_ico.jpg" />1000~2000元</span>
                             <span><img width="12px; height:12px;" src="images/search_navy/images/10_ico.jpg" />2001~3000元</span>
                             <span><img width="12px; height:12px;" src="images/search_navy/images/10_ico.jpg" />3001~5000元</span>
							 <span><img width="12px; height:12px;" src="images/search_navy/images/10_ico.jpg" />5001~8000元</span>
                             <span><img width="12px; height:12px;" src="images/search_navy/images/10_ico.jpg" />8001~10000元</span>
                             <span><img width="12px; height:12px;" src="images/search_navy/images/10_ico.jpg" />10001~20000元</span>
							 <span><img width="12px; height:12px;" src="images/search_navy/images/10_ico.jpg" />20001~50000元</span>
                             <span><img width="12px; height:12px;" src="images/search_navy/images/10_ico.jpg" />50000元以上</span>
                            </div>
    </div>
</div>
<div style="height:500px; color:#fff" id="cs"></div>
<script>
$(".selemenu").click(function(){
	$(this).next().slideToggle();
	$(this).parents().siblings().find(".citylist,.citylist2").slideUp();
	})
$(".citylist span").click(function(){
	var text=$(this).text();
	$(this).parent().prev().html(text);
	$(this).parent().prev().css("color","#666")
	$(this).parent().fadeOut();
	
	})
$(".shangquan li").click(function(){
	$(".shangquan li").removeClass("active")
	$(this).addClass("active")
	var text1=$(this).text();
	$(".sqinput").html(text1)
	})
$(".chengshi li").click(function(){
	$(".chengshi li").removeClass("active")
	$(this).addClass("active")
    var text2=$(this).text();
	$(".csinput").html("-"+text2)
	$(".citylist2").slideUp();
	})
  $(function(){
    $(document).not($(".selectbox")).click(function(){
        $(".citylist,.citylist2").slideUp();
	 })
	 $(".selectbox").click(function(event){
        event.stopPropagation();
    })
	})
</script>
</body>
</html>

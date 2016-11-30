<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<meta http-equiv="Content-Language" content="zh-cn">
<meta name="keywords" content="交友,交友网,征婚交友,网上交友,征婚,征婚网,征婚交友网,交友中心,婚恋交友">
<meta name="description"
	content="青春不常在，抓紧谈恋爱！缘分可遇也可求，该出手时就出手。世纪佳缘是严肃婚恋的交友平台，提供丰富多彩的交友征婚活动，1.7亿会员，让缘分千万里挑一！">
<title>推荐会员_世纪佳缘交友网</title>
<link type="text/css" href="./css/introduce/base.css" rel="stylesheet">
<link type="text/css" href="./css/introduce/reg.css" rel="stylesheet">
<link type="text/css" href="./css/introduce/enrol.css" rel="stylesheet">
	<!--
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
	 -->
</head>
<body class="bg1">
	<div id="jy_head_box"
		style="height: 0px; font-size: 0px; line-height: 0;">
		<div id="jy_cpfl_1"
			style="position: fixed; left: 50%; margin-left: 510px; top: 80px; width: 102px; height: 147px; z-index: 9000;">
			<div id="jy_cpfl_1_box">
				<a id="jy_mobile_authentication" class="jy_mobile_authentication"
					onMouseDown="javascript:void(0);" href="#" target="_blank"></a>
			</div>
		</div>
		<div id="jy_cpfl_2"
			style="position: fixed; right: 50%; margin-right: 510px; top: 84px; width: 154px; height: 131px; z-index: 9000;">
			<div id="jy_cpfl_2_btn"
				style="position: absolute; cursor: pointer; right: 8px; top: 3px; width: 14px; height: 14px;"></div>
			<div id="jy_cpfl_2_box">
				<a href="#" onMouseDown="javascript:void(0);" target="_blank"
					class="finance_redBox_img"></a>
			</div>
		</div>
		<div id="jy_cpfl_3"
			style="position: fixed; right: 0px; top: 260px; width: 23px; height: 83px; z-index: 9000;">
			<div id="jy_cpfl_3_box">
				<div id="jy_translate_box" class="jy_translate_box">
					<a class="jy_translate jy_translate_ft" href="#"
						onClick="javascript:void(0);"></a> <a
						class="jy_translate jy_translate_jt" href="#"
						onClick="javascript:void(0);"></a>
				</div>
			</div>
		</div>
	</div>
	<div class="jy-w jy-r">
		<!--aside-->
		<div class="jy-a jy-r-aside">
			<div class="jy-a jy-logo">
				<a href="#"><img src="./images/introduce/logo.png" width="179"
					height="53" alt="logo" class="ie6"></a>
			</div>
			<div class="jy-a jy-oa  ie6"></div>
		</div>
		<!--/aside-->
		<!--main-->
		<div class="jy-r jy-r-main p18">
			<div class="jy-r-title">
				<p>你只需告诉我对TA的要求，并心如钢铁地坚信爱情，接下来的事交给我！</p>
			</div>
			<!--修改交友条件-->
			<div class="jy-r jy-r-mod">
				<div class="fn-clear jy-r-mod-t">
					<span class="l">我想找<span id="age-text">18-26</span>岁、<span
						id="address-text">湖南长沙</span>、<span id="height-text">155-170</span>CM的<span
						id="nation-txt"></span><span id="sex-txt">女</span>生
					</span> <a onMouseDown="javascript:void(0)" href="#">修改择友条件</a> <span
						class="ico-sign" id="ico-sign"> <span class="sign-s"></span>
						<span class="sign-main" id="sign-main"> <span
							class="sign-sanjiao"></span> 修改真实择友条件，完整度多+5分哦~
					</span>
					</span>
					<script>
						var oSign = document.getElementById('ico-sign'), oSignMain = document
								.getElementById('sign-main');

						oSign.onmouseover = function() {
							oSignMain.style.display = 'block';
						}
						oSign.onmouseout = function() {
							oSignMain.style.display = 'none';
						}
					</script>
				</div>
				<dl class="fn-clear jy-r-mod-c dn">
					<dt>我想找：</dt>
					<dd class="w1">
						<div class="fn-clear">
							<span>年龄：</span>
							<div class="jy-sel jy-sel-w fn-left handhover">
								<input id="age1" name="age1" type="text" readonly value="18"
									class="jy-sel-i jy-sel-iw age1 handhover">
								<div class="iw-a age1"></div>
								<div id="age1-o" class="jy-sel-o jy-sel-ow">
									<ul>
										<li class="cur"><a href="#">18</a></li>
										<li><a href="#">19</a></li>
										<li><a href="#">20</a></li>
										<li><a href="#">21</a></li>
										<li><a href="#">22</a></li>
										<li><a href="#">23</a></li>
										<li><a href="#">24</a></li>
										<li><a href="#">25</a></li>
										<li><a href="#">26</a></li>
										<li><a href="#">27</a></li>
										<li><a href="#">28</a></li>
										<li><a href="#">29</a></li>
										<li><a href="#">30</a></li>
										<li><a href="#">31</a></li>
										<li><a href="#">32</a></li>
										<li><a href="#">33</a></li>
										<li><a href="#">34</a></li>
										<li><a href="#">35</a></li>
										<li><a href="#">36</a></li>
										<li><a href="#">37</a></li>
										<li><a href="#">38</a></li>
										<li><a href="#">39</a></li>
										<li><a href="#">40</a></li>
										<li><a href="#">41</a></li>
										<li><a href="#">42</a></li>
										<li><a href="#">43</a></li>
										<li><a href="#">44</a></li>
										<li><a href="#">45</a></li>
										<li><a href="#">46</a></li>
										<li><a href="#">47</a></li>
										<li><a href="#">48</a></li>
										<li><a href="#">49</a></li>
										<li><a href="#">50</a></li>
										<li><a href="#">51</a></li>
										<li><a href="#">52</a></li>
										<li><a href="#">53</a></li>
										<li><a href="#">54</a></li>
										<li><a href="#">55</a></li>
										<li><a href="#">56</a></li>
										<li><a href="#">57</a></li>
										<li><a href="#">58</a></li>
										<li><a href="#">59</a></li>
										<li><a href="#">60</a></li>
										<li><a href="#">61</a></li>
										<li><a href="#">62</a></li>
										<li><a href="#">63</a></li>
										<li><a href="#">64</a></li>
										<li><a href="#">65</a></li>
										<li><a href="#">66</a></li>
										<li><a href="#">67</a></li>
										<li><a href="#">68</a></li>
										<li><a href="#">69</a></li>
										<li><a href="#">70</a></li>
										<li><a href="#">71</a></li>
										<li><a href="#">72</a></li>
										<li><a href="#">73</a></li>
										<li><a href="#">74</a></li>
										<li><a href="#">75</a></li>
										<li><a href="#">76</a></li>
										<li><a href="#">77</a></li>
										<li><a href="#">78</a></li>
										<li><a href="#">79</a></li>
										<li><a href="#">80</a></li>
										<li><a href="#">81</a></li>
										<li><a href="#">82</a></li>
										<li><a href="#">83</a></li>
										<li><a href="#">84</a></li>
										<li><a href="#">85</a></li>
										<li><a href="#">86</a></li>
										<li><a href="#">87</a></li>
										<li><a href="#">88</a></li>
										<li><a href="#">89</a></li>
										<li><a href="#">90</a></li>
										<li><a href="#">91</a></li>
										<li><a href="#">92</a></li>
										<li><a href="#">93</a></li>
										<li><a href="#">94</a></li>
										<li><a href="#">95</a></li>
										<li><a href="#">96</a></li>
										<li><a href="#">97</a></li>
										<li><a href="#">98</a></li>
										<li><a href="#">99</a></li>
									</ul>
								</div>
							</div>
							<span class="p5">到</span>
							<div class="jy-sel jy-sel-w fn-left handhover">
								<input id="age2" name="age2" type="text" readonly value="26"
									class="jy-sel-i jy-sel-iw age2 handhover">
								<div class="iw-a age2"></div>
								<div id="age2-o" class="jy-sel-o jy-sel-ow">
									<ul>
										<li><a href="#">18</a></li>
										<li><a href="#">19</a></li>
										<li><a href="#">20</a></li>
										<li><a href="#">21</a></li>
										<li><a href="#">22</a></li>
										<li><a href="#">23</a></li>
										<li><a href="#">24</a></li>
										<li><a href="#">25</a></li>
										<li class="cur"><a href="#">26</a></li>
										<li><a href="#">27</a></li>
										<li><a href="#">28</a></li>
										<li><a href="#">29</a></li>
										<li><a href="#">30</a></li>
										<li><a href="#">31</a></li>
										<li><a href="#">32</a></li>
										<li><a href="#">33</a></li>
										<li><a href="#">34</a></li>
										<li><a href="#">35</a></li>
										<li><a href="#">36</a></li>
										<li><a href="#">37</a></li>
										<li><a href="#">38</a></li>
										<li><a href="#">39</a></li>
										<li><a href="#">40</a></li>
										<li><a href="#">41</a></li>
										<li><a href="#">42</a></li>
										<li><a href="#">43</a></li>
										<li><a href="#">44</a></li>
										<li><a href="#">45</a></li>
										<li><a href="#">46</a></li>
										<li><a href="#">47</a></li>
										<li><a href="#">48</a></li>
										<li><a href="#">49</a></li>
										<li><a href="#">50</a></li>
										<li><a href="#">51</a></li>
										<li><a href="#">52</a></li>
										<li><a href="#">53</a></li>
										<li><a href="#">54</a></li>
										<li><a href="#">55</a></li>
										<li><a href="#">56</a></li>
										<li><a href="#">57</a></li>
										<li><a href="#">58</a></li>
										<li><a href="#">59</a></li>
										<li><a href="#">60</a></li>
										<li><a href="#">61</a></li>
										<li><a href="#">62</a></li>
										<li><a href="#">63</a></li>
										<li><a href="#">64</a></li>
										<li><a href="#">65</a></li>
										<li><a href="#">66</a></li>
										<li><a href="#">67</a></li>
										<li><a href="#">68</a></li>
										<li><a href="#">69</a></li>
										<li><a href="#">70</a></li>
										<li><a href="#">71</a></li>
										<li><a href="#">72</a></li>
										<li><a href="#">73</a></li>
										<li><a href="#">74</a></li>
										<li><a href="#">75</a></li>
										<li><a href="#">76</a></li>
										<li><a href="#">77</a></li>
										<li><a href="#">78</a></li>
										<li><a href="#">79</a></li>
										<li><a href="#">80</a></li>
										<li><a href="#">81</a></li>
										<li><a href="#">82</a></li>
										<li><a href="#">83</a></li>
										<li><a href="#">84</a></li>
										<li><a href="#">85</a></li>
										<li><a href="#">86</a></li>
										<li><a href="#">87</a></li>
										<li><a href="#">88</a></li>
										<li><a href="#">89</a></li>
										<li><a href="#">90</a></li>
										<li><a href="#">91</a></li>
										<li><a href="#">92</a></li>
										<li><a href="#">93</a></li>
										<li><a href="#">94</a></li>
										<li><a href="#">95</a></li>
										<li><a href="#">96</a></li>
										<li><a href="#">97</a></li>
										<li><a href="#">98</a></li>
										<li><a href="#">99</a></li>
									</ul>
								</div>
							</div>
							<span class="p12">地区：</span>
							<!--select-->
							<div class="jy-sel jy-sel-w fn-left w115 handhover">
								<input id="input2_City" name="input2_City" type="hidden"
									value="43"> <input id="input2_City2"
									name="input2_City2" type="hidden" value="4301"> <input
									id="addre" name="addre" type="text" readonly value="湖南 长沙"
									class="jy-sel-i jy-sel-iw w115 handhover">
								<div id="province" class="jy-sel-o jy-sel-ow w386"
									style="width: 420px;">
									<ul>
										<li><span class="fc2">热门城市</span></li>
										<li class="hot"><a data="11" href="#">北京</a> <a data="12"
											href="#">天津</a> <a data="31" href="#">上海</a> <a data="50"
											href="#">重庆</a> <a data="44" href="#">广东</a> <a data="43"
											href="#">湖南</a></li>
										<li class="add"><span class="fc2">选择省份</span> <!--<a class="any" href="">不限省份</a>-->
										</li>
										<li class="add"><span>A-G</span> <a data="34" href="#">安徽</a>
											<a data="11" href="#">北京</a> <a data="50" href="#">重庆</a> <a
											data="35" href="#">福建</a> <a data="62" href="#">甘肃</a> <a
											data="45" href="#">广西</a> <a data="44" href="#">广东</a> <a
											data="52" href="#">贵州</a> <a data="82" href="#">澳门</a> <a
											data="99" href="#">其他国家</a></li>
										<li class="add"><span>H-J</span> <a data="46" href="#">海南</a>
											<a data="41" href="#">河南</a> <a data="13" href="#">河北</a> <a
											data="23" href="#">黑龙江</a> <a data="42" href="#">湖北</a> <a
											data="43" href="#">湖南</a> <a data="22" href="#">吉林</a> <a
											data="36" href="#">江西</a> <a data="32" href="#">江苏</a></li>
										<li class="add"><span>L-S</span> <a data="21" href="#">辽宁</a>
											<a data="15" href="#">内蒙古</a> <a data="64" href="#">宁夏</a> <a
											data="63" href="#">青海</a> <a data="14" href="#">山西</a> <a
											data="37" href="#">山东</a> <a data="61" href="#">陕西</a> <a
											data="31" href="#">上海</a> <a data="51" href="#">四川</a> <a
											data="98" href="#">美国</a></li>
										<li class="add"><span>T-Z</span> <a data="71" href="#">台湾</a>
											<a data="12" href="#">天津</a> <a data="54" href="#">西藏</a> <a
											data="81" href="#">香港</a> <a data="65" href="#">新疆</a> <a
											data="53" href="#">云南</a> <a data="33" href="#">浙江</a></li>
									</ul>
								</div>
								<div id="city" class="jy-sel-o jy-sel-oc t18">
									<ul>
										<li></li>
									</ul>
								</div>
							</div>
							<!--/select-->
						</div>
						<div class="fn-clear">
							<span>身高：</span>
							<div class="jy-sel jy-sel-w fn-left handhover">
								<input id="height1" name="height1" type="text" readonly
									value="155" class="jy-sel-i jy-sel-iw handhover">
								<div class="iw-a height1"></div>
								<div id="height1-o" class="jy-sel-o jy-sel-ow">
									<ul>
										<li><a href="#">130</a></li>
										<li><a href="#">131</a></li>
										<li><a href="#">132</a></li>
										<li><a href="#">133</a></li>
										<li><a href="#">134</a></li>
										<li><a href="#">135</a></li>
										<li><a href="#">136</a></li>
										<li><a href="#">137</a></li>
										<li><a href="#">138</a></li>
										<li><a href="#">139</a></li>
										<li><a href="#">140</a></li>
										<li><a href="#">141</a></li>
										<li><a href="#">142</a></li>
										<li><a href="#">143</a></li>
										<li><a href="#">144</a></li>
										<li><a href="#">145</a></li>
										<li><a href="#">146</a></li>
										<li><a href="#">147</a></li>
										<li><a href="#">148</a></li>
										<li><a href="#">149</a></li>
										<li><a href="#">150</a></li>
										<li><a href="#">151</a></li>
										<li><a href="#">152</a></li>
										<li><a href="#">153</a></li>
										<li><a href="#">154</a></li>
										<li class="cur"><a href="#">155</a></li>
										<li><a href="#">156</a></li>
										<li><a href="#">157</a></li>
										<li><a href="#">158</a></li>
										<li><a href="#">159</a></li>
										<li><a href="#">160</a></li>
										<li><a href="#">161</a></li>
										<li><a href="#">162</a></li>
										<li><a href="#">163</a></li>
										<li><a href="#">164</a></li>
										<li><a href="#">165</a></li>
										<li><a href="#">166</a></li>
										<li><a href="#">167</a></li>
										<li><a href="#">168</a></li>
										<li><a href="#">169</a></li>
										<li><a href="#">170</a></li>
										<li><a href="#">171</a></li>
										<li><a href="#">172</a></li>
										<li><a href="#">173</a></li>
										<li><a href="#">174</a></li>
										<li><a href="#">175</a></li>
										<li><a href="#">176</a></li>
										<li><a href="#">177</a></li>
										<li><a href="#">178</a></li>
										<li><a href="#">179</a></li>
										<li><a href="#">180</a></li>
										<li><a href="#">181</a></li>
										<li><a href="#">182</a></li>
										<li><a href="#">183</a></li>
										<li><a href="#">184</a></li>
										<li><a href="#">185</a></li>
										<li><a href="#">186</a></li>
										<li><a href="#">187</a></li>
										<li><a href="#">188</a></li>
										<li><a href="#">189</a></li>
										<li><a href="#">190</a></li>
										<li><a href="#">191</a></li>
										<li><a href="#">192</a></li>
										<li><a href="#">193</a></li>
										<li><a href="#">194</a></li>
										<li><a href="#">195</a></li>
										<li><a href="#">196</a></li>
										<li><a href="#">197</a></li>
										<li><a href="#">198</a></li>
										<li><a href="#">199</a></li>
										<li><a href="#">200</a></li>
										<li><a href="#">201</a></li>
										<li><a href="#">202</a></li>
										<li><a href="#">203</a></li>
										<li><a href="#">204</a></li>
										<li><a href="#">205</a></li>
										<li><a href="#">206</a></li>
										<li><a href="#">207</a></li>
										<li><a href="#">208</a></li>
										<li><a href="#">209</a></li>
										<li><a href="#">210</a></li>
										<li><a href="#">211</a></li>
										<li><a href="#">212</a></li>
										<li><a href="#">213</a></li>
										<li><a href="#">214</a></li>
										<li><a href="#">215</a></li>
										<li><a href="#">216</a></li>
										<li><a href="#">217</a></li>
										<li><a href="#">218</a></li>
										<li><a href="#">219</a></li>
										<li><a href="#">220</a></li>
										<li><a href="#">221</a></li>
										<li><a href="#">222</a></li>
										<li><a href="#">223</a></li>
										<li><a href="#">224</a></li>
										<li><a href="#">225</a></li>
										<li><a href="#">226</a></li>
									</ul>
								</div>
							</div>
							<span class="p5">到</span>
							<div class="jy-sel jy-sel-w fn-left handhover">
								<input id="height2" name="height2" type="text" readonly
									value="170" class="jy-sel-i jy-sel-iw handhover">
								<div class="iw-a height2"></div>
								<div id="height2-o" class="jy-sel-o jy-sel-ow">
									<ul>
										<li><a href="#">130</a></li>
										<li><a href="#">131</a></li>
										<li><a href="#">132</a></li>
										<li><a href="#">133</a></li>
										<li><a href="#">134</a></li>
										<li><a href="#">135</a></li>
										<li><a href="#">136</a></li>
										<li><a href="#">137</a></li>
										<li><a href="#">138</a></li>
										<li><a href="#">139</a></li>
										<li><a href="#">140</a></li>
										<li><a href="#">141</a></li>
										<li><a href="#">142</a></li>
										<li><a href="#">143</a></li>
										<li><a href="#">144</a></li>
										<li><a href="#">145</a></li>
										<li><a href="#">146</a></li>
										<li><a href="#">147</a></li>
										<li><a href="#">148</a></li>
										<li><a href="#">149</a></li>
										<li><a href="#">150</a></li>
										<li><a href="#">151</a></li>
										<li><a href="#">152</a></li>
										<li><a href="#">153</a></li>
										<li><a href="#">154</a></li>
										<li><a href="#">155</a></li>
										<li><a href="#">156</a></li>
										<li><a href="#">157</a></li>
										<li><a href="#">158</a></li>
										<li><a href="#">159</a></li>
										<li><a href="#">160</a></li>
										<li><a href="#">161</a></li>
										<li><a href="#">162</a></li>
										<li><a href="#">163</a></li>
										<li><a href="#">164</a></li>
										<li><a href="#">165</a></li>
										<li><a href="#">166</a></li>
										<li><a href="#">167</a></li>
										<li><a href="#">168</a></li>
										<li><a href="#">169</a></li>
										<li class="cur"><a href="#">170</a></li>
										<li><a href="#">171</a></li>
										<li><a href="#">172</a></li>
										<li><a href="#">173</a></li>
										<li><a href="#">174</a></li>
										<li><a href="#">175</a></li>
										<li><a href="#">176</a></li>
										<li><a href="#">177</a></li>
										<li><a href="#">178</a></li>
										<li><a href="#">179</a></li>
										<li><a href="#">180</a></li>
										<li><a href="#">181</a></li>
										<li><a href="#">182</a></li>
										<li><a href="#">183</a></li>
										<li><a href="#">184</a></li>
										<li><a href="#">185</a></li>
										<li><a href="#">186</a></li>
										<li><a href="#">187</a></li>
										<li><a href="#">188</a></li>
										<li><a href="#">189</a></li>
										<li><a href="#">190</a></li>
										<li><a href="#">191</a></li>
										<li><a href="#">192</a></li>
										<li><a href="#">193</a></li>
										<li><a href="#">194</a></li>
										<li><a href="#">195</a></li>
										<li><a href="#">196</a></li>
										<li><a href="#">197</a></li>
										<li><a href="#">198</a></li>
										<li><a href="#">199</a></li>
										<li><a href="#">200</a></li>
										<li><a href="#">201</a></li>
										<li><a href="#">202</a></li>
										<li><a href="#">203</a></li>
										<li><a href="#">204</a></li>
										<li><a href="#">205</a></li>
										<li><a href="#">206</a></li>
										<li><a href="#">207</a></li>
										<li><a href="#">208</a></li>
										<li><a href="#">209</a></li>
										<li><a href="#">210</a></li>
										<li><a href="#">211</a></li>
										<li><a href="#">212</a></li>
										<li><a href="#">213</a></li>
										<li><a href="#">214</a></li>
										<li><a href="#">215</a></li>
										<li><a href="#">216</a></li>
										<li><a href="#">217</a></li>
										<li><a href="#">218</a></li>
										<li><a href="#">219</a></li>
										<li><a href="#">220</a></li>
										<li><a href="#">221</a></li>
										<li><a href="#">222</a></li>
										<li><a href="#">223</a></li>
										<li><a href="#">224</a></li>
										<li><a href="#">225</a></li>
										<li><a href="#">226</a></li>
									</ul>
								</div>
							</div>
							<span class="p12">民族：</span>
							<div class="jy-sel jy-sel-w fn-left handhover">
								<input id="input_MZ" name="input_MZ" type="hidden" value="0">
								<input id="ethnic" name="nation" type="text" readonly value="不限"
									class="jy-sel-i jy-sel-iw handhover">
								<div class="iw-a ethnic"></div>
								<div id="ethnic-o" class="jy-sel-o jy-sel-ow"
									style="width: 80px;">
									<ul>
										<li class="cur"><a href="#" data="0">不限</a></li>
										<li><a href="#" data="1">汉族</a></li>
										<li><a href="#" data="2">藏族</a></li>
										<li><a href="#" data="3">朝鲜族</a></li>
										<li><a href="#" data="4">蒙古族</a></li>
										<li><a href="#" data="5">回族</a></li>
										<li><a href="#" data="6">满族</a></li>
										<li><a href="#" data="7">维吾尔族</a></li>
										<li><a href="#" data="8">壮族</a></li>
										<li><a href="#" data="9">彝族</a></li>
										<li><a href="#" data="10">苗族</a></li>
										<li><a href="#" data="11">其它民族</a></li>
									</ul>
								</div>
							</div>
							<input class="p14" id="yzp" type="checkbox"> <label
								for="yzp">有照片</label>
						</div>
					</dd>
					<dd class="w2">
						<a class="bc" href="#" id="saveMatch">保存</a>
					</dd>
				</dl>
			</div>
			<!--/修改交友条件-->
			<div class="jy-r-xs fn-clear">
				<a href="#" id="refresh">换一组</a>
			</div>
			<div class="jy-r-li fn-clear">
				<div class="item">
					<dl class="fn-clear">
						<dt>
							<a href="#" onClick="accost(155085517, 1)"><img
								src="./images/introduce/0922f5606_1_avatar_p.jpg"></a>
						</dt>
						<dd>
							<p class="nick_str">懵逼少女莹</p>
							<p>24岁</p>
							<p>湖南</p>
							<a class="btn" href="#" onClick="accost(155085517, 0)">认识她</a>
						</dd>
					</dl>
				</div>
				<div class="item">
					<dl class="fn-clear">
						<dt>
							<a href="#" onClick="accost(151140667, 1)"><img
								src="./images/introduce/9909a9ac1_1_avatar_p.jpg"></a>
						</dt>
						<dd>
							<p class="nick_str">coco</p>
							<p>26岁</p>
							<p>湖南</p>
							<a class="btn" href="#" onClick="accost(151140667, 0)">认识她</a>
						</dd>
					</dl>
				</div>
				<div class="item">
					<dl class="fn-clear">
						<dt>
							<a href="#" onClick="accost(154784909, 1)"><img
								src="./images/introduce/3f73534f2_2_avatar_p.jpg"></a>
						</dt>
						<dd>
							<p class="nick_str">馨蕊</p>
							<p>25岁</p>
							<p>湖南</p>
							<a class="btn" href="#" onClick="accost(154784909, 0)">认识她</a>
						</dd>
					</dl>
				</div>
				<div class="item">
					<dl class="fn-clear">
						<dt>
							<a href="#" onClick="accost(156772587, 1)"><img
								src="./images/introduce/5d4512b97_1_avatar_p.jpg"></a>
						</dt>
						<dd>
							<p class="nick_str">刘璇</p>
							<p>26岁</p>
							<p>湖南</p>
							<a class="btn" href="#" onClick="accost(156772587, 0)">认识她</a>
						</dd>
					</dl>
				</div>
				<div class="item">
					<dl class="fn-clear">
						<dt>
							<a href="#" onClick="accost(134292621, 1)"><img
								src="./images/introduce/092a76874_6_avatar_p.jpg"></a>
						</dt>
						<dd>
							<p class="nick_str">wency</p>
							<p>24岁</p>
							<p>湖南</p>
							<a class="btn" href="#" onClick="accost(134292621, 0)">认识她</a>
						</dd>
					</dl>
				</div>
				<div class="item">
					<dl class="fn-clear">
						<dt>
							<a href="#" onClick="accost(125675458, 1)"><img
								src="./images/introduce/e01071b15_5_avatar_p.jpg"></a>
						</dt>
						<dd>
							<p class="nick_str">与生命相约</p>
							<p>26岁</p>
							<p>湖南</p>
							<a class="btn" href="#" onClick="accost(125675458, 0)">认识她</a>
						</dd>
					</dl>
				</div>
			</div>
			<div class="jy-r-sc">
				<!--        <a href="##" onclick="next_page(1);">四处逛逛>></a> -->
				<a href="#" onClick="next_page(1);">以后再认识，进入我的佳缘&gt;&gt;</a>
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
			2003-2013 版权所有</div>
		<!--/footer-->
	</div>

	<div class="jy-pop-bg" style="display: none;"></div>
	<div class="jy-pop" style="display: none;">
		<a href="#" class="jy-pop-close"> </a>
		<dl class="jy-pop-c1 fn-clear">
			<dt>
				<img width="110" height="135" alt="" class="msg_user_photo" src="#">
			</dt>
			<dd>
				<p class="t1 msg_user_nickname">淡淡的微笑</p>
				<p class="t2 msg_user_intro">23岁，168cm，北京海淀，本科，2000-5000</p>
				<div class="fn-clear jy-tag">
					<span class="msg_user_show_t">内心独白：</span>
					<div class="msg_user_show_c">
						<p>感谢浏览我的信息。我北邮硕士学历，来北京上学和工作有十二年了，各方面已经稳定，一直在TOP500外企工作，车房都有，户口在京，最近创业。</p>
					</div>
				</div>
			</dd>
		</dl>
		<div class="jy-pop-c2">
			<div class="pop-con">
				<p class="fn-clear">
					<span class="msg_user_hello">和她打招呼</span> <a id="zhaohuati_tag"
						class="help"></a><a
						onClick="change_draft(1);stationery_close();return false;"
						href="#">帮我找话题</a>
				</p>
				<textarea id="elm4"> </textarea>
				<div class="pop-btn">
					<a href="#" id="sendmsg"
						onClick="check_content(1, 1);return false;">发送</a>
				</div>
			</div>
		</div>
	</div>
	<div class="jy-pop-qp">
		<p>成功！耐心等TA回复吧~</p>
	</div>

	<style type="text/css">
div#jy_common_foot * {
	padding: 0;
	margin: 0
}

#jy_common_foot {
	width: 970px;
	margin: 0 auto;
	clear: both;
	font-family: SimSun, Arial, Helvetica, sans-serif
}

#jy_common_foot img, #jy_common_foot img a {
	border: none
}

#jy_common_foot #common_footer {
	width: 970px;
	font-size: 12px;
	padding: 20px 0;
	text-align: center;
	line-height: 2;
	color: #636363
}

#jy_common_foot #common_footer p {
	text-align: center
}

#jy_common_foot #common_footer p a {
	margin: 0 8px;
	padding: 0;
	color: #636363;
	text-decoration: none
}

#jy_common_foot #common_footer p a:hover {
	margin: 0 8px;
	color: #E7417F;
	text-decoration: underline
}

#jy_common_foot #common_footer p .bot_link_none:hover {
	color: #636363;
	text-decoration: none
}
</style>
</body>
</html>
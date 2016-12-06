//设置发送验证码定时器
var time = 120;
var timer;
var temp = 0;
function sendCode() {
	var email = $("#emailId").val();
	var uname = $("#usernameId").val();
	var code = $("#usernameId").val();
	// 注意尽量json数据与name属性保持一致,前台与后台的数据交互,其实这里的json数据类型是可以随便定义的（具体根据前台的数据而定）,但是一定要有具体的值
	$.post("SendMailServlets", {
		uname : uname,
		email : email,
		code : code
	}, function(data) {
		// data=parseInt($.trim(data));
		temp = data;// 接收后台code
		// alert(data);//如果是字符这是打印的是对应的0在ASCll码中的值（48）的位置！(如果是数字则直接是数字)
		// alert(temp);
		if (data != "48") {// 字符0对应的ascll码为48，这是json数据传送的特点
			timer = setInterval("changeNum()", 1000);
		} else {
			alert("邮件发送失败,请检查邮箱是否正确或网络状态");// 出异常时
			$("#code_button").attr("disabled", false);
		}
	});
}

function changeNum() {
	time--;
	if (time <= 0) {
		$("#code_button").val("再次获取验证码").attr("disabled", false);
		window.clearInterval(timer);
	} else {
		$("#code_button").val("再次获取(" + time + "S)");
	}
}

function checkCode() {
	return temp;// 获得当前验证码
}

/*
 * 异步刷新 function checkEmailFunc(obj) { var url = '/checkEmailServlet'; var args =
 * obj; $.getJSON(url, args, function(data) { alert(url + " " + args + " " +
 * data);
 * 
 * if (data == args) { // data为后台传来的响应数据（自定义），局逻辑判断具体值 alert("邮箱已经被注册！"); } }); }
 * 
 */

/*
 * 页面中点解“单击事件”按钮没有任何反应的解决办法： 在绑定函数外上述js函数上添加加载事件： $(function(){ } 当元素的值发生改变时，会发生
 * change 事件。 该事件仅适用于文本域（text field），以及 textarea 和 select 元素。当用于 select 元素时，
 * change 事件会在选择某个选项时发生。当用于 text field 或 text area 时，该事件会在元素失去焦点时发生。
 * 
 * 
 * $(function(){ //alert("第1种方法。"); var $email_obj=$("#emailId");
 * $email_obj.bind({//绑定事件 submit:function(){//select事件是凭借选择input中内容才触发的
 * //alert($args); //var url ='checkEmailServlet'; //var $args =
 * $email_obj.val(); //alert($args); alert("邮箱已经被注册！"); $.getJSON(url, $args,
 * function(data) { alert(url + " " + $args + " " + data);
 * 
 * if (data == $args) { // data为后台传来的响应数据（自定义），局逻辑判断具体值 alert("邮箱已经被注册！"); } }); }
 * //focus:function(){ //alert('yes'); //} }); });
 * 
 */
$(function() {
	var $telphone = $("#telphone");
	$telphone.bind({// 绑定事件
		// mouseout:function(){
		/*
		 * 改进第一步：前台数据模拟法: if($telphone.val()=="15273835629"){
		 * $("#telphone").attr('value','该号码已被其他用户绑定').css("color","red"); }else{
		 * $("#telphone").removeAttr("color"); }
		 */
		// 改进二步:后台传输据模拟:(data是从后台传来的数据)
		/*
		 * $.post("checkPhoneServlet", { telphone : $telphone.val(),//数据json字符串化 },
		 * function(data) { //alert($telphone.val()); //alert(data);
		 * if(data==$telphone.val()){//如果与后台传递的数据相等，那么及时提示错误
		 * $("#telphone").attr('value','该号码已被其他用户绑定').css("color","red"); }else{
		 * $("#telphone").attr('value',$telphone.val()).css("color","black"); }
		 * }); },
		 * 
		 * click:function(){
		 * $("#telphone").attr('value',"").css("color","black"); }
		 */
		/*
		 * 改进3：处理数据库中数据，思路是将前台的数据作为条件查询，如果条件满足，那么返回1，否则返回，在前台的js的data接收1，则弹出"绑定"信息，
		 * 否则通过
		 */
		// 提交表单:
		mouseout : function() {
			// $("#telphone").submit();
			/*
			 * 改进第一步：前台数据模拟法: if($telphone.val()=="15273835629"){
			 * $("#telphone").attr('value','该号码已被其他用户绑定').css("color","red");
			 * }else{ $("#telphone").removeAttr("color"); }
			 */
			$("#telphone").submit();// 先局部提交数据
			// 改进二步:后台传输据模拟:(data是从后台传来的数据)
			$.post("checkPhoneServlet", {
				telphone : $telphone.val(),// 数据json字符串化
			}, function(data) {
				// alert($telphone.val());
				// alert(data);
				/*
				 * if(data==$telphone.val()&&data!=''){//如果与后台传递的数据相等，那么及时提示错误
				 * $("#telphone").attr('value','该号码已被其他用户绑定').css("color","red");
				 * }else{
				 * $("#telphone").attr('value',$telphone.val()).css("color","black"); }
				 */
				if (data == 1) {// 如果与后台传递的数据相等，那么及时提示错误
					$("#telphone").attr('value', '该号码已被其他用户绑定').css("color",
							"red");
				} else {
					if ($telphone.val() == "该号码已被其他用户绑定") {
						$("#telphone").attr('value', '');// 置空数据
					}
					$("#telphone").attr('value', $telphone.val()).css("color",
							"black");
				}
			});
		},
		//
		click : function() {
			$("#telphone").attr('value', "").css("color", "black");
		}
	});

	// 换一种思路:如果使用本表单无法实现该功能，利用后面验证码的单击来实现邮箱的是否已存在功能(来提交),验证邮箱是否注册
	var $email_code = $("#code_button");
	var $email = $("#emailId");
	$email_code.bind({// 绑定事件
		mouseenter : function() {
			$email.submit();// 先局部提交数据
			$.post("checkEmailServlet", {
				email : $email.val(),// 数据json字符串化
			}, function(data) {
				// alert(data);
				// alert($telphone.val());
				// alert(data);
				/*
				 * if(data==$telphone.val()&&data!=''){//如果与后台传递的数据相等，那么及时提示错误
				 * $("#telphone").attr('value','该号码已被其他用户绑定').css("color","red");
				 * }else{
				 * $("#telphone").attr('value',$telphone.val()).css("color","black"); }
				 */
				if (data == 1) {// 如果与后台传递的数据相等，那么及时提示错误
					$("#emailId").attr('value', '该邮箱已被其他用户绑定').css("color",
							"red");
				} else {
					if ($email.val() == "该邮箱已被其他用户绑定") {
						$("#emailId").attr('value', '');// 置空数据
					}
					$("#emailId").attr('value', $email.val()).css("color",
							"black");
				}
			});
		}
	/*
	 * mouseout:function(){ if($("#emailId").val()=="该邮箱已被其他用户绑定"){
	 * $("#emailId").attr('value','').css("color","black"); } }
	 */
	});

	$email.bind({// 绑定事件
		click : function() {// 点击事件
			if($email.val()=="该邮箱已被其他用户绑定"){
				$email.attr('value','').css("color", "black");//置空
			}
		}
	});
});

// var $email=$("#emailId");
// $email.bind({//绑定事件
// keypress:function(){//移入事件
// $("#emailId").submit();//先局部提交数据
// $.post("checkEmailServlet", {
// email : $email.val(),//数据json字符串化
// }, function(data) {
// //alert(data);
// //alert($telphone.val());
// //alert(data);
// /*if(data==$telphone.val()&&data!=''){//如果与后台传递的数据相等，那么及时提示错误
// $("#telphone").attr('value','该号码已被其他用户绑定').css("color","red");
// }else{
// $("#telphone").attr('value',$telphone.val()).css("color","black");
// }*/
// if(data==1){//如果与后台传递的数据相等，那么及时提示错误
// $("#emailId").attr('value','该邮箱已被其他用户绑定').css("color","red");
// }else{
// if($telphone.val()=="该邮箱已被其他用户绑定"){
// $("#emailId").attr('value','');//置空数据
// }
// $("#emailId").attr('value',$email.val()).css("color","black");
// }
// });
// },
// //
// click:function(){
// $("#emailId").attr('value',"").css("color","black");
// }
// });
// });
// 

/*
 * alert($email_obj); $email_obj.bind({//绑定事件 mouseover:function(){ alert('no'); },
 * mouseout:function(){ alert('yes'); } });
 */

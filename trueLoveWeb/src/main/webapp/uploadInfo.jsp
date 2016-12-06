<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>upload</title>
<SCRIPT LANGUAGE="JavaScript">
<!--//
	function textCounter(field, countfield, maxlimit) {
		// 函数，3个参数，表单名字，表单域元素名，限制字符；  
		if (field.value.length > maxlimit)
			//如果元素区字符数大于最大字符数，按照最大字符数截断；  
			field.value = field.value.substring(0, maxlimit);
		else
			//在记数区文本框内显示剩余的字符数；  
			countfield.value = maxlimit - field.value.length;
	}
//-->
</SCRIPT>
<style type="text/css">
body {
	background: #FFF;
}

textarea {
	border: 0px;
	border-radius: 15px;
	resize: none; /*设置表单域大小不可变*/
	background-color: #CACAFF;
	padding: 10px;
	font-size: 20px;
	font-weight: bold;
	width: 450px;
	height: 60px;
	line-height: 40px;
}
</style>
<!-- add styles -->
<link href="css/uploadPic/main.css" rel="stylesheet" type="text/css" />
<link href="css/uploadPic/jquery.Jcrop.min.css" rel="stylesheet" type="text/css" />

<!-- add scripts -->
<script src="js/uploadPic/jquery.min.js"></script>
<script src="js/uploadPic/jquery.Jcrop.min.js"></script>
<script src="js/uploadPic/script.js"></script>
</head>
<body>

	<div class="demo" style="margin-top: 0px;">
		<div class="bheader">
			<h2>——头像上传——</h2>
		</div>
		<div class="bbody">
			<!-- upload form -->
			<form id="upload_form" enctype="multipart/form-data" method="post"
				action="uploadServlet" onSubmit="return checkForm()">
				<!-- hidden crop params -->
				<input type="hidden" id="x1" name="x1" /> <input type="hidden"
					id="y1" name="y1" /> <input type="hidden" id="x2" name="x2" /> <input
					type="hidden" id="y2" name="y2" />

				<h2>第一步:请选择图像文件</h2>

				<div>
					<div>
						<input type="file" name="image_file" id="image_file"
							onChange="fileSelectHandler()" />
					</div>

					<div class="error"></div>

					<div class="step2">
						<h2>请选择需要截图的部位,然后填写爱情宣言,再上传</h2>
						<img id="preview" />

						<div class="info">
							<label>文件大小</label> <input type="text" id="filesize"
								name="filesize" /> <label>类型</label> <input type="text"
								id="filetype" name="filetype" /> <label>图像尺寸</label> <input
								type="text" id="filedim" name="filedim" /> <label>宽度</label> <input
								type="text" id="w" name="w" /> <label>高度</label> <input
								type="text" id="h" name="h" />
						</div>
						<div style="margin-bottom:10px;">
						<h2>第二步:填写你的爱情宣言:</h2>
							<textarea name="message" cols="60" rows="5"
								onKeyDown="textCounter(message,remLen,10);"
								onKeyUp="textCounter(message,remLen,10);"></textarea>
							<br /> 您还可以输入:<input name="remLen"
								style="border-radius: 10px; background: #CACAFF;" type="text"
								value="10" size="4" readonly="readonly">个字符
						</div>
						<input type="submit" value="上传" style="border-radius:10px;"/>
					</div>
				</div>
			</form>
		</div>
	</div>


	<!--  
	<form action="uploadServlet" method="post"
		enctype="multipart/form-data">
		<table>
			<caption>上传实例</caption>
			<tr>
				<td>照片</td>
				<td><input type="file" name="image"></td>
			</tr>
			<tr>
				<td></td>
				<td><textarea name="message" cols="60" rows="5"
						onKeyDown="textCounter(message,remLen,10);"
						onKeyUp="textCounter(message,remLen,10);"></textarea> <br />
					您还可以输入:<input name="remLen"
					style="border-radius: 10px; background: #CACAFF;" type="text"
					value="10" size="4" readonly="readonly">个字符</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="提交"></td>
			</tr>

		</table>
	</form>
	-->
</body>
</html>
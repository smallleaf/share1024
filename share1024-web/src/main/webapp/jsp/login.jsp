<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/jsp/inc/base.inc"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">

<HEAD>
<META content="IE=11.0000" http-equiv="X-UA-Compatible">
	<META http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link rel="shortcut icon" href="${basePath }/images/favicon.ico"
			type="image/x-icon" />
		<TITLE>登录</TITLE> <SCRIPT src="${basePath }/js/jquery.js" type="text/javascript"></SCRIPT>
		<STYLE>
body {
	background: #ebebeb;
	font-family: "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei",
		"\9ED1\4F53", Arial, sans-serif;
	color: #222;
	font-size: 12px;
}

* {
	padding: 0px;
	margin: 0px;
}

.top_div {
	background: #008ead;
	width: 100%;
	height: 350px;
}

.ipt {
	border: 1px solid #d3d3d3;
	padding: 10px 10px;
	width: 290px;
	border-radius: 4px;
	padding-left: 35px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s
}

.jcaptcha {
	border: 1px solid #d3d3d3;
	margin-left: 5px;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s
}

.ipt:focus {
	border-color: #66afe9;
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6)
}

.u_logo {
	background: url("${basePath }/images/username.png") no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 43px;
	left: 40px;
}

.p_logo {
	background: url("${basePath }/images/password.png") no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 12px;
	left: 40px;
}

a {
	text-decoration: none;
}

.tou {
	background: url("${basePath }/images/tou.png") no-repeat;
	width: 97px;
	height: 92px;
	position: absolute;
	top: -87px;
	left: 140px;
}

.left_hand {
	background: url("${basePath }/images/left_hand.png") no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	left: 150px;
}

.right_hand {
	background: url("${basePath }/images/right_hand.png") no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	right: -64px;
}

.initial_left_hand {
	background: url("${basePath }/images/hand.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	left: 100px;
}

.initial_right_hand {
	background: url("${basePath }/images/hand.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	right: -112px;
}

.left_handing {
	background: url("${basePath }/images/left-handing.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -24px;
	left: 139px;
}

.right_handinging {
	background: url("${basePath }/images/right_handing.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -21px;
	left: 210px;
}
</STYLE>
		<SCRIPT type="text/javascript">
			$(function() {
				$(".jcaptcha-btn").click(
						function() {
							$(".jcaptcha-img").attr(
									"src",
									'${pageContext.request.contextPath}/jcaptcha.jpg?'
											+ new Date().getTime());
						});
				//得到焦点
				$("#password").focus(function() {
					$("#left_hand").animate({
						left : "150",
						top : " -38"
					}, {
						step : function() {
							if (parseInt($("#left_hand").css("left")) > 140) {
								$("#left_hand").attr("class", "left_hand");
							}
						}
					}, 2000);
					$("#right_hand").animate({
						right : "-64",
						top : "-38px"
					}, {
						step : function() {
							if (parseInt($("#right_hand").css("right")) > -70) {
								$("#right_hand").attr("class", "right_hand");
							}
						}
					}, 2000);
				});
				//失去焦点
				$("#password").blur(function() {
					$("#left_hand").attr("class", "initial_left_hand");
					$("#left_hand").attr("style", "left:100px;top:-12px;");
					$("#right_hand").attr("class", "initial_right_hand");
					$("#right_hand").attr("style", "right:-112px;top:-12px");
				});
			});
		</SCRIPT>
		<META name="GENERATOR" content="MSHTML 11.00.9600.17496">
</HEAD>

<BODY>
	<DIV class="top_div"></DIV>
	<form action="${basePath }/login" method="post">
	<DIV
		style="background: rgb(255, 255, 255); margin: -100px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 240px; text-align: center;">
		<DIV style="width: 165px; height: 96px; position: absolute;">
			<DIV class="tou"></DIV>
			<DIV class="initial_left_hand" id="left_hand"></DIV>
			<DIV class="initial_right_hand" id="right_hand"></DIV>
		</DIV>
		<P style="padding: 30px 0px 10px; position: relative;">
			<SPAN class="u_logo"></SPAN> <INPUT class="ipt" type="text"
				placeholder="请输入用户名" name="username" value="${username }">
		</P>
		<P style="position: relative;">
			<SPAN class="p_logo"></SPAN> <INPUT class="ipt" id="password"
				type="password" placeholder="请输入密码" name="password" value="">
		</P>
		<p style="position: relative; margin-top: 10px;">
			<SPAN class="p_logo"></SPAN><INPUT class="ipt"
				style="width: 148px; vertical-align: middle;" type="jcaptcha"
				placeholder="请输入验证" name="jcaptchaCode" value=""><img
				class="jcaptcha-img jcaptcha jcaptcha-btn"
				style="vertical-align: middle" src="${basePath}/jcaptcha.jpg"
				title="点击更换验证码"><a class="jcaptcha-btn" href="javascript:;">换一张</a>
		</p>
		<DIV
			style="height: 50px; line-height: 50px; margin-top: 30px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
			<P style="margin: 0px 35px 20px 45px;">
				<SPAN style="float: left;"><A
					style="color: rgb(204, 204, 204);" href="#">忘记密码?</A></SPAN> <SPAN
					style="float: right;"><A
					style="color: rgb(204, 204, 204); margin-right: 10px;" href="#">注册</A>
					<input type="submit" value="登录" style="background: rgb(0, 142, 173); padding: 7px
						10px; border-radius: 4px; border: 1px solid rgb(26, 117, 152);
						border-image: none; color: rgb(255, 255, 255); font-weight: bold;"
						></input> </SPAN>
			</P>
		</DIV>
	</DIV>
	<div style="color:red;">${error }</div>
	</form>
</BODY>

</HTML>

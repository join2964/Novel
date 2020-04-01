<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="overflow: auto; overflow-x:hidden">
	<head>
		<meta charset="UTF-8">
		<title >登录</title>
		<link href="img/bitbug_favicon.ico" rel="icon" type="image/x-ico">
		<style type="text/css">
			*{
				margin: 0;
    			padding: 0;
			}
			body {
				width: 1920px;
				line-height: 2em;
			    background-color: #ffffff;
			    font-family: arial, helvetica, sans-serif;
			    color: #666666;
			    font-size: 12px;
			    background: url(img/4.jpg) no-repeat scroll top left;
			    background-size: 100%;
			}
			#fh{
				width: 100%;
				height: 50px;
				margin: 0;
				background-color: #DFEFFF;
				border: 1px solid #ccc;
			}
			#dlk{
				width: 700px;
				height: 350px;
				border: 1px solid #888;
				text-align:center;
				margin:200px auto;
				font-size: 20px;
			}
			#sb{
				width: 700px;
				height: 80px;
				border: 1px solid #888;
				line-height: 80px;
				color: dodgerblue;
			}
			#xb{
				width: 700px;
				height: 232px;
				border: 1px solid #888;
				padding-top:5%;
			}
			#xb .s1{
				width: 200px;
				height: 30px;
				margin-top: 20px;
			}
			#xb .s2{
				width: 50px;
				height: 30px;
				margin-top: 30px;
			}
		</style>
	</head>
	<body>
	<!--
    	作者：1395023445@qq.com
    	时间：2019-05-20
    	描述：登录页面
    -->
		<form action="sign" method="post">
			<div id="fh">
				<a href="dl.jsp"><img src="img/shangyibu.png" style="width: 40px;height: 40px;margin: 4px 20px;"/></a>
				<a href="index.jsp"><img src="img/yemian-copy-copy-copy.png" style="width: 38px;height: 38px;float:right;margin: 5px 30px;"/></a>
			</div>
			<div id="dlk">
				<div id="sb">
					登录界面
				</div>
				<div id="xb">
				账&nbsp;号:&nbsp;<input name="user_zh" type="text" id="uid" placeholder="请输入账号" class="s1"></br>
				密&nbsp;码:&nbsp;<input name="user_mm" type="password" id="pid" placeholder="请输入密码" class="s1" ></br>
				<input type="submit" value="登录" class="s1"/></br>
				<a href="#" style="float: left; margin: 40px 5px;">忘记密码？</a>
				<a href="zc.jsp" style="float: right; margin: 40px 5px; text-decoration:none;color:#00C98D">注册</a>
				</div>
				
			</div>
		</form>
	</body>
</html>

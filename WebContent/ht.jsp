<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html  style="overflow: auto; overflow-x:hidden; overflow-y:hidden">
	<head>
		<meta charset="UTF-8">
		<title>后台管理界面</title>
		<link href="img/bitbug_favicon.ico" rel="icon" type="image/x-ico">
		<!--
        	作者：1395023445@qq.com
        	时间：2019-06-01
        	描述：3.0不支持标签页式导航
        -->
		<link href="https://cdn.bootcss.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
    	<link href="https://cdn.bootcss.com/bootstrap/2.3.2/css/bootstrap-responsive.min.css" rel="stylesheet">
		<link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">
		<!-- 可选的Bootstrap主题文件(一般不用引入) -->
		<link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap-theme.min.css">
		<!-- jQuery文件，在bootstrap.min.js之前引入 -->
		<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
		<!-- Bootstrap核心JavaScript文件 -->
		<script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
		<script src="js/jquery.js"></script>
		<link href="css/theme10.min.css" />
		<style type="text/css">
			.nav{
				width: 170px;
				height: 900px;
				border: 1px solid #ccc;
			}
			li{
				height: 70px;
			}
			.nav a{
				font-size: 20px;
				height: 50px;
				line-height: 80px;
			}
			.active th{
				width: 70px;
				text-align: center;
			}
			.active td{
				text-align: center;
			}
			.active .bq th{
				text-align: center;
			}
			.table .bs:hover{
				background-color: #DFEFFF;
			}
			#qwqt{
				float: right;
			}
			#qwqt img{
				width: 40px;
				height: 40px;
				margin: -20px 20px;
			}
			#qx{
				width: 100px;
			}
			#sjcxk,#yhcxk{
				height: 50px;
				float: left;
				margin-left: 600px;
				
			}
			#yhk,#sjk{
				height: 30px;
				width: 400px;
				position: absolute;
			}
			#yh,#sj{
				height: 31px;
				width: 50px;
				border: 1px solid #ccc;
				text-align: center;
				position: relative;
				line-height: 30px;
				background: red;
				margin: -21px 1020px;
				cursor: pointer;/*小手标志*/
			}
			#tab3{
				text-align: center;
			}
			#tab3 td{
				width: 500px;
			}
			#tab3 tr{
				height: 50px;
			}
			#tab3 input{
				height: 48px;
				width: 480px;
				font-size: 28px;
				margin: 2px 0px;
			}
			#tab3 textarea{
				height: 98px;
				width: 80%;
				font-size: 20px;
				margin: 2px 0px;
			}
			#tab4 td{
				width: 500px;
			}
			#tab4 tr{
				height: 50px;
			}
			#tab4 .yhxx{
				height: 48px;
				width: 480px;
				font-size: 28px;
				margin: 2px 0px;
			}
			#tab4 input{
				height: 20px;	
				width: 20px;
				margin: 0px 20px;
			}
			#tab5 img{	
				width: 150px;
				height: auto;
				margin: 0 auto;
				
			}
			#tab5 ul{
				list-style-type: none;
				text-align: center;
				margin-top: 50px;
			} 
			IMG{
				width: 24px;
				height: 24px;
			}
			#mhcx{
				width: 50px;
				height: 32px;
				margin-left:398px
			}
		</style>
		<script>
			var json = {"河北省":["石家庄","廊坊","沧州"],
			    "山西省":["太原","大同","运城"],
			    "黑龙江省":["哈尔滨","齐齐哈尔","佳木斯"],
			    "广西省":["桂林","大同","运城"],
				"湖南省":["长沙","常德","湘潭"],
				"湖北省":["荆州","武汉","荆门"],
				"江西省":["赣州","上饶","南昌"]};
		// 初始化省的下拉选
		function fun1(){
			//1 获得省的select对象
			var province = document.getElementById("province");
			//2 遍历json的所有键
			for(var key in json){  
				// 创建一个option
				var option = document.createElement("option");
				option.innerHTML = key; // <option>河北省</option>
				// 将option添加到select中
				province.appendChild(option);
			}
		}
		
		function fun2(){
			//1 获得市的select对象
			var province = document.getElementById("province");
			var city = document.getElementById("city");
			//2 清空市级下拉选的数据
			city.length =1; 
			//3 获得用户选择的省
			if(!province.selectedIndex){
			//用户选择的是提示选项=>什么也不做
			return;
			}
			var options = province.options;
			var pName = options[province.selectedIndex].innerHTML;
			//4 从json中根据省获得 省下的市数据
			var cities = json[pName];
			//5 遍历市级的数组
			for(var i = 0 ; i<cities.length;i++){
			var cityName = cities[i];
				//创建市的option
				var option = document.createElement("option");
				option.innerHTML = cityName; 
				// 将option添加到select中
				city.appendChild(option);
			}
		}
		var C=document.getElementById("C");
			function Go(){
				document.getElementById("W").click();
			}
		var Y=document.getElementById("Y");
			function Go2(){
				document.getElementById("G").click();
			}
			
			
		</script>
	</head>
	<body onload="fun1();">
		<!--<MARQUEE scrollAmount=10 direction=down behavior=alternate >
		<MARQUEE scrollAmount=10 behavior=alternate >
			<IMG src="img/1.jpg">
				<FONT size=5 >
					<B style="color: #FF6F00;">午夜档欢迎您的到来</B>
					<IMG src="img/2.jpg">
				</FONT>
		</MARQUEE>
	</MARQUEE>-->
		<div class="panel panel-default">
    		<div class="panel-heading">后台界面<span id="qwqt">前往前台<a href="index.html"><img src="img/go.png"></a></span></div>
    		
    		<div class="panel-body"></div>
		</div>
		
		<div class="tabbable tabs-left">
			<ul class="nav nav-tabs">
			    <li class="active"><a href="#tab1" data-toggle="tab">书籍管理</a></li>
			    <li><a href="#tab2" data-toggle="tab">用户管理</a></li><!-- onclick="fyservlet" -->
			    <li><a href="#tab3" data-toggle="tab" id="W">书籍信息管理</a></li>
			    <li><a href="#tab4" data-toggle="tab" id="G">用户信息管理</a></li>
			    <li><a href="#tab5" data-toggle="tab">联系我们</a></li>
			</ul>
			<div class="tab-content ">
			    <div class="tab-pane active" id="tab1">
			    	<table class="table">
			    		<center>书籍信息管理</center></br>
			    		<!-- <script type="text/javascript">
	//模糊查询
	var mhcx=document.getElementById("mhcx");
	mhcx.onclick=function (){
		var name=document.getElementById("sjk").value;
		window.location.href="selectSkServlet?name="+name;
	}
	</script> -->
			    		 <form action="selectSkServlet" method="post">
			    			<div id="sjcxk"></div>书籍查询：<input type="text" id="sjk" name="scx"><input type="submit" value="确定" id="mhcx"></div>
					  	 </form>
					  <thead>
					    <tr class="bq">
					      <th>书籍编号</th>
					      <th>图片</th>
					      <th>书籍名称</th>
					      <th>类型</th>
					      <th>作者</th>
					      <th>点击量</th>
					      <th>操作</th>
					    </tr>
					  </thead>
					  <tbody>
					  
					    <tr class="bs">
					      <th>${user.xs_id}</th>
					      <td>${user.xs_tp}</td>
					      <td>${user.xs_nm}</td>
					      <td>${user.xs_lx}</td>
					      <td>${user.xs_auter}</td>
					      <td>${user.xs_djl}</td>
					      <td><input type="button" value="删除" onclick="window.location.href='deleteSkServlet?id='+${user.xs_id};">&nbsp;
					      <input type="button" value="修改" id="C" onclick="Go();window.location.href='updateSkServlet1?id='+${user.xs_id};"></td>
					    </tr>
					  </tbody>
					</table>
					<div style="width:250px;margin:0 800px">
						
					</div>
				
				</div>
				
			    <div class="tab-pane" id="tab2">
			    	<table class="table">
			    		<center>用户管理</center></br>
			    		<div id="yhcxk"></div>用户查询：<input type="text" id="yhk" name="count" value=""><div id="yh">确定</div></div>
					  <thead>
					    <tr class="bq">
					      <th>用户id</th>
					      <th>用户账号</th>
					      <th>用户密码</th>
					      <th>用户详细信息</th>
					      <th>用户级别</th>
					      <th>权限</th>
					      <th>操作</th>
					    </tr>
					  </thead>
					  <tbody>
					 
					
					    <tr class="bs">
					      <td>${user.user_id}</td>
					      <td>${user.user_zh}</td>
					      <td>${user.user_mm}</td>
					      <td><a href="UserIdServlet?id=${user.user_id}">用户信息</a></td>
					      <td>${user.user_jb}</td>
					      <td>${user.user_qx}</td>
					      <td><input type="button" value="删除" onclick="window.location.href='deleteUserServlet?id='+${user.user_id};">&nbsp;
					      <input type="button" value="修改" id="Y" onclick="Go2();window.location.href='updatUserServlet1?id='+${user.user_id};"/>
					     	<select id="qx" >
								  		<option>---提权---</option>
								  		<option>vip用户</option>
								  		<option>管理员</option>
								  		<option>普通用户</option>
							</select></td>
					    </tr>
					  </tbody>
					</table>
					<div style="width:250px;margin:0 800px">
					</div>
					
			    </div>
			    <div class="tab-pane" id="tab3">
			    <form action="addskServlet" method="post">
			    	<table border="1" width="98%">
						<tr>
							<th>图片地址</th>
							<td><input type="text" name="tppath" value=""></td>
						</tr>
						<tr>
							<th>书籍名称</th>
							<td><input type="text" name="name" value=""></td>
						</tr>
						<tr>
							<th>书籍类型</th>
							<td><input type="text" name="xslx" value=""></td>
						</tr>
						<tr>
							<th>作者</th>
							<td><input type="text" name="xszz" value=""></td>
						</tr>
						<tr>
							<th>书籍章节</th>
							<td><input type="text" name="xszj" value=""></td>
						</tr>
						<tr>
							<th>小说字数</th>
							<td><input type="text" name="num" value=""></td>
						</tr>
						<tr>
							<th>更新时间</th>
							<td><input type="text" name="updatetime" value=""></td>
						</tr>
						<tr>
							<th>点击量</th>
							<td><input type="text" name="djl" value=""></td>
						</tr>
						<tr>
							<th>推荐量</th>
							<td><input type="text" name="tjl" value=""></td>
						</tr>
						
						<tr>
							<th>书籍详细</th>
							<td><textarea name="xsxx" row="3" cols="20"></textarea></td>
						</tr>
					</table><input type="submit" name="price" value="确定"  style="margin-top: 50px; width: 200px;">
					</form>
			    </div>
			    <div class="tab-pane" id="tab4">
			    <form action="addUserServlet" method="post">
			    	<table border="1" width="98%">
						<tr>
							<th>账号</th>
							<td><input type="text" class="yhxx" name="yhzh" value=""></td>
						</tr>
						<tr>
							<th>密码</th>
							<td><input type="text" class="yhxx" name="yhmm" value=""></td>
						</tr>
						<tr>
							<th>用户身份证号</th>
							<td><input type="text" class="yhxx" name="yhsfzh" value=""></td>
						</tr>
						<tr>
							<th>用户姓名</th>
							<td><input type="text" class="yhxx" name="yhxm" value=""></td>
						</tr>
						<tr>
							<th>用户性别</th>
							<td>
									<input type="radio" name="sex" value="男"/>男
									<input type="radio" name="sex" value="女"/>女
									<input type="radio" name="sex" value="密"/>保密</td>
						</tr>
						<tr>
							<th>用户地址</th>
							<td><select name="sheng" id="province" onchange="fun2();" >
								  		<option>---请选择省---</option>
								  	</select>
								  	<select name="shi" id="city" >
								  		<option>---请选择市---</option>
								  	</select></td>
						</tr>
						<tr>
							<th>用户手机号</th>
							<td><input type="text" class="yhxx" name="yhsjh" value=""></td>
						</tr>
						<tr>
							<th>用户级别</th>
							<td><input type="text" class="yhxx" name="yhjb" value=""></td>
						</tr>
						<tr>
							<th>用户权限</th>
							<td><input type="text" class="yhxx" name="yhqx" value=""></td>
						</tr>
					</table>
					<input type="submit" name="price" value="确定" onclick="" style="margin:50px 44%; width: 200px; height: 40px;">
			   		</form>
			   </div>
			    <div class="tab-pane" id="tab5">
			    	<ul>
						<li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1395023445&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:1395023445:51" alt="联系我们" title="联系我们"/></a></li>
			    		<li><a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=6adad0115eaacc6cc57afafa726346997a62fdf340a0e9e8da2709d0ed6a05db"><img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="分享" title="分享"></a></li>
			    		<li><a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=Xm9tZ2tubG1qamseLy9wPTEz" style="text-decoration:none;"><img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_12.png"/></a></li>
			    	</ul>
			    </div>
			</div>
		</div>

	</body>
	
</html>

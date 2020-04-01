<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="overflow: auto; overflow-x:hidden">
	<head>
		<meta charset="UTF-8">
		<title>注册页面</title>
		<link href="img/bitbug_favicon.ico" rel="icon" type="image/x-ico">
		<style type="text/css">
			*{ 
				margin: 0;
			    padding: 0;
			    list-style-type: none;
			}
			table{
				width: 70%;
				margin-left: 15%;
				margin-top: -30px;
			}
			td{
				width: 40px;
			}
			#fh{
				width: 100%;
				height: 50px;
				margin: 0;
				background-color: #DFEFFF;
				border: 1px solid #ccc;
			}
			#tp{
				width: 100%;
				height: 200px;
				margin: 0;
				border: 1px solid #ccc;
			}
			#tp img{
				width: 100%;
				height: 200px;
			}
			#tp span{
				z-index: 999;
				width: 100;
				height: 50px;
				position: absolute;
				font-size: 30px;
				font-weight: 700;
				margin: -110px 860px;
			}
		</style>
		<script>
			//检验用户名
function checkLname()
{
    var lname = document.getElementById("lname").value;
    var spanNode = document.getElementById("lnamespan");
    var tip = document.getElementById("DLMtip");
    var reg = /^[\u4E00-\u9FA5|A-Za-z]([a-zA-Z0-9_\u4e00-\u9fa5]){3,20}$/;   //^'和'$' 作用是分别指出一个字符串的开始和结束。 
          
    if(reg.test(lname))
    {
         tip.innerHTML = "";      //向对象插入""里的内容
         spanNode.innerHTML = "正确".fontcolor("green");  
        return true;  
    }
    else
    {
         tip.innerHTML = "*".fontcolor("red"); 
         spanNode.innerHTML = "3-20位，中文、字母、数字、下划线的组合，以中文或字母开头"; 
         return false; 
    }
}
//检验密码
function checkPwd()
{
     var pwd = document.getElementById("pwd").value;
     var spanNode = document.getElementById("pwdspan");
     var tip = document.getElementById("MMtip");  
     var reg = /^[\s\S]{6,20}$/;       // \s:[a-zA-Z0-9] ; \S 取反：非空白字符
     
     if(reg.test(pwd))
    {
         tip.innerHTML = ""; 
         spanNode.innerHTML = "正确".fontcolor("green");  
         return true;  
     }
    else
    {
         tip.innerHTML = "*".fontcolor("red"); 
         spanNode.innerHTML = "6-20位英文(区分大小写)、数字、字符的组合"; 
         return false; 
     }
}
//检验确认密码
function checkRepwd()
{
    var pwd = document.getElementById("pwd").value;
     var repwd = document.getElementById("repwd").value;
     var spanNode = document.getElementById("repwdspan");
     var tip = document.getElementById("QRMMtip");  
     var reg = /^[\s\S]{6,20}$/;
     
    if(reg.test(repwd))
    {
         if(pwd==repwd)
        {
             tip.innerHTML = ""; 
             spanNode.innerHTML = "正确".fontcolor("green");  
             return true;  
         }
        else
        {
             tip.innerHTML = "*".fontcolor("red"); 
             spanNode.innerHTML = "请再次确认密码"; 
             return false; 
         }
     }
    else
    {
         tip.innerHTML = "*".fontcolor("red"); 
         spanNode.innerHTML = "请再次确认密码"; 
         return false; 
    }
}

function hideShowPwd()
{
    var img = document.getElementById("demo_img");
    var pwd = document.getElementById("pwd");
        
    if (pwd.type == "password") 
    {
        pwd.type = "text";
        img.src = "img/eye-fill.png";
    }else
    {
        pwd.type = "password";
        img.src = "img/eyeclose-fill.png";
    }
}

function hideShowRepwd()
{
    var img = document.getElementById("demo_img2");
    var pwd = document.getElementById("repwd");
        
    if (pwd.type == "password") 
    {
        pwd.type = "text";
        img.src = "img/eye-fill.png";
    }
    else
    {
        pwd.type = "password";
        img.src = "img/eyeclose-fill.png";
    }
}
//检验姓名
function checkName()
{
    var name = document.getElementById("name").value;
    var spanNode = document.getElementById("namespan");
    var tip = document.getElementById("XMtip");  
    var reg = /^[\u4e00-\u9fa5]{2,4}$/;
    
    if(reg.test(name))
    {
        tip.innerHTML = ""; 
        spanNode.innerHTML = "正确".fontcolor("green");  
        return true;  
    }
    else
    {
        tip.innerHTML = "*".fontcolor("red"); 
        spanNode.innerHTML = "请填写姓名"; 
        return false; 
    }
}


//检验身份证号
function checkNumber()
{
    var number = document.getElementById("number").value;
    var spanNode = document.getElementById("numberspan");
    var tip = document.getElementById("SFZtip");  
    var reg =/^\d{17}X$|^\d{18}$/;
    
    if(reg.test(number))
    {
        tip.innerHTML = ""; 
        spanNode.innerHTML = "正确".fontcolor("green");  
        return true;  
    }
    else
    {
        tip.innerHTML = "*".fontcolor("red"); 
        spanNode.innerHTML = "请填写身份证号"; 
        return false; 
    }
}
			
			function showTips(id,info){
				document.getElementById(id+"span").innerHTML="<font color='gray'>"+info+"</font>";
			}
			function check(id,info){
				//1.获取用户输入的用户名数据
				var uValue = document.getElementById(id).value;
				//2.进行校验
				if(uValue==""){
					document.getElementById(id+"span").innerHTML="<font color='red'>"+info+"</font>";
				}else{
					document.getElementById(id+"span").innerHTML="";
				}
			}
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
		//检验手机号
function checkPhone()
{
     var phone = document.getElementById("phone").value;
     var spanNode = document.getElementById("phonespan");
     var tip = document.getElementById("SJHtip");  
     var reg = /^1[34578][0-9]{9}$/;
     
     if(reg.test(phone))
    {
         tip.innerHTML = ""; 
         spanNode.innerHTML = "正确".fontcolor("green");  
         return true;  
     }
    else
    {
         tip.innerHTML = "*".fontcolor("red"); 
         spanNode.innerHTML = "请填写11位有效的手机号码"; 
         return false; 
     }
}


		</script>
	</head>
	<body  onload="fun1();">
	<!--
    	作者：1395023445@qq.com
    	时间：2019-05-20
    	描述：注册页面
    -->
		<form action="" method="post">
			<div id="fh">
				<a href="dl.jsp"><img src="img/shangyibu.png" style="width: 40px;height: 40px;margin: 4px 20px;"/></a>
				<a href="login"><img src="img/yemian-copy-copy-copy.png" style="width: 38px;height: 38px;float:right;margin: 5px 30px;"/></a>
			</div>
			<div id="tp">
				<img src="img/27.jpg"/>
				<span>午夜档</span>
			</div>
		<table align="center" width="1300px" cellpadding="0px" cellspacing="0px">
			
			<!--3.注册表单-->
			<tr>
				<td height="600px" background="../img/regist_bg.jpg">
					<!--嵌套一个十行二列的表格-->
					<form action="#" method="get" name="regForm" onsubmit="return checkForm()">
						<table border="1px" width="750px" height="400px" align="center" cellpadding="0px" cellspacing="0px" bgcolor="white">
							<tr height="40px">
								<td colspan="2" style="text-align:center">
									<font size="4">会员注册</font> &nbsp;&nbsp;&nbsp;USER REGISTER 
								</td>
							</tr>
							<tr>
								<td class="left" style="text-align:center"><span id="DLMtip"></span>登录名：</td>
                        		<td class="center"><input type="text" name="lname" id="lname" onblur="checkLname()" />
                        		<span id="lnamespan" class="spa" ></span></td>
							</tr>
							<tr>
								<td class="left" style="text-align:center"><span id="MMtip"></span>密码：</td>
		                        <td class="center">
		                            <input type="password" id="pwd" name="pwd" onblur="checkPwd()" />
		                            <img class="demo_img" id="demo_img" onclick="hideShowPwd()" src="img/eyeclose-fill.png" style="width:20px; height:20px;top: 5px;" ;/>
		                        	<span id="pwdspan" class="spa" ></span></td>
							</tr>
							<tr>
								<td class="left" style="text-align:center"><span id="QRMMtip"></span>确认密码：</td>
		                        <td class="center">
		                            <input type="password" id="repwd" name="repwd" onblur="checkRepwd()" />
		                            <img class="demo_img2" id="demo_img2" onclick="hideShowRepwd()" src="img/eyeclose-fill.png" style="width:20px; height:20px;" ;/>  
		                        	<span id="repwdspan" class="spa"></span></td>
							</tr>
							<tr>
								<td class="left" style="text-align:center"><span id="SFZtip"></span>身份证号：</td>
		                        <td class="center">
		                        	<input type="text" name="number" id="number" onblur="checkNumber()" />
		                        	<span id="numberspan" class="spa"></span></td>
							</tr>
							<tr>
								<td class="left" style="text-align:center"><span id="XMtip"></span>姓名：</td>
		                        <td class="center">
		                        	<input type="text" name="name" id="name" onblur="checkName()" />
		                        	<span id="namespan" class="spa" ></span></td>
							</tr>
							<tr>
								<td style="text-align:center">
									性别：
								</td>
								<td>
									<input type="radio" name="sex" value="男"/>男
									<input type="radio" name="sex" value="女"/>女
								</td>
							</tr>
							<tr>
								<td style="text-align:center">
									地址：
								</td>
								<td>
									<select id="province" onchange="fun2();" >
								  		<option>---请选择省---</option>
								  	</select>
								  	<select id="city" >
								  		<option>---请选择市---</option>
								  	</select>
								</td>
							</tr>
							 <tr>
		                        <td class="left" style="text-align:center"><span id="SJHtip"></span>手机号：</td>
		                        <td class="center">
		                        	<input type="text" name="phone" id="phone" onblur="checkPhone()" />
		                        	<span id="phonespan" class="spa"></span></td>
		                    </tr> 
		                    <script>
							</script>    
							<tr>
								<td style="text-align:center">
									验证码：
								</td>
								<td>
									<input type="text" name="yzm" />
									<img src="kaptcha.jpg" id="kaptchaImage" style="margin-top: -8px;width: 140px;height: 43px;" title="点击刷新验证码"/>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" value="注册" style="width:80px; height:30px; margin-left: 46%;"/>
								</td>
							</tr>
						</table>
					</form>
				</td>				
			</tr>
			<!--5.友情链接和版权信息-->
			<tr>
				<td style="bottom:0px; text-align:center; left: 45%;">
					
					<p >
						Copyright © 2019  版权所有 
					</p>
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>

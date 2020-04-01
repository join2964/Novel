<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户修改</title>
<script type="text/javascript" src="js/jQuery.js"></script>
<style>
	*{
		margin: 0;
		padding: 0;
		list-style-type: none;
	}
	table{
		margin:100px 33%;
	}
	#anniu{
		height: 35px;
		width: 65px;
		margin-left:47%;
	}
</style>
</head>
<body>
<form method="post" action="updateUserServlet">
<input type="hidden" name="id" value="${yh.user_id}"/>
<table border="1" width="600">
	<tr>
							<th>账号</th>
							<td><input type="text" class="yhxx" name="yhzh" value="${yh.user_zh}" readonly="true" style="opacity: 0.5;"></td>
						</tr>
						<tr>
							<th>密码</th>
							<td><input type="text" class="yhxx" name="yhmm" value="${yh.user_mm}"></td>
						</tr>
						<tr>
							<th>用户身份证号</th>
							<td><input type="text" class="yhxx" name="yhsfzh" value="${yh.user_sfid}" readonly="true" style="opacity: 0.5;"></td>
						</tr>
						<tr>
							<th>用户姓名</th>
							<td><input type="text" class="yhxx" name="yhxm" value="${yh.user_nm}"></td>
						</tr>
					 
						<tr>
							<th>用户性别</th>
							<td>
									<input id="isc0" class="rName" type="radio" name="sex" value="男"/>男
									<input id="isc1" class="rName" type="radio" name="sex" value="女"/>女</td>
						</tr> 
						
						<tr>
							<th>用户地址</th>
							<td><select id="province" onchange="fun2();" >
								  		<option name="sheng">---请选择省---</option>
								  	</select>
								  	<select id="city" >
								  		<option name="shi">---请选择市---</option>
								  	</select></td>
						</tr>
						<tr>
							<th>用户手机号</th>
							<td><input type="text" class="yhxx" name="yhsjh" value="${yh.user_phone}"></td>
						</tr>
						<tr>
							<th>用户级别</th>
							<td><input type="text" class="yhxx" name="yhjb" value="${yh.user_jb}" readonly="true" style="opacity: 0.5;"></td>
						</tr>
						<tr>
							<th>用户权限</th>
							<td><input type="text" class="yhxx" name="yhqx" value="${yh.user_qx}" readonly="true" style="opacity: 0.5;"></td>
						</tr>
</table>
<input type="submit" id="anniu" value="确定">
</form>
</body>
						<script>
					    //js设置radio选中
					    var str='${yh.user_sex}';
					    if(str=='男'){
					        $("#isc0").attr("checked","checked");
					        $("#isc1").removeAttr("checked");
					    }else{
					        $("#isc1").attr("checked","checked");
					        $("#isc0").removeAttr("checked");
					    }
						</script>
</html>
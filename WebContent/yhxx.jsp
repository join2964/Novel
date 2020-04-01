<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>用户个人信息</title>
		<style>
			table{
				margin: 50px auto;
			}
			.yhxx{
				width:500px;
				height:40px;
				font-size: 30px;
				margin-left:80px;
			}
			#anniu{
				margin:30px auto;
			}
			#anniu{
				width:80px;
				height:35px;
			}
		</style>
	</head>
	<body>
		<table cellpadding="0" cellspacing="0" border="1" width="800px">
	<tr>
							<th>账号</th>
							<td><input type="text" class="yhxx" name="yhzh" value="${tuser.user_zh}" readonly="" ></td>
						</tr>
						<tr>
							<th>密码</th>
							<td><input type="text" class="yhxx" name="yhmm" value="${tuser.user_mm}" readonly=""></td>
						</tr>
						<tr>
							<th>用户身份证号</th>
							<td><input type="text" class="yhxx" name="yhsfzh" value="${tuser.user_sfid}" readonly=""></td>
						</tr>
						<tr>
							<th>用户姓名</th>
							<td><input type="text" class="yhxx" name="yhxm" value="${tuser.user_nm}" readonly=""></td>
						</tr>
						<tr>
							<th>用户性别</th>
							<td><input type="text" class="yhxx" name="yhxb" value="${tuser.user_sex}" readonly=""></td>
						</tr> 
						
						<tr>
							<th>用户地址</th>
							<td><input type="text" class="yhxx" name="yhxb" value="${tuser.user_adress}" readonly=""></td>
						</tr>
						<tr>
							<th>用户手机号</th>
							<td><input type="text" class="yhxx" name="yhsjh" value="${tuser.user_phone}" readonly=""></td>
						</tr>
						<tr>
							<th>用户级别</th>
							<td><input type="text" class="yhxx" name="yhjb" value="${tuser.user_jb}" readonly=""></td>
						</tr>
						<tr>
							<th>用户权限</th>
							<td><input type="text" class="yhxx" name="yhqx" value="${tuser.user_qx}" readonly=""></td>
						</tr>
			</table>
			<div id="anniu" >
				<a href="ht.jsp"><input type="submit" value="确定" style="width:80px; height:35px;"></a>
			</div>
	</body>
</html>

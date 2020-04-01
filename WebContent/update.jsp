<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="updateSkServlet">
<input type="hidden" name="id" value="${tsk.xs_id}"/>
<table border="1" width="600">
	<tr>
							<th>图片地址</th>
							<td><input type="text" name="tppath" value="${tsk.xs_tp}"></td>
						</tr>
						<tr>
							<th>书籍名称</th>
							<td><input type="text" name="name" value="${tsk.xs_nm}"></td>
						</tr>
						<tr>
							<th>书籍类型</th>
							<td><input type="text" name="xslx" value="${tsk.xs_lx}"></td>
						</tr>
						<tr>
							<th>作者</th>
							<td><input type="text" name="xszz" value="${tsk.xs_auter}"></td>
						</tr>
						<tr>
							<th>书籍章节</th>
							<td><input type="text" name="xszj" value="${tsk.xs_chapter}"></td>
						</tr>
						<tr>
							<th>小说字数</th>
							<td><input type="text" name="num" value="${tsk.xs_num}"></td>
						</tr>
						<tr>
							<th>更新时间</th>
							<td><input type="text" name="updatetime" value="${tsk.xs_updatetime}"></td>
						</tr>
						<tr>
							<th>点击量</th>
							<td><input type="text" name="djl" value="${tsk.xs_djl}"></td>
						</tr>
						<tr>
							<th>推荐量</th>
							<td><input type="text" name="tjl" value="${tsk.xs_tjl}"></td>
						</tr>
						
						<tr>
							<th>书籍详细</th>
							<td><textarea id="ar1" name="xsxx" row="3" cols="20">${tsk.xs_ms}</textarea></td> 
						</tr>
</table>
<input type="submit" value="确定">
</form>
</body>
</html>
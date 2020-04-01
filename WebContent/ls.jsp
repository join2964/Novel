<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="overflow: auto; overflow-x:hidden; overflow-y:hidden;">
	<head>
		<meta charset="UTF-8">
		<title>历史记录</title>
		<link href="img/bitbug_favicon.ico" rel="icon" type="image/x-ico">
		<!--
        	作者：1395023445@qq.com
        	时间：2019-05-23
        	描述：历史记录查询
        -->
		<style type="text/css">
			*{ 
				margin: 0;
			    padding: 0;
			    list-style-type: none;
			    text-decoration: none;
			}
			#fh{
				width: 100%;
				height: 50px;
				margin: 0;
				background-color: #DFEFFF;
				border: 1px solid #ccc;
			}
			#cx{
				width: 100%;
				height: 50px;
				border-bottom: 2px solid #999;
				text-align: center;
				line-height: 40px;
			}
			#cx input{
				width: 120px;
				height: 20px;
			}
			#ls_1{
				width: 70%;
				height: 900px;
				border: 1px solid #ccc;
				margin: 10px auto;
			}
			#lsjl{
				width: 100%;
				height: 785px;
			}
			#lsjl img{
				float: left;
				width: 50px;
				height:72px;
				margin: 12px 20px;
				border: 1px solid #ccc;
			}
			#fy{
		   		width: 100%;
			    height: 85px;
			    border: 1px solid #ccc;
			    background-color: #eee;
			    margin: -40px -1px;
		   	}
		</style>
	</head>
	<body>
		<div id="ls">
			<div id="fh">
				<a href="index.jsp"><img src="img/shangyibu.png" style="width: 40px;height: 40px;margin: 4px 20px;"/></a>
				<a href="index.jsp"><img src="img/yemian-copy-copy-copy.png" style="width: 38px;height: 38px;float:right;margin: 5px 30px;"/></a>
			</div>
			
			<div id="ls_1">
				<div id="cx">
				<form action="lscxservlet">
					查询
					<input type="text" id="year"/>年
					<input type="text" id="month"/>月
					<input type="text" id="day"/>日
					阅读书籍
					<input type="button" id="cxyd" value="确定" width="30px"/>
				</form>
				</div>
				<div id="lsjl">
					<table  border="1" cellpadding="0" cellspacing="0">
						<tr style="text-align:center;">
							<td>图片</td>
							<td>名字</td>
							<td>类别</td>
							<td>作者</td>
							<td>章节数</td>
							<td>简介</td>
							<td>历史浏览时间</td>
						</tr>
						<c:if test="${lsjl!=null}">
			            <c:forEach var="lsjl" items="${lsjl }">
			            <tr>
			                <td><img src="${lsjl.xs_lstp }"/></td>
			                <td width="150px">${lsjl.xs_lsnm }</td>
			                <td width="20px">${lsjl.xs_lslx }</td>
			                <td width="20px">${lsjl.xs_lsauter }</td>
			                <td width="70px">${lsjl.xs_lschapter }章</td>
			                <td>${lsjl.xs_lsms }</td>
			                <td width="110px">${lsjl.xs_lsupdatetime }</td>
			            </tr>
			            </c:forEach>
			            </c:if>
			            <c:if test="${lsjl==null}">
			           		<td>暂无记录</td>
			                <td>暂无记录</td>
			                <td>暂无记录</td>
			                <td>暂无记录</td>
			                <td>暂无记录</td>
			                <td>暂无记录</td>
			                <td>暂无记录</td>
			                <td></td>
			            </c:if>
			         </table>
				</div>
				<div id="fy">
					<div style="width:400px;margin:20px 500px">
							总页数:${page.total }&nbsp;&nbsp;
							<c:if test="${page.pageNumber+1==1}">
							上一页
							</c:if>
							<c:if test="${page.pageNumber+1>1}">
							<a href="bookHistory?user_zh=${yh.user_zh }&pageNumber=${page.pageNumber-1}">上一页</a>
							</c:if>
							<c:forEach var="i" begin="1" end="${page.total }">
							<a href="bookHistory?user_zh=${yh.user_zh }&pageNumber=${i-1}" >${i }</a>
							</c:forEach>
							<c:if test="${page.pageNumber+1==page.total}">
							下一页
							</c:if>
							<c:if test="${page.pageNumber+1<page.total }">
							<a href="bookHistory?user_zh=${yh.user_zh }&pageNumber=${page.pageNumber+1 }">下一页</a>
							</c:if>
							&nbsp;&nbsp;当前页:${page.pageNumber+1 }&nbsp;&nbsp;共:${page.count }条数据
					</div>
				</div>
				
		</div>
	</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="overflow: auto; overflow-x:hidden;">
	<head>
		<meta charset="UTF-8">
		<title>我的书架</title>
		<link href="img/bitbug_favicon.ico" rel="icon" type="image/x-ico">
		<!--
        	作者：1395023445@qq.com
        	时间：2019-05-23
        	描述：书架-》全选全不选
        -->
		<script type="text/javascript">

	window.onload = function(){
		//获取多选框items
		var items = document.getElementsByName("items");
		//获取全选/全不选的多选框
		var checkedAllBox = document.getElementById("checkedAllBox");
		//1.#checkedAllBtn
		//为id为checkedAllBtn的按钮绑定一个单击响应函数
		var checkedAllBtn = document.getElementById("checkedAllBtn");
		
		//#checkedAllBox
		/*
		 * 全选/全不选 多选框
		 * 	- 当它选中时，其余的也选中，当它取消时其余的也取消
		 * 
		 * 在事件的响应函数中，响应函数是给谁绑定的this就是谁
		 */
		//为checkedAllBox绑定单击响应函数
		checkedAllBox.onclick = function(){
			
			//alert(this === checkedAllBox);
			
			//设置多选框的选中状态
			for(var i=0; i <items.length ; i++){
				items[i].checked = this.checked;
			}
			
		};
		/*
		 * 如果四个多选框全都选中，则checkedAllBox也应该选中
		 * 如果四个多选框没都选中，则checkedAllBox也不应该选中
		 */
		//为四个多选框分别绑定点击响应函数
		for(var i=0 ; i<items.length ; i++){
			items[i].onclick = function(){
				
				//将checkedAllBox设置为选中状态
				checkedAllBox.checked = true;
				
				for(var j=0 ; j<items.length ; j++){
					//判断四个多选框是否全选
					//只要有一个没选中则就不是全选
					if(!items[j].checked){
						//一旦进入判断，则证明不是全选状态
						//将checkedAllBox设置为没选中状态
						checkedAllBox.checked = false;
						//一旦进入判断，则已经得出结果，不用再继续执行循环
						break;
					}
					
				}
				
			};
		}
		
		
	};
	
</script>
		<style type="text/css">
			*{ 
				margin: 0;
			    padding: 0;
			    list-style-type: none;
			    text-decoration: none;
			}
			#sj_1{
				width: 100%;
				height: 50px;
				margin: 0;
				background-color: #DFEFFF;
				border: 1px solid #ccc;
				
			}
			#sj_2{
				width: 60%;
				height: 530px;
				border: 1px solid #ccc;
				margin:20px 20%;
				position: absolute;
				background-color: #DFEFFF;
			}
			table{
		   		margin:20px auto;
		   		width: 100%;
		   		
		    }
		   	td{
		   		border-bottom:1px solid #ccc;
		   		height: 50px;
   				text-align:center;
		   	}
		   	.sc:hover{
		   		opacity: 0.7;
		   	}
		   	#fy{
		   		width: 100%;
		   		height: 60px;
		   		border: 1px solid #ccc;
		   		background-color: #eee;
		   		position: absolute;
		   		bottom: -62px;
		   		left: -1px;
		   	}
		   	#fy #checkedAllBox{
		   		width: 17px;
		   		height: 17px;
		   		margin: 22px 10px 0px 40px;
		   	}
		   	#fy #scan{
		   		width: 50px;
		   		height: 25px;
		   		margin: 20px 10px 0px 40px;
		   		opacity: 0.7;
		   	}
		   	#ym{
		   		font-size: 18px;
		   		float: right;
		   		line-height: 25px;
		   		text-align:center;
		   		color: #FFFFFF;
		   		background-color: #ff00ad;
		   		margin:20px 2px 0px 0px ;
		   		
		   	}
		   	
		</style>
	</head>
	<body>
		<div id="sj">
			<div id="sj_1">
				<a href="index.jsp"><img src="img/shangyibu.png" style="width: 40px;height: 40px;margin: 4px 20px;"/></a>
				<a href="index.jsp"><img src="img/yemian-copy-copy-copy.png" style="width: 38px;height: 38px;float:right;margin: 5px 30px;"/></a>
			</div>
			<div id="sj_2">
				<table cellpadding="0" cellspacing="0">
					<tr bgcolor="#AEE7CE">
						<td></td>
						<td style="font-weight: 700;" >序号</td>
						<td style="font-weight: 700;">小说名称</td>
						<td style="font-weight: 700;">作者</td>
						<td style="font-weight: 700;">章节</td>
						<td style="font-weight: 700;">时间</td>
						<td style="font-weight: 700;">操作</td>
					</tr>
					<c:forEach var="pageYhsj" items="${pageYhsj}">
					<tr>
						<td ><input type="checkbox" name="items" value="${pageYhsj.xs_sjxsid}"/></td>
						<td>${pageYhsj.xs_sjxsid}</td>
						<td>${pageYhsj.xs_sjnm}</td>
						<td>${pageYhsj.xs_sjauter}</td>
						<td>${pageYhsj.xs_sjchapter}</td>
						<td>${pageYhsj.xs_sjupdatetime}</td>
						<td><span class="sc" style="cursor:pointer;border: 1px solid #ccc;background-color: red;" >开始阅读</span></td>
					</tr>
					 </c:forEach>
				</table>
				<div id="fy">
					<input type="checkbox" value="" id="checkedAllBox" />全选
					<input type="button" id="scan" value="删除" onclick="shanchu()" />
					<div id="ym">
						总页数:${page.total }&nbsp;&nbsp;
						<c:if test="${page.pageNumber+1==1}">
						上一页
						</c:if>
						<c:if test="${page.pageNumber+1>1}">
						<a href="bookShelf?user_zh=${yh.user_zh }&pageNumber=${page.pageNumber-1}">上一页</a>
						</c:if>
						<c:forEach var="i" begin="1" end="${page.total }">
						<a href="bookShelf?user_zh=${yh.user_zh }&pageNumber=${i-1}" >${i }</a>
						</c:forEach>
						<c:if test="${page.pageNumber+1==page.total}">
						下一页
						</c:if>
						<c:if test="${page.pageNumber+1<page.total }">
						<a href="bookShelf?user_zh=${yh.user_zh }&pageNumber=${page.pageNumber+1 }">下一页</a>
						</c:if>
						&nbsp;&nbsp;当前页:${page.pageNumber+1 }&nbsp;&nbsp;共:${page.count }条数据
					</div>
				</div>
		</div>
		</div>
	</body>
	<script type="text/javascript" src="js/jQuery.js"></script>
	<script type="text/javascript">
	      function shanchu(){
	    	  var xs_sjxsid='';
	    	  var items = $("input[name=items]:checked");
	    	  if(items.length == 0) {
                  alert("請至少選擇一個")
                  return
              }
	              for(var i = 0; i < items.length; i++) {
	            	  if(i==0){
	            		  xs_sjxsid += items[i].value;
	            	  }else{
	            	  xs_sjxsid += ','+items[i].value;
	            	  }
	              }
              window.location.href="delBookShelf?user_zh="+${yh.user_zh }+"&xs_sjxsid="+xs_sjxsid;
	      }
	</script>
</html>

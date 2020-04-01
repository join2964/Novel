<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<!--标题用动态数据，点击哪个类别就显示哪个类别的名称-->
		<title>标题</title>
		<style type="text/css">
			/* 公共样式 */
			*,
			body {
			  padding: 0;
			  margin: 0;
			  list-style: none;
			  font-size: 14px;
			  user-select: none;
			  -webkit-user-select: none;
			  -moz-user-select: none;
			  -ms-user-select: none;
			  text-decoration: none;	
			}
			
			.hide {
			  display: none;
			}
			/*小说显示区域css*/
			.ui-body{
				width: 100%;
				min-height: 600px;
				height: auto;
			}
			.ui-body-main{
				width: 1000px;
				min-height: 600px;
				height: auto;
				margin: 0px auto;
			}
			.sort{
				width: 1000px;
				height: 75px;
			}
			.reveal{
				width: 1000px;
				min-height: 480px;
				height: auto;
			}
			.books{
				width: 150px;
				height: 220px;
				margin: 10px 25px;
			}
			.books-img{
				width: 150px;
				height: 187px;
				background: #808080;
			}
			.books-img img{
				width: 150px;
				height: 187px;
			}
			.boos-title{
				width: 150px;
				height: 33px;
				background: #FAEBD7;
			}
			.update{
				width: 1000px;
				height: 40px;
			}
			.button{
				font-size: 16px;
				border: 0px;
				font-family: "微软雅黑";
				outline: none;
				color: white;
				background: orangered;
				border-radius: 40px;
				padding: 0px 20px;
				position: absolute;
			}
			.sortButton{
				height: 35px;
				margin: 22px 183px;
				border: 1px solid rgba(96, 96, 96, -0.7);
			}
			.updateButton{
				width: 950px;
				height: 40px;
				margin-left: 25px;
			}
			.resutl{
				width: 1000px;
				height: 40px;
				line-height: 40px;
				font-size: 20px;
				font-family: "微软雅黑";
			}
			.resutl p{
				margin-left: 25px;
				color: gray;
			}
			.sort-rule{
				height: 75px;
				width: 400px;
				margin-left: 25px;
				position: absolute;
			}
			.select-vague{
				height: 75px;
				width: 400px;
				margin-left: 550px;
			}
			.select-value{
				border-radius: 34px ;
				width: 240px;
				height: 37px;
				font-size: 16px;
				border: 1px solid rgba(96, 96, 96, 0.2);
				font-family: "微软雅黑";
				padding-left: 20px;
				margin:20px 138px;
				outline: none;
				position: absolute;
			}
			.selectButton{
				height: 35px;
				border: 1px solid rgba(96, 96, 96, 0.2);
				margin: 22px 324px;
			}
			
			/* 模拟下拉框 */
			.select-box {
			  position: absolute;
			  margin: 20px 20px;
			}
			
			.select-box .select-input {
			  line-height: 20px;
			  border: 0px;
			  cursor: pointer;
			  width: 240px;
			  height: 39px;
			  outline: none;
			  border-radius: 30px;
			  -webkit-border-radius: 30px;
			  border: 1px solid rgba(96, 96, 96, 0.2);
			  -moz-border-radius: 30px;
			  text-indent: 30px;
			  font-size: 16px;
			  font-weight: 400;
			  /* color: rgba(187, 187, 187, 1); */
			  color: rgba(34, 34, 34, 1);
			  line-height: 22px;
			  margin: 0;
			  background-size: 20px 20px;
			  cursor: pointer;
			  box-sizing: border-box;
			}
			
			/** input placeholder颜色改变 **/
			.select-box .select-input::-webkit-input-placeholder {
			  /* WebKit browsers */
			  color: rgba(187, 187, 187, 1);
			}
			
			.select-box .select-input:-moz-placeholder {
			  /* Mozilla Firefox 4 to 18 */
			  color: rgba(187, 187, 187, 1);
			}
			
			.select-box .select-input::-moz-placeholder {
			  /* Mozilla Firefox 19+ */
			  color: rgba(187, 187, 187, 1);
			}
			
			.select-box .select-input:-ms-input-placeholder {
			  /* Internet Explorer 10+ */
			  color: rgba(187, 187, 187, 1);
			}
			
			.select-box .select-input.isActive {
			  background-color: #ffffff;
			}
			
			.select-box .options-box {
			  border: 1px solid rgba(96, 96, 96, -0.7);
			  position: absolute;
			  top: 55px;
			  left: 0;
			  width: 170px;
			  overflow-y: scroll;
			  overflow-x: hidden;
			  height: 225px;
			  background: rgba(255, 255, 255, 1);
			  box-shadow: 0px 2px 8px 0px rgba(0, 0, 0, 0.25);
			  border-radius: 5px;
			}
			
			.select-box .options-box li {
			  width: 200px;
			  height: 45px;
			  text-indent: 30px;
			  cursor: pointer;
			  font-size: 16px;
			  font-weight: 400;
			  color: rgba(34, 34, 34, 1);
			  line-height: 45px;
			  background: rgba(255, 255, 255, 1);
			}
			
			.select-box .options-box li.active {
			  background-color: rgba(247, 247, 247, 1);
			  color: rgba(2, 176, 159, 1)
			}
			/*- scrollbar -*/
			::-webkit-scrollbar {
			    width: 5px;
			    height: 5px;
			}
			::-webkit-scrollbar-thumb{
			    background-color: #999;
			    -webkit-border-radius: 5px;
			    border-radius: 5px;
			}
			::-webkit-scrollbar-thumb:vertical:hover{
			    background-color: #666;
			}
			::-webkit-scrollbar-thumb:vertical:active{
			    background-color: #333;
			}
			::-webkit-scrollbar-button{
			    display: none;
			}
			::-webkit-scrollbar-track{
			    background-color: #f1f1f1;
			}
		</style>
	</head>
	<body>
		<div class="max">
			<!--头部，导航栏部分-->
			<div class="ui-head">
				<!--这一段用于显示导航栏-->
			</div>
			<div class="ui-body">
				<!--居中div-->
				<div class="ui-body-main">
					<!--搜索结果 例如：关键词：测试数据，共搜索到***条数据
						默认情况下不显示，我这里显示是为了让你看显示效果
					-->
					<div class="resutl">
						<!--展示用的死数据-->
						<p>搜索结果&nbsp;关键词:
							<span style="color: cornflowerblue;">测试数据&nbsp;</span>
							共搜索到
							<span style="color: orangered;">999</span>
							条数据
						</p>
					</div>
					<!--排序，用户自定义排序规则以及对这个类别的模糊搜索-->
					<div class="sort">
						<!--自定义排序规则-->
						<div class="sort-rule">
							<form action="#" method="post">
								<div class="select-box">
									<!--类别id-->
									<input type="hidden" name="class-id" id="class-id" value="" />
								    <input type="text" class="select-input" value="" readonly placeholder="自定义排序规则" />
								    <ul class="options-box hide">
								      <li value="1">按照**12进行排序</li>
								      <li value="2">按照**23进行排序</li>
								      <li value="3">按照**34进行排序</li>
								    </ul>
							    </div>
							    <div id="sortButton">
							    	
							    	<input type="button" class="button sortButton" value="确定"/>
							    </div>
						    </form>
						</div>
						<!--搜索框,模糊查询-->
						<div class="select-vague">
							<form action="#" method="post">
								<!--类别id-->
								<input type="hidden" name="class-id" id="class-id" value="" />
								<input type="text" id="" placeholder="搜索小说" class="select-value"/>
								<input type="submit" value="搜索" class="button selectButton"/>
							</form>
						</div>
					</div>
					<!--显示图书信息，下滑刷新-->
					<div class="reveal">
						<div class="reveal-item">
							<!--表格显示数据，用foreach实现-->
							<table class="reveal-item-table" cellpadding="0" cellspacing="0">
								<tr>
									<c:forEach var="lbxs" items="${lbxs }">
									<td>
										<a href="javascript:;">
											<div class="books">
												<!--小说封面图片-->
												<div class="books-img">
													<img src="${lbxs.xs_tp }">
												</div>
												<div class="boos-title">
													<p style="text-align: center;font-size: 24px;font-family: '微软雅黑';opacity: .8;">${lbxs.xs_nm }</p>
												</div>
											</div>
										</a>
									</td>
									</c:forEach>
								</tr>
							</table>
						</div>
					</div>
					<div class="update">
						<input value="点击加载更多" type="button" class="button updateButton"/>
					</div>
				</div>
			</div>
			<!--底部，版权信息部分-->
			<div class="ui-foot">
				
			</div>
		</div>
	</body>
	<script type="text/javascript">
		window.onload = function () {
		    // 判断是否有某个class
		    function hasClass(ele, cls) {
		      return ele.className.match(new RegExp("(\\s|^)" + cls + "(\\s|$)"));
		    }
		    // //为指定的dom元素添加样式
		    function addClass(ele, cls) {
		      if (!hasClass(ele, cls)) ele.className += " " + cls;
		    }
		    // //删除指定dom元素的样式
		    function removeClass(ele, cls) {
		      if (hasClass(ele, cls)) {
		        var reg = new RegExp("(\\s|^)" + cls + "(\\s|$)");
		        ele.className = ele.className.replace(reg, " ");
		      }
		    }
		
		    document.getElementsByClassName('select-input')[0].onclick = function () {
		      var optionsBox = document.getElementsByClassName('options-box')[0];
		      var selectInput = document.getElementsByClassName('select-input')[0];
		      // 这里最好用children，不要用childNode, 否则会有多余的text节点
		      var lis = optionsBox.children;
		      if (hasClass(optionsBox, 'hide')) { // 如果当前不是正在打开选项状态
		        removeClass(optionsBox, 'hide')
		        addClass(selectInput, 'isActive')
		        for (var i = 0; i < lis.length; i++) {
		          if (lis[i].innerHTML == selectInput.value) { // 如果之前已经选择过，将之前的选项激活状态
		            addClass(lis[i], 'active')
		          } else {
		            removeClass(lis[i], 'active')
		          }
		        }
		      } else {
		        addClass(optionsBox, 'hide');
		        removeClass(selectInput, 'isActive');
		      }
		    }
		
		    document.getElementsByClassName('options-box')[0].onclick = function (e) {
		      var optionsBox = document.getElementsByClassName('options-box')[0];
		      var selectInput = document.getElementsByClassName('select-input')[0];
		      //这一行及下一行是为兼容IE8及以下版本
		      e = e || window.event;
		      var target = e.target || e.srcElement;
		      if (target.tagName.toLowerCase() === "li") {
		      	// 将选中的值赋值给展示框文本
		        selectInput.value = target.innerHTML;
		        // 关闭选择列表
		        addClass(optionsBox, 'hide');
		        // 取消展示框的激活状态
		        removeClass(selectInput, 'isActive');
		      }
		    }
			
			// 列表中选项滑过效果
		    document.getElementsByClassName('options-box')[0].onmouseover = function (e) {
		    // 事件代理
		      var optionsBox = document.getElementsByClassName('options-box')[0];
		      var selectInput = document.getElementsByClassName('select-input')[0];
		      e = e || window.event;
		      var target = e.target || e.srcElement;
		      if (target.tagName.toLowerCase() === "li") {
		        if (target.innerHTML != selectInput.value) { //如果滑过的不是已经选中的，给予暂时的滑过效果
		          addClass(target, 'active');
		        }
		      }
		    }
		
		    document.getElementsByClassName('options-box')[0].onmouseout = function (e) {
		      var optionsBox = document.getElementsByClassName('options-box')[0];
		      var selectInput = document.getElementsByClassName('select-input')[0];
		      //这一行及下一行是为兼容IE8及以下版本
		      e = e || window.event;
		      var target = e.target || e.srcElement;
		      if (target.tagName.toLowerCase() === "li") {
		        if (target.innerHTML != selectInput.value) { // 如果滑出的不是已经选中的，将滑过的效果取消
		          removeClass(target, 'active');
		        }
		      }
		    }
		  }
	</script>
</html>

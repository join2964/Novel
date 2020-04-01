<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="overflow: auto; overflow-x:hidden;">
	<head>
		<meta charset="UTF-8">
		<title>新闻阅读</title>
	<style>
	* {
		margin: 0;
		padding: 0;
	}
	body {
		width: 1920px;
		font-size: 12px
	}
	#yd_whole{
		width: 1920px;
	}
	#yd_top{
		width: 1920px;
		height: 50px;
		border: 1px solid #AAAAAA;
	}
	#yd_top img{
		width: 90px;
		height: 50px;
		margin:0px 50px;
	}
	#yd_top p{
		text-align: center;
    	margin: -40px 0px;
    	font-size: 24px;
	}
	#yd_top #_top_sy{
		position: relative;
		float: right;
		margin:-6px 100px;
	}
	#_top_sy a{
		width: 60px;
		height: 30px;
		font-size: 17px;
		text-decoration :none;
		margin-left:20px;
	}
	#_top_sy #_top_yh{
		width: 100px;
		height:25px;
		font-size: 17px;
		float: right;
		margin: -1px 20px;
		text-align: center;
		border-left: 2px solid #000000;
	} 
	#yd_on{
		width: 1920px;
		height:425px;
		background-color: rgb(248,248,249);
	}
	#yd_on #yd_on_bq{
		font-size: 26px;
	    line-height: 58px;
	    padding-top: 41px;
	    padding-bottom: 21px;
	    text-align: justify;
	    font-weight: 700;
	    font-family: "Microsoft Yahei", "微软雅黑", "宋体";
	    width: 880px;
	    height: 80px;
	    margin: 0px auto;
	}
	#yd_on #xs_fm{
		width: 120px;
	    height: 160px;
	    float: left;
	    margin:20px 50px;
	    position: absolute;
	}
	#yd_on_sjxx{
	    height: 160px;
	    position:relative;
	    left: 190px;
	    top: 20px;
	}
	#sjxx_zs{
		margin-left: 15px;
	}
	#yd_on_sjxx p,a{
		font-size: 17px;
	    display: block;
	    text-decoration :none;
		margin-block-start: 1em;
		margin-block-end: 1em;
		margin-inline-start: 0px;
		margin-inline-end: 0px;
    }
    #sjxx_yd{
   		font-size: 24px;
    	width: 400px;
    	height: 50px;
    	border-radius: 3px;/*设置边框圆角*/
    	background: #00c98d;
    	color: #FFFFFF;
    	text-align: center;
    	line-height: 50px;
    	float: left;
    	margin-left: 500px;
    	margin-top: 40px;
    }
     #sjxx_sj{
   		font-size: 24px;
    	width: 400px;
    	height: 50px;
    	border-radius: 3px;/*设置边框圆角*/
    	background: #00c98d;
    	color: #FFFFFF;
    	text-align: center;
    	line-height: 50px;
    	float: right;
    	margin-right: 500px;
    	margin-top: 40px;
    }
    #sjxx_jj{
    	width: 1900px;
    	float: left;
    	font-size: 17px;
    	margin-left: 15px;
    	position: relative;
    	color: #6E6E6E;
    	display: -webkit-box;
    	overflow: hidden;
    	text-overflow: ellipsis;
    	-webkit-box-orient: vertical;
    	-webkit-line-clamp: 2;
    }
    #sjxx_zj{
    	width: 100%;
    	position: absolute;
    	font-size: 18px;
    	margin: 150px 0px 0px 0px;
    	border-bottom: 1px solid #ddd;
    }
    #sjxx_zj img{
    	width: 25px;
    	height: 25px;
    	margin:15px 15px;
    	position: absolute;
    }
    #sjxx_zjxx{
    	width: 102px;
    	height: 50px;
    	line-height: 55px;
    	float: left;
    	position: relative;
    	left: 50px;
    }
    #sjxx_zjmc{
    	margin-top: 16px;
    	font-size: 16px;
    	color: #6E6E6E;
    }
    #sjxx_ml{
    	width: 100%;
    	position: absolute;
    	margin-top:200px;
    	font-size: 18px;
    	border-bottom: 1px solid #ddd;
    }
    #sjxx_ml img{
    	width: 25px;
    	height: 25px;
    	margin: 15px 5px 0px 15px;
    	position: absolute;
    }
     #sjxx_zjml{
    	width: 102px;
    	height: 50px;
    	line-height: 55px;
    	float: left;
    	position: relative;
    	left: 50px;
    }
    #sjxx_mlmc{
    	margin-top: 16px;
    	font-size: 16px;
    	color: #6E6E6E;
    }
    .icon-right-arrow{
    }
    #yd_in{
    	width: 880px;
	    height: 1150px;
	    margin:0px auto ;
    }
    #yd_in p{
    	font-size: 18px;
    	margin: 51px 0px;
    }
    #yd_in img{
    	width: 800px;
    	height: 300px;
    	margin: 10px 40px;	
    }
    #yd_pl{
    	width: 860px;
    	height: 240px;
    	border: 1px solid #eee;
    	margin-top:100px;
    }
    #pl_bq{
    	width: 860px;
    	height: 40px;
    	color: #999;
    	margin: 2px 10px;
    }
    #pl_bq a{
    	text-decoration: none;
	    margin: -17px 147px;
	    color: #9AB;
	    font-size: 13px;
    }
    #pl_qj{
    	width: 860px;
    	height: 198px;
    }
    #pl_tx{
    	width: 50px;
    	height: 50px;
    	float: left;
    	margin-top: 10px;
    }
    #pl_tx img{
    	margin:-1px 15px;
    	width: 100%;
    	height: 100%;
    	border-radius: 50%;
    }
    #pl_yh{
    	width: 775px;
    	height: 193px;
    	border: 2px solid #ccc;
    	float: right;
    }
    #pl_xx{
    	width: 775px;
    	height: 130px;
    }
    #pl_xx #dhwb{
	    height: 118px;
	    width: 740px;
	    display: block;
	    border: none;
	    font-size: 16px;
	    line-height: 24px;
	    margin:10px 0 2px 15px;
	    color: #4b4b4b;
	    outline: none;/*去掉边框样式   */
    }
    #pl_db{
    	width: 775px;
    	height: 60px;
    	position: relative;
    	border-top: 1px solid #ccc;
    }
    #pl_db span{
    	font-family: "仿宋";
    	position: absolute;
    	width: 200px;
    	height: 60px;
    	font-size: 16px;
    	font-weight: 700;
    	line-height: 55px;
    	margin-left: 20px;
    }
    #pl_db #pl_anliu{
    	width: 90px;
    	height: 30px;	
    	background-color: #1E90FF;	
    	font-size: 15px;
    	text-align: center;
    	line-height: 30px;
    	color: #FFFFFF;
    	border-radius: 50px;/*设置边框圆角*/
    	margin: 12px 20px;
    	float: right;
    	cursor: pointer;/*小手标志*/
    }
    #comment{
    	width: 880px;
	    margin:70px auto ;
	    position: absolute;
    }
    #comment_bq{
    	width: 880px;
    	height: 35px;
    	font-size: 20px;
    }
    .comment_one{
    	width: 880px;
    	top: 80px;
    	border-top: 2px solid #aaa;
    }
    .comment_tx{
    	width: 50px;
    	height: 50px;
    	float: left;
    	margin-top: 35px;
    }
    .comment_name{
    	height: 54px;
	    margin-left: 20px;
	    margin-top: -20px;
    }
    .comment_name span{
    	font-size: 13px;
    	margin-left: 16px;
    }
    .comment_plxx{
    	width: 810px;
    	float: right;
    	margin-top: -20px;
    	margin-left:50px;
    	font-size: 15px;
    }
	</style>
<script type="text/javascript" src="js/jQuery.js"></script>
<script type="text/javascript" src="js/date.js"></script>
<script type="text/javascript" src="js/date2.js"></script>
<script type="text/javascript">
function show(id)
{
    //alert(id);
    var img = document.getElementById(id);
    if(img.style.display == "block")
    {
     document.getElementById(id).style.display = "none";
    }
    else if(document.getElementById(id).style.display == "none")
    {
        document.getElementById(id).style.display = "block";
    }
}
</script>

	</head>
	<body>
		<div id="yd_whole">
			<div id="yd_top">
				<img src="img/15.jpg"/>
				<p>书籍详细</p>
				<div id="_top_sy">
					<a href="login">首页</a>
				</div>
			</div>
			<div id="yd_on">
				<img src="img/12.jpg"  id="xs_fm">
				<div id="yd_on_sjxx">
					<h1>${cove.xs_nm }</h1>
					<a href="" id="sjxx_zz">${cove.xs_auter}</a>
					<p><span id="sjxx_lx">${cove.xs_lx}</span><span id="sjxx_zs">${cove.xs_num}</span></p>
					<p id="sjxx_zt">${cove.xs_end }</p>
				</div>
				<!-- <script>
					function getQueryString(name){
					    var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
					    var r = window.location.search.substr(1).match(reg);
					    if(r!=null)return  unescape(r[2]); return null;
					}
					if(getQueryString(${state})==0){
						alert("放入书架成功");
					}else if(getQueryString(${state})==1){
						alert("书架已存在该书籍");
					}else if(getQueryString(${state})==2){
						var flag=confirm("未登录!");
						if(flag){
							window.location.href="dl.jsp";
						}
					}else{
					}
				</script> -->
				<a href="yd.jsp" id="sjxx_yd">阅读</a>
				<a id="sjxx_sj" style="cursor: pointer;">放入书架</a>
				<p id="sjxx_jj">简介：${cove.xs_ms }</p>
				<script>
				$("#sjxx_sj").click(function () {
					var xs_id='${cove.xs_id}';
					var user_zh='${yh.user_zh}';
					 	$.ajax({
						    url : "${pageContext.request.contextPath}/addNovel",  // url---->地址
						    type : "POST",  // type ---> 请求方式
						    async : true,   // async----> 同步：false，异步：true "
						    dataType : "json",
						    data : {        //传入信息
									xs_sjxsid : xs_id,//用户编号
									user_zh : user_zh,//小说编号
						    },
						    success : function (data){
							    alert(data);
						    }
					    });
					});
				</script>
				<a href="" id="sjxx_zj">
					<img src="img/1.jpg">
					<div id="sjxx_zjxx">最新</div>
					<div id="sjxx_zjmc">第2678章：无名</div>
				</a> 
				<a href="" id="sjxx_ml">
					<img src="img/1.jpg">
					<div id="sjxx_zjml">目录</div>
					<div id="sjxx_mlmc">第2678章：无名</div>
				</a> 
			</div>
			<div id="yd_in">
				<div id="yd_pl">
					<div id="pl_bq">文明上网理性发言，请遵守<a href="http://www.qq.com/coral/coralBeta2/coralinfo.htm">新闻评论服务协议</a></div>
					<div id="pl_qj">
						<div id="pl_tx"><c:if test="${yh.user_img!=null}"><img src="${yh.user_img}"/></c:if></div>
						<div id="pl_yh">
							<div id="pl_xx"><textarea id="dhwb" name="wb" placeholder="说两句吧..."></textarea></div>
							<div id="pl_db"><span>${yh.user_nc}</span>
								<div id="pl_anliu">发布评论</div>
							</div>
						</div>
					</div>
				</div>
				<script type="text/javascript" src="js/date.js"></script>
				<script>
					$("#pl_anliu").click(function () {
						var uid='${yh.user_id}';
						var nid='${cove.xs_id}';
						var pnm="${yh.user_nc}";
						var img="${yh.user_img}";
						var plxx=$("#dhwb").val();
					     $('#dhwb').val("");
					 	$.ajax({
						    url : "../xiaoshuo/discuss",  // url---->地址
						    type : "POST",  // type ---> 请求方式
						    async : true,   // async----> 同步：false，异步：true "
						    dataType : "json",
						    data : {        //传入信息
									user_id : uid,//用户编号
									xs_id : nid,//小说编号
									cm_name : pnm,//用户昵称
									cm_img : img,//用户头像
									cm_collect : plxx,//评论信息
									cm_date : CurentTime()//评论时间
						    },
						    success : function(data){   //返回接受信息
						    	var $comment_one = $(".comment_one");
						        var str = "";
						        		str+="<div class='comment_tx'><img src="+data.cm_img+" style='width: 100%;height: 100%;border-radius: 50%;margin: -1px -1px;'/></div>"
							            str +="<div class='comment_name'><p><span style='color: #1E90FF;'>"+data.cm_name+"</span><span>"+timestampToTime(data.cm_date)+"</span></p></div>";
							            str +="<div class='comment_plxx'>"+data.cm_collect+"</div>"
						        	$comment_one.append(str);
						    },
					    });
					});
				</script>
				<div id="comment">
					<div id="comment_bq">评论信息</div>
					<div class="comment_one">
					<c:if test="${com!=null}">
					<c:forEach  items="${com}" var="com">
						<div class="comment_tx"><img src="${com.cm_img}" style="width: 100%;height: 100%;border-radius: 50%;margin: -1px -1px;"/></div>
						<div class="comment_name"><p><span style="color: #1E90FF;">${com.cm_name}</span><span>${com.cm_date}</span></p></div>
						<div class="comment_plxx">${com.cm_collect}</div>
					</c:forEach>
					</c:if>
					</div>
				</div>
			</div>
			<div id="yd_lower">
				
			</div>
		</div>
		
	</body>
</html>
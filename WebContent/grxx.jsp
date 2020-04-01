<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="overflow: auto; overflow-x:hidden;">
<head>
<meta charset="UTF-8">
<title>个人信息</title>
<style>
		* {
			margin: 0;
			padding: 0;
		}
		body {
			width: 1920px;
			font-size: 12px
		}
		#top_bq{
			width: 100%;
			height: 50px;
			position: absolute;
			border: 1px solid #000000;
		}
		#top_bq img{
			width: 90px;
			height: 50px;
			margin:0px 50px;
		}
		#top_bq #_bq_sy{
			position: relative;
			float: right;
			margin:20px 120px;
		}
		#_bq_sy a{
			width: 60px;
			height: 30px;
			font-size: 17px;
			text-decoration :none;
		}
		#_bq_sy #_top_yh{
			width: 80px;
			height:25px;
			font-size: 17px;
			float: right;
			margin: -1px 20px;
			text-align: center;
			border-left: 2px solid #000000;
		}
		#top_One{
			width: 100%;
			height: 930px;
			border: 1px solid #000000;
		}
		#One_large{
			width: 1060px;
			height: 530px;
			margin: 150px auto;
			background-color: rgba(245,246,247,0.3);
		}
		#One_large_left{
			width: 200px;
			height: 530px;
			float: left;
			border: 1px solid #ccc;
		}
		#One_large_left li{
			height: 40px;
			list-style-type: none;
			background-color: rgba(255,255,255,0.3);
		}
		#One_large_left li:hover{
			background-color: #ddd;
		}
		#One_large_left li a{
			text-decoration: none;
			font-size: 17px;
			line-height: 35px;
			margin-left: 20px;
		}
		#One_large_right{
			width: 856px;
			height: 530px;
			float: right;
			margin: 0px auto;
			border: 1px solid #ccc;
			position:relative;
		}
		#One_large_right h3{
			width: 800px;
			height: 90px;
			border-bottom: 1px solid #999;
			font-size: 20px;
			margin-left: 27px;
			line-height: 85px;
		}
		#large_right_img{
			width: 100px;
			height: 140px;
			margin-left: 20px;
			float: left;
		}
		#large_right_img img{
		    width: 100px;
		    height: 100px;
		    border-radius: 50%;
		    margin: 16px auto 0;
		}
		#large_right_img p{
			font-size: 14px;
		    color: #3399ea;
		    margin: 8px 22px;
		    cursor: pointer;
	    }
	    #One_large_right a,p:hover{
	    	color: darkblue;
	    }
	    #large_right_zl{
	        float: right;
	    	width: 710px;
	    	height: 300px;
	    	margin-top:10px;
	    }
	    #large_right_zl #right_zl_ID{
	    	height: 70px;
	    	line-height: 30px;
	    	font-size: 15px;
	    	border-bottom: 1px solid #CCCCCC;
	    }
	    #large_right_zl #right_zl_ID #span{
	     	color: #999999;
	    }
	    #large_right_zl #right_zl_ID a{
	    	float: right;	
	    	text-decoration: none;
	    	color: #1E90FF;
	    	margin-right: 20px;
	    }
	    #large_right_zl li{
	    	list-style-type: none;
			background-color: rgba(255,255,255,0.3);
			height: 32px;
			font-size: 15px;
			line-height: 32px;
	    }
	    #right_zl_news{
	    	height: 25px;
	    	font-size: 15px;
	    	margin-top: 6px;
	    }
	    #right_zl_news a{
	    	float: right;	
	    	text-decoration: none;
	    	color: #1E90FF;
	    	margin-right: 20px;	
	    }
	    #large_right_sc{
	    	width: 710px;
	    	height: 300px;
	    }
	    #large_right_sc li{
	    	width: 710px;
	    	height: 35px;
			float: left;
			list-style-type: none;
		}
		#large_right_sc a:link,a:visited {
			height: 35px;
			font-size: 16px;
			padding: 5px;
			text-decoration: none;
			margin-left:30px;
		}
		#large_right_sc p{
			float: right;
		}
		#fy{
			position:absolute;
			width:700px;
			height:40px;
			bottom:0;
			margin:50px 0px 0px 290px;
		}
		
		</style>
	</head>

	<body>
		<div id="top_bq">
			<img src="img/15.jpg"/>	
			<div id="_bq_sy">
				<a href="login">首页</a>
				<div id="_top_yh">${yh.user_nc}</div>
			</div>
		</div>
		<div id="top_One">
			<div id="One_large">
				<div id="One_large_left">
					<ul>
						<li><a href="grxxxh?xh=1">个人资料</a></li>
						<li><a href="grxxxh?xh=2"></a></li>
						<li><a href="grxxxh?xh=3"></a></li>
					</ul>
				</div>
				
				<div id="One_large_right">
					<c:if test="${xh==1}">
					<h3>个人资料</h3>
					<div id="large_right_img">
						<img src="img/21.jpg"/>
						<p>修改头像</p>
					</div>
					<div id="large_right_zl">
						<div id="right_zl_ID">
							<span id="span">${yh.user_zh}</span>
							<div id="_zl_ID">
								<span>等级:${yh.user_jb}</span>
								<span>书架:${common}</span>
							</div>
						</div>
						<div id="right_zl_news">
							<span>昵称：${yh.user_nc}<span>
							<a href="userUpdate.jsp">修改资料</a>
						</div>
						<ul>
							<li>实名：${yh.user_nm}</li>
							<li>电话：${yh.user_phone}</li>
							<li>性别：${yh.user_sex}</li>
							<li>地区：${yh.user_adress}</li>
						</ul>
					</div>
					</c:if>
					<%-- <c:if test="${xh==2}">
						
					</c:if>
					<c:if test="${xh==3}">
						<div id="large_right_sc">
						<div id="right_sc_bq">
						<h3>用户收藏</h3>
						</div>
						 <c:forEach items="${list}" var="list">
							<li>
								<a href="ydServlet?id=${list.news_id}">${list.news_title} </a><p>${list.news_date}</p>
							</li>
						</c:forEach>
							<div id="fy">
								<c:choose>
									<c:when test="${page.pageNum<=1 }">
										<a href="grxxServlet?pageNum=1">上一页</a>
									</c:when>
									<c:otherwise>
										<a href="grxxServlet?pageNum=${page.pageNum-1 }">上一页</a>
									</c:otherwise>
								</c:choose>
								<c:forEach var="i" begin="1" end="${page.pageTotal }" step="1">
									<a href="grxxServlet?pageNum=${i }">${i }</a>
								</c:forEach>
								<c:choose>
									<c:when test="${page.pageNum>=page.pageTotal }">
										<a href="grxxServlet?pageNum=${page.pageTotal} ">下一页</a>
									</c:when>
									<c:otherwise>
										<a href="grxxServlet?pageNum=${page.pageNum+1 }">下一页</a>
									</c:otherwise>
								</c:choose>
								<span style="margin-left:10px">一共${page.pageTotal }页</span>
							</div>
						</div>
					</c:if> --%>
				</div>
			</div>
		</div>
	</body>
</html>

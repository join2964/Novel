<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html style="overflow: auto; overflow-x:hidden">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>午夜档</title>
		<link href="img/bitbug_favicon.ico" rel="icon" type="image/x-ico">
		<link href="css/index.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jQuery.js"></script>
		<script type="text/javascript">
			/*var a=document.getElementsByClassName("left");
			for(var i=0;i<a.length;i++){
				if(a[i]%2){
					   a[i].style.backgroundColor="red";
				}
			}*/
			
			$(function(){
			
			var $tabLi = $('#banner .tab li');
			var $picLi = $('#banner .pic li');
			var $btn = $('#banner .btn');
			var $btnDiv = $('#banner .btn div');
			var $banner = $('#banner');
			var index = 0;
			var timer;

			$tabLi.hover(function(){
				index = $(this).index();
				fn();
			});

			$banner.hover(function(){
				$btn.show();
				clearInterval(timer);
			},function(){
				$btn.hide();
				auto();
			});

			$btnDiv.click(function(){
				var i = $(this).index();
				if ( i )
				{
					index ++;
					index %= $tabLi.length;
				}
				else
				{
					index --;
					if(index<0)index = $tabLi.length-1;
				}
				fn();
			}).mousedown(function(){
				return false;
			});
			
			auto();
			function auto(){
				timer = setInterval(function(){
					index ++;
					index %= $tabLi.length;
					fn();
				},10000);
			}
			function fn(){
				$tabLi.eq(index).addClass('on').siblings().removeClass('on');
				$picLi.eq(index).stop(true).fadeIn().siblings().stop(true).fadeOut();
			}
		});
		</script>
	</head>

	<body>
	<c:forEach items="${userList }" var="userList">
	<a href="#" style="color:red;">${userList.user_nm }</a>
	</c:forEach>
		<!--<MARQUEE scrollAmount=10 direction=down behavior=alternate >
		<MARQUEE scrollAmount=10 behavior=alternate >
			<IMG src=".jpg">
				<FONT size=5 >
					<B style="color: #FF6F00;">欢迎您的到来</B>
					<IMG src=".jpg">
				</FONT>
		</MARQUEE>
	</MARQUEE>-->

		<div id="qj">
			<!--
        	作者：1395023445@qq.com
        	时间：2019-05-20
        	描述：顶部登录导航
        -->
			<div id="dbdhl">
				<img src="img/fenxiang.png" title="分享" id="fx" onclick="document.getElementById('fxl').style.display = 'block'; " onmouseout="document.getElementById('fxl').style.display = 'none' ;" />
				<c:if test="${yh!=null}">
				<a href="bookHistory?user_zh=${yh.user_zh}" ><img src="img/lishi.png" title="历史" /></a>
				<a href="sc.jsp"><img src="img/xihuan.png" title="收藏" /></a>
				<a href="bookShelf?user_zh=${yh.user_zh}"><img src="img/yuedu.png" title="书架" /></a>
				<a href="personal" style="text-decoration : none;color:#1E90FF" id="usertx" onmouseover="overShow()" onmouseout="outHide()"><img src="${yh.user_img }" title="${yh.user_nc }" id="imgtx"/>${yh.user_nc }</a>
				<div id="out" onmouseover="overShow()" onmouseout="outHide()">
					<a href="information" class="bqa">个人信息</a>
					<a href="userSwitch" class="bqa">切换用户</a>
					<a href="signOut" class="bqa">退出登录</a>
	    		</div>
				</c:if>
				<c:if test="${yh==null}">
				<a href="zc.jsp"><img src="img/zhuce.png" title="注册" style="width: 24px;height: 24px;"/></a>
				<a href="dl.jsp"><img src="img/wode.png" title="登录" /></a>
				</c:if>
			</div>
			<script type="text/javascript">
			function overShow(){
				document.getElementById("out").style.display="block";
			}
			function outHide(){
				document.getElementById("out").style.display="none";
			}
			</script>	
			<!--
        	作者：1395023445@qq.com
        	时间：2019-05-20
        	描述：顶部搜索栏
        -->
			<div id="top">
				<!--<div id="fxl" onmouseover="document.getElementById('fxl').style.display = 'block'; " onmouseout="document.getElementById('fxl').style.display = 'none' ;">
				<div class="bdsharebuttonbox">
					<a href="#" class="bds_qzone" data-cmd="qzone" title="分享到qq空间"></a>
					<a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
					<a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
					<a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a>
					<a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
				</div>
				</div>-->
				<img src="img/wyd1.png" title="午夜档" style="width: 200px;height:100px;margin:-45px;float: left;left:320px;margin-top:5px;position: absolute;overflow:hidden;cursor:pointer;" />
				<form action="">
					<div id="zjss">
						<img src="img/chazhao.png"/>
						<input type="text" name="sousuo" placeholder="输入搜索内容" id="ss" />
						<input type="submit" value="搜索" id="ss2">
					</div>
				</form>
				<div id="ybhz">
	    		</div>
			</div>
				<script type="text/javascript">
		    	 window.onload = function () {
	    	        //搜索框事件
	    	        $("#ss").on("input propertychange",function () {
	    	            var selectValue = $("#ss").val();
	    	            var selectmohu = $("#ybhz");
	    	            var mhtmlleft = "<ul>";
	    	            var mhtmlright = "</ul>"
	    	            var mhtml = "";
	    	            if(selectValue!="") {
	    	                $.ajax({
	    	                	url : "${pageContext.request.contextPath}/fuzzyQuery",  // url---->地址
							    type : "POST",   // type ---> 请求方式
							    async : true,   // async----> 同步：false，异步：true "
							    dataType : "json",
	    	                    data: {'selectValue': selectValue},
	    	                    success: function (data) {
	    	                        if(data!="") {
	    	                            for (var i = 0; i < data.length; i++) {
	    	                                mhtml += "<li class='selectmohuValue'><a href='cover?id="+data[i].xs_id+"' style='color: rgb(26,186,254); '>" + data[i].xs_nm + "<p>"+data[i].xs_auter+"</p></a></li>"
	    	                            }
	    	                            selectmohu.empty();
	    	                            selectmohu.append(mhtmlleft+mhtml+mhtmlright);
	    	                            selectmohu.show();
	    	                        }
	    	                    },
	    	                    error: function (XMLHttpRequest, textStatus, errorThrown) {
	    	                        alert(XMLHttpRequest.status);
	    	                        alert(textStatus.status);
	    	                        alert(errorThrown.status);
	    	                    },
	    	                });
	    	            }else {
	    	                selectmohu.empty();
	    	                selectmohu.hide();
	    	            }
	    	        });
		    	 }
		    	 $("#ss").blur(function () {
		 		       $("#ybhz").prop("hidden",true);
		 		 });
	    	 </script>
			<div id="middle">
				<!--
        	作者：1395023445@qq.com
        	时间：2019-05-20
        	描述：中间第一板块
        -->
				<div id="zxdhl">
					<div id="upper"><img src="img/toggle.png" width="30px" height="25px" style="margin-top: 6px; margin-left: -70px;"><span>作品分类</span></div>
					<a  href="category?xs_lx=玄幻"><div class="left"><img src="img/xuanhuan.png" title="玄幻" /><span>玄幻</span></div></a>
					<a  href="category?xs_lx=奇幻"><div class="right"><img src="img/qihuan.png" title="奇幻" /><span>奇幻</span></div></a>
					<a  href="category?xs_lx=武侠"><div class="left"><img src="img/wuxia.png" title="武侠" /><span>武侠</span></div></a>
					<a  href="category?xs_lx=仙侠"><div class="right"><img src="img/xianxia.png" title="仙侠" /><span>仙侠</span></div></a>
					<a  href="category?xs_lx=都市"><div class="left"><img src="img/dushi.png" title="都市" /><span>都市</span></div></a>
					<a  href="category?xs_lx=现实"><div class="right"><img src="img/xianshi.png" title="现实" /><span>现实</span></div></a>
					<a  href="category?xs_lx=军事"><div class="left"><img src="img/junshi.png" title="军事" /><span>军事</span></div></a>
					<a  href="category?xs_lx=历史"><div class="right"><img src="img/lishij.png" title="历史" /><span>历史</span></div></a>
					<a  href="category?xs_lx=游戏"><div class="left"><img src="img/youxi.png" title="游戏" /><span>游戏</span></div></a>
					<a  href="category?xs_lx=体育"><div class="right"><img src="img/tiyu.png" title="体育" /><span>体育</span></div></a>
					<a  href="category?xs_lx=玄幻"><div class="left"><img src="img/kehuan.png" title="科幻" /><span>科幻</span></div></a>
					<a  href="category?xs_lx=科幻"><div class="right"><img src="img/lingyi.png" title="灵异" /><span>灵异</span></div></a>
					<a  href="category?xs_lx=女生网"><div class="left"><img src="img/nvxingdajiangtang.png" title="女生网" /><span>女生网</span></div></a>
					<a  href="category?xs_lx=二次元"><div class="right"><img src="img/erciyuan.png" title="二次元" /><span>二次元</span></div></a>
				</div>
				<!--
            	作者：1395023445@qq.com	
            	时间：2019-05-25
            	描述：轮播图
            -->
				<div id="banner">
			<div class="pic">
				<ul>
					<c:forEach var="stack" items="${stack }" begin="0" end="4">
					<li style="display: block;"><a href="cover?xs_id=${stack.xs_id}"><img src="${stack.xs_tp}" title="${stack.xs_nm}"></a></li>
					</c:forEach>
				</ul>
			</div>
			
			<div class="tab">
				<ul>
					<li class="on">1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
				</ul>
			</div>
			
			<div class="btn">
				<div id="leftBtn" title="向左翻">&lt;</div>
				<div id="rightBtn" title="向右翻">&gt;</div>
			</div>
			
		</div>
				<!--
            	作者：1395023445@qq.com
            	时间：2019-05-25
            	描述：轮播图底部推荐标签
            -->
				<div id="bq">
					<ul id="bb">
					<c:forEach var="stack" items="${stack }" begin="6" end="8">
						<li><a href="cover?xs_id=${stack.xs_id }"><img src="${stack.xs_tp }" title="${stack.xs_nm }"/></a></li>
					</c:forEach>
					</ul>
				</div>
				<!--
            	作者：1395023445@qq.com
            	时间：2019-05-25
            	描述：公告栏
            -->
				<div id="gonggao">
					<div id="ggdb">
						<span>公告栏</span>
					</div>
					<div id="ggl">
						<ul>
						<c:forEach var="notice" items="${notice }" begin="0" end="5">
							<li><a href="activity?n_id=${notice.n_id}" title="${notice.n_bt}">
									<b>[${notice.n_lx}]</b>${notice.n_bt}
									<span>${notice.n_date}</span>
									</a>
								</li>
						</c:forEach>
						</ul>
					</div>
				</div>
				<!--
            	作者：1395023445@qq.com
            	时间：2019-05-25
            	描述：榜单栏衔接公告栏	
            	-->
            
				<div id="phb">
				
					<div id="bddb">
						<span>榜单栏</span>
					</div>
					<div id="bdl">
						<ul>
						<c:forEach var="stack" items="${stack }" varStatus="status1" end="5">
							<li>
								<div class="bd">${status1.index+1 }</div>
								<a href="cover?xs_id=${stack.xs_id }">${stack.xs_nm}</a><span>${stack.xs_auter}</span>
							</li>
						</c:forEach>
						</ul>
					</div>
				</div>
				
				<!--
                	作者：1395023445@qq.com
                	时间：2019-05-20
                	描述：中间第二板块
                -->
				<div id="m2bk">
					<div id="m2_left">
						<div id="tjdb">
							<span>本站强推</span>
						</div>
						<div id="tjl">
							<ul>
							<c:forEach  var="stackDj" items="${stackDj }" end="14">
								<li><b>${stackDj.xs_lx}</b>
									<a href="cover?xs_id=${stackDj.xs_id }">${stackDj.xs_nm}</a><span>${stackDj.xs_auter}</span>
								</li>
							</c:forEach>
							</ul>
						</div>
					</div>
					<div id="m2_right">

						<div id="m2_dbbq"><span>精品推荐</span></div>
						<c:forEach items="${stackTj }" var="stackTj" end="8">
						<div class="xsbq">
							<a href="category?xs_lx="${stackTj.xs_lx}><img src="${stackTj.xs_tp}" /></a>
							<a href="cover?xs_id=${stackTj.xs_id }">${stackTj.xs_nm}</a>
							</br>
							<span>${stackTj.xs_ms}</span>
							<zz>${stackTj.xs_auter}</zz><a href="category?xs_lx="${stackTj.xs_lx}><input type="button" value="${stackTj.xs_lx}" /></a>
						</div>
						</c:forEach>
						
					</div>
				</div>
				<!--
                	作者：1395023445@qq.com
                	时间：2019-05-25
                	描述：衔接第三板块
                -->
				<div id="m3bk">
					<div id="m3_bt">
						<span id="m3_phbbq">总排行榜</span>
						<div id="box">
							<ul>
								<li>
									<a href="#">更新</a>
								</li>
								<li>
									<a href="#"> </a>
								</li>
							</ul>
						</div>
					</div>
					<div id="m3_ph">
						<ul class="zph">
							<c:forEach items="${stack }" var="stack" begin="10" end="24" varStatus="status">
							<li>
								<div class="num">${status.index-9}</div>
								<a href="#">${stack.xs_nm}</a><span>${stack.xs_updatetime}</span>
							</li>
							</c:forEach>
						</ul>
					</div>
				</div>
					<!--
                	作者：1395023445@qq.com
                	时间：2019-05-26
                	描述：第四广告板块
                -->
					<div id="m4bk">
						<img src="img/dt2.gif">
					</div>
					<div id="m5bk">
						<div id="m5_ljbq">
							<span>友情链接</span>
						</div>
						<div id="m5_yqlj">
							<a targer="_blank" href="http://yc.ireader.com.cn/">掌阅小说网 </a>
							<a targer="_blank" href="http://www.19lou.com/">19楼  </a>
							<a targer="_blank" href="http://book.qq.com/">腾讯文学</a>
							<a targer="_blank" href="http://www.zongheng.com/">纵横中文网</a>
							<a targer="_blank" href="http://www.ihuaben.com/">话本小说</a>
							<a targer="_blank" href="http://www.xuexila.com/">学习啦 </a>
							<a targer="_blank" href="http://www.4yt.net">四月天 </a>
							<a targer="_blank" href="http://www.offcn.com">中公公务员网 </a>
							<a targer="_blank" href="http://www.ximalaya.com/explore/">有声小说</a>
							<a targer="_blank" href="http://book.114la.com/">114la小说 
							<a targer="_blank" href="http://www.tiexue.net">铁血军事
							<a targer="_blank" href="http://zixun.jia.com">装修资讯 
							<a targer="_blank" href="http://b.faloo.com/">飞卢小说网 
							<a targer="_blank" href="http://www.sxcnw.net">书香电子书
							<a targer="_blank" href="http://www.docin.com/">豆丁网 
							<a targer="_blank" href="http://www.zhaoxiaoshuo.com/">找小说 
							<a targer="_blank" href="http://www.shuhai.com/">书海小说网 
							<a targer="_blank" href="http://www.bayueju.com/">八月居
							<a targer="_blank" href="http://www.91wan.com/">91wan游戏 
							<a targer="_blank" href="http://www.kanshu.com/">看书网小说 
							<a targer="_blank" href="http://www.52pk.com/">52PK游戏网
							<a targer="_blank" href="http://www.hongshu.com/">红薯小说网 
							<a targer="_blank" href="http://www.t262.com/">作文网 
							<a targer="_blank" href="http://www.xiazaiba.com/">下载吧 
							<a targer="_blank" href="http://www.hengyan.com/">恒言中文网
							<a targer="_blank" href="http://www.1xiezuo.com/">壹写作
						</div>
					</div>
			</div>
			<div id="bottom">
				<span>午夜档没有弹窗广告，所有小说都能免费阅读。找好看的小说网站，就到午夜档。</br>
				Copyright © 2019 午夜档(www.pilipilipong.com) All Rights Reserved. </span>
				
			</div>
		</div>
	</body>

</html>
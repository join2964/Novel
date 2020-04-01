<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="overflow: auto; overflow-x:hidden">
	<head>
		<meta charset="UTF-8">
		<title>公告信息</title>
		<link href="img/bitbug_favicon.ico" rel="icon" type="image/x-ico">
		<style type="text/css">
			*{ 
				margin: 0;
			    padding: 0;
			    list-style-type: none;
			}
			#ggxx{
				width: 100%;
				height: 50px;
				margin: 0;
				background-color: #DFEFFF;
				border: 1px solid #ccc;
			}
			#login{
				float: right;
				margin: 15px 80px;
				font-size: 18px;
			}
			.user_login{
			    text-decoration :none;
			    margin: 0 5px;
			}
			#middle{
				width: 100%;
				margin: 0;
				border: 1px solid #ccc;
			}
			#middle_dhl ul {
				background-color:#99AABB;
				list-style-type: none;
				margin: 0 20%;
				padding: 0;
				overflow: hidden;
				height: 35px;
				border-bottom: 1px solid #aaa;
			}
			#middle_dhl li {
				float: left;
			}
			#middle_dhl a:link,a:visited {
				display: block;
				width: 65px;
				height: 35px;
				font-size: 16px;
				position: relative;
				border-left: 1px solid #ccc;
				color: #000;
				text-align: center;
				padding: 5px;
				text-decoration: none;
				/*text-transform:uppercase;*/
			}
			#middle_dhl a:hover,a:active {
				background-color: #00C98D;
			}
			#middle_xx{
				margin: 0 20%;
				border: 1px solid #aaa;
			}
			#hxbq{
				width: 1116px;
				height: 35px;
				line-height: 35px;
				margin-left: 35px;
			}
			#hxbq a{
				text-decoration: none;
			}
			#hxbq img{
				width: 25px;
				height: 25px;
				position: absolute;
				margin:5px 0px 0px -25px; 
			}
			#mainbody{
				font-size: 22px;
				line-height: 40px;
			}
			#dbbq{
				border-top: 1px solid #aaa;
			}
			.artInfo{
				margin-bottom: 15px;
				height: 40px;
				border-bottom: 1px dashed #aaa
			}
			.artInfo span{
				margin-right: 30px;
			}
			#dbbq h1{
				text-align: center;
				margin: 15px 0;
			}
			.share{
				margin-top:20px;
				height: 30px;
			}
			.news_list{
				line-height: 25px;
				height: 68px;
				margin-left:10px;
			}
			.other_pane{
				text-align: center;
				height:50px;
				border: 1px solid #aaa;
				line-height: 50px;
			}
			.other_pane a{
				margin: 15px 5px;
			}
		</style>
		
	</head>
	<body>
		<!--
        	作者：1395023445@qq.com
        	时间：2020-03-07
        	描述：
        -->
			<div id="ggxx">
				<a href="login"><img src="img/shangyibu.png" style="width: 40px;height: 40px;margin: 4px 20px;"/></a>
				<div id="login">
					<a href="dl.jsp" class="user_login">登录</a>
					|
					<a href="zc.jsp" class="user_login">注册</a>
				</div>
			</div>
			<div id="middle">
				<div id="middle_dhl">
		    		<ul>
						<li style="text-align: center;">
							<a href="" target="_self" style="position: relative;"><img src="img/yemian-copy-copy-copy.png" style="width: 20px;height:20px;margin: -4px 2px;z-index: 999;"/>公告</a>
						</li>
						<li style="text-align: center;">
							<a href="" target="_self" style="position: relative;"><img src="img/yemian-copy-copy-copy.png" style="width: 20px;height:20px;margin: -4px 2px;z-index: 999;"/>活动</a>
						</li>
						<li style="text-align: center;">
							<a href="" target="_self" style="position: relative;"><img src="img/yemian-copy-copy-copy.png" style="width: 20px;height:20px;margin: -4px 2px;z-index: 999;"/>资讯</a>
						</li>
					</ul>
				</div>
				<div id="middle_xx">
					<div id="hxbq">
						<a href="login"><img src="img/bitbug_favicon.ico"/>午夜档</a> ＞ <a href="">${tiv.n_lx}</a> ＞ <a href="javascript:void(0);">正文</a>
					</div>
					<div id="dbbq">
						<div class="box gg_con">
							<h1 class="title">${tiv.n_bt}</h1>
							<div class="artInfo">
								<span>出自：<a href="login">www.wuyedang.com</a></span><span>发表时间：${tiv.n_date}</span><span class="padrig">
							</div>
							<div id="mainbody">
								<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${tiv.n_xx}</p>
							</div>
							<div class="share">
								<span class="sharetext">
		                            <!-- Baidu Button BEGIN -->
		                            <div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
		                            <span class="bds_more">分享到：</span>
		                            <a class="bds_bdxc" title="分享到百度相册" href="#">百度贴吧</a>
		                            <a class="bds_qzone" title="分享到QQ空间" href="#">QQ空间</a>
		                            <a class="bds_tsina" title="分享到新浪微博" href="#">新浪</a>
		                            <a class="bds_renren" title="分享到人人网" href="#">人人网</a>
		                            <a class="shareCount" href="#" title="累计分享0次">0</a>
		                            </div>
		                            <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=0" src="http://bdimg.share.baidu.com/static/js/bds_s_v2.js?cdnversion=439885"></script>
		                            
		                            <script type="text/javascript">
		                            var bds_config = {};
		                            (function(){
		                                var url = "http%3A%2F%2Fnews.zongheng.com%2Fnews%2F7424.html";
		                                var title = "%E7%BA%B5%E6%A8%AA%E4%B8%AD%E6%96%87%E7%BD%91%E7%A0%81%E5%AD%97%E7%88%86%E6%9B%B4%E5%A4%A7%E8%B5%9B%E7%BB%93%E6%9E%9C%E6%8E%92%E5%90%8D%E5%85%AC%E7%A4%BA";
		                                bds_config.url = url;
		                                bds_config.bdText = title;
		                                bds_config.bdComment = "#" + title + "#";
		                                /* bds_config.bdPic = parseParameter(sinaURL, "pic"); */
		                            })();
		                            document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000);
		                            </script>
								</span>
							</div>
						</div>
						<div class="fl news_list">
							<span>上一篇：<a href="" class="fblue">纵横中文网码字爆更大赛即将开启</a></span><br>
							<span>下一篇：<a href="" class="fblue">纵横中文网码字爆更大赛即将开启</a></span><br>
						</div>
						<div class="other_pane">
							<span class="fr other_link"><a href="javascript:void(0);" class="homemark">收藏</a>|<a href="javascript:window.print();">打印</a>|<a href="javascript:top.close();">关闭</a>|<a href="login">返回首页</a></span> 
						</div>
					</div>
				</div>
	</body>
</html>

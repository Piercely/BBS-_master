<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />
<title>Skin视界论坛</title>
<script type='text/javascript'
	src='<%=path%>/dwr/interface/loginService.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/util.js'></script>
<!-- Bootstrap -->
<link href="<%=path%>/js/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="<%=path%>/js/bootstrap-3.3.7-dist/js/jquery-1.12.4.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="<%=path%>/js/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<style rel="stylesheet" type="text/css">
body { <%--
	background: url(<%=path %>/images/ug_bg_boy.png)--%>
}
</style>

<script type="text/javascript">
    
    (function(window,document,undefined){
		var hearts = [];
		window.requestAnimationFrame = (function(){
			return window.requestAnimationFrame ||
			window.webkitRequestAnimationFrame ||
			window.mozRequestAnimationFrame ||
			window.oRequestAnimationFrame ||
			window.msRequestAnimationFrame ||
			function (callback){
				setTimeout(callback,1000/60);
			}
		})();
		init();
		function init(){
			css(".heart{width: 10px;height: 10px;position: fixed;background: #f00;transform: rotate(45deg);-webkit-transform: rotate(45deg);-moz-transform: rotate(45deg);}.heart:after,.heart:before{content: '';width: inherit;height: inherit;background: inherit;border-radius: 50%;-webkit-border-radius: 50%;-moz-border-radius: 50%;position: absolute;}.heart:after{top: -5px;}.heart:before{left: -5px;}");
			attachEvent();
			gameloop();
		}
		function gameloop(){
			for(var i=0;i<hearts.length;i++){
				if(hearts[i].alpha <=0){
					document.body.removeChild(hearts[i].el);
					hearts.splice(i,1);
					continue;
				}
				hearts[i].y--;
				hearts[i].scale += 0.004;
				hearts[i].alpha -= 0.013;
				hearts[i].el.style.cssText = "left:"+hearts[i].x+"px;top:"+hearts[i].y+"px;opacity:"+hearts[i].alpha+";transform:scale("+hearts[i].scale+","+hearts[i].scale+") rotate(45deg);background:"+hearts[i].color;
			}
			requestAnimationFrame(gameloop);
		}
		function attachEvent(){
			var old = typeof window.onclick==="function" && window.onclick;
			window.onclick = function(event){
				old && old();
				createHeart(event);
			}
		}
		function createHeart(event){
			var d = document.createElement("div");
			d.className = "heart";
			hearts.push({
				el : d,
				x : event.clientX - 5,
				y : event.clientY - 5,
				scale : 1,
				alpha : 1,
				color : randomColor()
			});
			document.body.appendChild(d);
		}
		function css(css){
			var style = document.createElement("style");
			style.type="text/css";
			try{
				style.appendChild(document.createTextNode(css));
			}catch(ex){
				style.styleSheet.cssText = css;
			}
			document.getElementsByTagName('head')[0].appendChild(style);
		}
		function randomColor(){
			return "rgb("+(~~(Math.random()*255))+","+(~~(Math.random()*255))+","+(~~(Math.random()*255))+")";
		}
	})(window,document);
    
            function userLogout()
	        {
			    loginService.logout(callback1);
	        }
	        
	        
	        function callback1(data)
			{
			    alert("退出系统");
			    window.location.reload();
			}
			
			function gerenzhongxin()
			{
			    var targetWinUrl="<%=path%>
	/auser/index.jsp";
		var targetWinName = "newWin";
		var features = "width="
				+ screen.width
				+ " ,height="
				+ screen.height
				+ " ,toolbar=yes, top=0, left=0, menubar=yes, scrollbars=yes, resizable=yes,location=no, status=yes";
		var new_win = window.open(targetWinUrl, targetWinName, features);
	}

	function shoucang(sTitle, sURL) {
		try {
			window.external.addFavorite(sURL, sTitle);
		} catch (e) {
			try {
				window.sidebar.addPanel(sTitle, sURL, "");
			} catch (e) {
				alert("加入收藏失败，请使用Ctrl+D进行添加");
			}
		}
	}

	function SetHome(obj, vrl) {
		try {
			obj.style.behavior = 'url(#default#homepage)';
			obj.setHomePage(vrl);
		} catch (e) {
			if (window.netscape) {
				try {
					netscape.security.PrivilegeManager
							.enablePrivilege("UniversalXPConnect");
				} catch (e) {
					alert("此操作被浏览器拒绝！\n请在浏览器地址栏输入“about:config”并回车\n然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。");
				}
				var prefs = Components.classes['@mozilla.org/preferences-service;1']
						.getService(Components.interfaces.nsIPrefBranch);
				prefs.setCharPref('browser.startup.homepage', vrl);
			} else {
				alert("您的浏览器不支持，请按照下面步骤操作：1.打开浏览器设置。2.点击设置网页。3.输入：" + vrl
						+ "点击确定。");
			}
		}
	}
</script>
</head>

<body>
	<div class="container">
		<div id="Top" style="height: 150px;">
			<div class="W1000 margin TopW">
				<div class="Logo"
					style="margin-top: 0px; font-size: 25px; font-style: italic;">
					<img src="<%=path %>/images/logo.jpg" width="230" height="150" />
				</div>
				<div class="Tel"
					style="margin-top: 80px; font-size: 13px; float: right">
					<!-- <img src="images/Tel.png" width="285" height="48" /> -->
					<a href="javascript:void(0)"
						onclick="SetHome(this,window.location)"><img
						src="<%=path %>/images/zhuye.jpg" height="23" /></a> <a
						href="javascript:void(0)"
						onclick="shoucang(document.title,window.location)"><img
						src="<%=path %>/images/luntan.jpg" height="25" /></a>
						<a
						href="javascript:void(0)"
						onclick="shoucang(document.title,window.location)"><img
						src="<%=path %>/images/jiaxingshoucang.jpg" height="23" /></a>
						<a
						href="javascript:void(0)"
						onclick="shoucang(document.title,window.location)"><img
						src="<%=path %>/images/zan.jpg" height="23" /></a>
						
				</div>
			</div>
		</div>



		<div id="Nav">
			<ul class="nav nav-pills" role='tablist'>
				<li role='presentation'><a href="<%=path%>/qiantai/default.jsp">网站首页</a></li>
				<li role='presentation'><a
					href="<%=path%>/guanggao?type=guanggaoAll">系统公告</a></li>
				<li role='presentation'><a
					href="<%=path%>/qiantai/zhuti/zhutiSea.jsp">帖子搜索</a></li>

				<c:if test="${sessionScope.userType!=1}">
					<li><a href="<%=path%>/qiantai/user/userReg.jsp">用户注册</a></li>
					<li><a href="<%=path%>/qiantai/user/userLogin.jsp">用户登录</a></li>
				</c:if>

				<c:if test="${sessionScope.userType==1}">
					<li><a href="#">欢迎您：${sessionScope.user.loginname}</a></li>
					<li><a href="#" onclick="userLogout()">注销退出</a></li>
					<li><a href="<%=path%>/qiantai/user/userInfo.jsp">我的信息</a></li>
					<!-- <li><a href="#" onclick="gerenzhongxin()">个人中心</a></li> -->
				</c:if>
			</ul>
		</div>
		<div class="NavY"></div>
	</div>


</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<link rel="shortcut icon" href="../static/favicon.ico" />
	<jsp:include page="../static/head.html"/>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="<%=basePath %>images/logo.gif" /></div>
	<div class="help">
		<a href="cartPage.do" class="shopping">查看購物車</a>
		<c:if test="${sessionScope.user!=null}"><a href="userOrder.do?uid=${sessionScope.user.uid}">我的訂單</a>&nbsp;用户:${sessionScope.user.uname}&nbsp;&nbsp;<a href="updateUserPage.do">更新個人資料</a><a href="updatePwdPage.do">修改密碼</a><a href="logout.do">刪除</a></c:if>
		<c:if test="${sessionScope.user==null}">
			<button type="button" class="btn btn-default" onclick="window.location.href='login.do'">登入</button>
			<button type="button" class="btn btn-default" onclick="window.location.href='reg.do'">註冊</button>
		</c:if>
	</div>
	<div class="navbar">
		<button type="button" onclick="window.location.href='index.do'" class="btn btn-warning btn-lg ">首頁</button>
		<div class="searchBook">
			<form method="post" action="productList.do">
				尋找書籍：<input  type="text" class="text" name="key" placeholder="請輸入商品關鍵字"  /> <input class="btn btn-info" type="submit" name="submit" value="搜索" />
			</form>
		</div>
	</div>
</div>
<div id="childNav">
	<div class="wrap">
		<ul class="clearfix">
			<c:forEach items="${bts}" var="bt">
			<li><a href="productList.do?type=${bt}" >${bt}</a></li>
			</c:forEach>
		</ul>
	</div>
</div>
<div id="main" class="wrap">
	<div class="lefter">
		<div class="box">
			<h2>圖書分類</h2>
			<c:forEach items="${bts}" var="bt">
			<dl>
				<dd><a href="productList.do?type=${bt}" >${bt}</a></dd>
			</dl>
			</c:forEach>
			
		</div>
		<div class="spacer"></div>
		<div class="last-view">
			<h2>最近瀏覽</h2>
			<c:forEach items="${Cbooks}" var="cbook" end="4">
			<dl class="clearfix">
				<dt><img height="50" width="50" src="<%=basePath %>images/product/${cbook.image}" /></dt>
				<dd><a href="bookView.do?bid=${cbook.bid}">${cbook.bname}</a></dd>
			</dl>
			</c:forEach>
		</div>
	</div>
	<div class="main">
		<div class="demo">
			<a class="control prev"></a><a class="control next abs"></a>
			<div class="demo">
				<a class="control prev"></a><a class="control next abs"></a>
				<div class="slider">
					<ul>
						<li><a href="bookView.do?bid=10"><img src="images/1.jpg" alt="老幹部靳東演繹的醫療精英。" /></a></li >
						<li><a href="bookView.do?bid=11"><img src="images/2.jpg" alt="這本小說太令人震撼，很長一段時日，讓我所讀的 一切都相形失色。" /></a></li>
						<li><a href="bookView.do?bid=12"><img src="images/3.jpg" alt="每個故事都在變成電影，每一分鐘，都有人看到自己。 " /></a></li>
						<li><a href="bookView.do?bid=13"><img src="images/4.jpg" alt="《白夜行》後東野圭吾備受歡迎作品：不是推理小說，卻更扣人心弦 " /></a></li>
						<li><a href="bookView.do?bid=14"><img src="images/5.jpg" alt="《小王子》猶如透亮的鏡子，照出了荒唐的成人世界。" /></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="spacer clear"></div>
		<div class="hot">
			<h2>熱門推薦</h2>
			<ul class="product clearfix">
				<c:forEach items="${books}" var="book" end="11">
				<li>
					<dl>
						<dt><a href="bookView.do?bid=${book.bid}" target="_blank"><img src="<%=basePath %>images/product/${book.image}" /></a></dt>
						<dd class="title"><a href="bookView.do?bid=${book.bid}" target="_blank">${book.bname}</a></dd>
						<dd class="price">￥${book.pirce}</dd>
					</dl>
				</li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<div class="clear"></div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/YuxiSlider.jQuery.min.js"></script>
<script src="../../js/index.js"></script>
<jsp:include page="../static/footer.html"/>
</body>
</html>

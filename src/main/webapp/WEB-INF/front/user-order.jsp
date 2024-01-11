<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<jsp:include page="../static/head.html"/>

</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="<%=basePath %>images/logo.gif" /></div>
	<div class="help">
		<a href="cartPage.do" class="shopping">查看購物车</a>
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
	<div class="mainOrder">
		<h2>我的訂單</h2>
		<div class="manage">
			<div class="spacer"></div>
			<table class="table table-hover">
					<c:forEach items="${bookOrders}" var="bookOrder">
						<tr class="active">
							<td class="first w4 c">訂單號:${bookOrder.oid}</td>
							<td class="w1 c">${bookOrder.date}</td>
							<td class="w1 c">收貨人:${bookOrder.oname}</td>
							<td>收貨地址：${bookOrder.adress}</td>
							<td class="w1 c">訂單狀態</td>
							<td class="w1 c">評價狀態</td>
						</tr>
							<c:forEach items="${orderDetails }" var="orderDetail">
							<c:if test="${bookOrder.oid==orderDetail.orderId}">
								<c:forEach items="${books }" var="book">
								<c:if test="${book.bid==orderDetail.bookId }">
										<tr>
											<td class="first w4 c"><a href="bookView.do?bid=${book.bid }">${book.bname }<a/></td>
											<td class="w1 c"><img height="80" width="80" src="<%=basePath %>images/product/${book.image}"></td>
											<td class="w1 c">數量：${orderDetail.bookNum }</td>
											<td>￥${book.pirce*orderDetail.bookNum }</td>
											<td class="w1 c">${bookOrder.status }</td>
											<c:if test="${orderDetail.status=='待評價' }">
											<td class="w1 c">
												<c:choose>
													<c:when test="${bookOrder.status=='已签收'}">
														<a href="commentPage.do?bid=${book.bid }&odid=${orderDetail.id }">待評價</a>
													</c:when>
													<c:otherwise>
														<span >待評價</span>
													</c:otherwise>

												</c:choose>
											</td>
											</c:if>
											<c:if test="${orderDetail.status=='已評價' }">
											<td class="w1 c">已評價</td>
											</c:if>
										</tr> 
								</c:if>
								</c:forEach>
							</c:if>
							</c:forEach>
					</c:forEach>
				</table>
			<div class="pager">
					<ul class="clearfix">
						<c:choose>
							<c:when test="${pageInfo.hasPreviousPage}">
								<li><a href="userOrder.do?pageNum=1&uid=${sessionScope.user.uid }">首頁</a></li>
								<li><a href="userOrder.do?pageNum=${pageInfo.prePage }&uid=${sessionScope.user.uid }">上一頁</a></li>
							</c:when>
							<c:otherwise>
								<li><span>首頁</span></li>
								<li><span>上一頁</span></li>
							</c:otherwise>
						</c:choose>

						<c:forEach var="index" begin="1" end="${pageInfo.pages }">

							<li
								<c:if test="${index==pageInfo.pageNum}">class="current"</c:if>><a
								href="userOrder.do?pageNum=${index }&uid=${sessionScope.user.uid }">${index }</a></li>
						</c:forEach>

						<c:choose>
							<c:when test="${pageInfo.hasNextPage}">
								<li><a href="userOrder.do?pageNum=${pageInfo.nextPage }&uid=${sessionScope.user.uid }">下一頁</a></li>
								<li><a href="userOrder.do?pageNum=${pageInfo.pages }&uid=${sessionScope.user.uid }">尾頁</a></li>
							</c:when>
							<c:otherwise>
								<li><span>下一頁</span></li>
								<li><span>尾頁</span></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<jsp:include page="../static/footer.html"/>
</body>
</html>

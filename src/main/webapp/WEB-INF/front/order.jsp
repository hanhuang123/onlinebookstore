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

<script src="../../js/order.js"></script>
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
<div class="wrap">
<div class="main">
		<h2>確認收貨地址</h2>
		<hr/>
		<div class="manage">
			<form action="addBookOrder.do" id="orderForm">
				<table class="table table-hover">
					<tr>
						<td class="field">收貨人：
						<input id="uid" name="uid" type="hidden" value="${sessionScope.user.uid}" />
						</td>
						<td><input type="text" class="text" id="oname" name="oname" value="${sessionScope.user.uname }"/></td>
					<tr>
						<td class="field">手機號碼：</td>
						<td><input type="text" class="text" id="omobile" name="omobile" value="${sessionScope.user.phone }" /></td>
					</tr>
					<tr>
						<td class="field">送貨地址：</td>
						<td><textarea class="form-control" style="width:200px;height:100px;" id="oaddress" name="oaddress" value="${sessionScope.user.adress }" /></textarea>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<h2>確認訂單資料</h2>
	<div id="shopping">
	<c:if test="${sessionScope.cart.totalPrice!=0}">
		<form action="shopping-result.html">
			<table>
				<tr>
					<th>商品名稱</th>
					<th>單價（元）</th>
					<th>購買數量</th>
					<th>金額（元）</th>
					
				</tr>
 					<c:forEach var="good" items="${sessionScope.cart.goods}">   
					<tr id="product_id_1">
					<td class="thumb"><img height="80" width="80" src="<%=basePath %>images/product/${good.key.image}" /><a href="bookView.do?bid=${good.key.bid}">${good.key.bname}</a></td>
					<td class="price" >
						<span>￥${good.key.pirce}</span>
						<input id="price${good.key.bid}" type="hidden" value="${good.key.pirce}" />
					</td>
					<td class="number">
						<a id="number${good.key.bid}" name="number">${good.value}</a>
					</td>
					<td class="price">
						<span >￥</span>
						<span id="goodSum${good.key.bid}">${good.key.pirce*good.value}</span>
					</td>
					
				</tr>
					</c:forEach>
				
				<tr>
					<td colspan="" rowspan="" headers="">合計金額</td>
						<td colspan="" rowspan="" headers=""></td>
						<td colspan="" rowspan="" headers=""></td>
						
						<td class="price" id="price_id_1">
						<span>￥</span>
						<span id="sum">${sessionScope.cart.totalPrice }</span>
						<input id="hiddenSum" type="hidden" value="${sessionScope.cart.totalPrice}" />
						</td>
				</tr>
			</table>
			<div class="button"><a href="cartPage.do">返回購物車/a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="submit" href="#"><img src="images/orderSub.png"></a></div>
		</form>
		</c:if>
		<c:if test="${sessionScope.cart.totalPrice==0}">
					<img src="<%=basePath %>images/empty.jpg" />
				</c:if>
	</div>
</div>
<jsp:include page="../static/footer.html"/>
<script>
    var validator;
    $(document).ready(function () {
        $.validator.setDefaults({
        });

        validator = $("#orderForm").validate({
            rules: {
                oname: {
                    required: true
                },
                omobile: {
                    required: true,
                    minlength: 11,
                    maxlength: 11
                },
                oaddress: {
                    required: true
                }
            },
            messages: {
                oname: {
                    required: "必需填寫收貨人"
                },
                omobile: {
                    required: "必需填寫電話",
                    minlength: "電話號碼長度不正確",
                    maxlength: "電話號碼長度不正確"
                },
                oaddress: {
                    required: "必需填寫送貨地址"
                }
            }
        });

    });

</script>
</body>
</html>


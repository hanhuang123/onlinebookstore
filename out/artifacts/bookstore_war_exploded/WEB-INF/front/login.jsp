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
        <a href="cartPage.do" class="shopping">查看購物車</a>
        <c:if test="${sessionScope.user!=null}"><a href="userOrder.do?uid=${sessionScope.user.uid}">我的订单</a>&nbsp;用户:${sessionScope.user.uname}&nbsp;&nbsp;<a href="updateUserPage.do">更新个人信息</a><a href="updatePwdPage.do">修改密碼</a><a href="logout.do">刪除</a></c:if>
        <c:if test="${sessionScope.user==null}">
            <button type="button" class="btn btn-default" onclick="window.location.href='login.do'">登入</button>
            <button type="button" class="btn btn-default" onclick="window.location.href='reg.do'">註冊</button>
        </c:if>
    </div>
    <div class="navbar">
        <button type="button" onclick="window.location.href='index.do'" class="btn btn-warning btn-lg ">首页</button>
        <div class="search">
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
<div id="register" class="wrap">
	<div class="shadow">
		<em class="corner lb"></em>
		<em class="corner rt"></em>
		<div class="box">
			<h1>歡迎登入BOOK HOUSE</h1>
			<form id="loginForm">
				<table>

					<tr>

						<td class="field">用户名：</td>
						<td><input class="text form-control" type="text" name="userName" id="userName"/></td>
					</tr>
					<tr>
						<td class="field">登入密碼：</td>
						<td>
							<input class="text form-control" type="password" name="passWord" id="passWord" />
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input class="btn btn-success" type="submit" id="submit" value="登录" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div class="clear"></div>
</div>
<jsp:include page="../static/footer.html"/>
<script src="../../js/login.js">
</script>
</body>
</html>


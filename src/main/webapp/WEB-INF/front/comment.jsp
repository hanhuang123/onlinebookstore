<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="../static/head.html"/>
</head>
<body>
<div id="header" class="wrap">
    <div id="logo"><img src="<%=basePath %>images/logo.gif"/></div>
    <div class="help">
        <a href="cartPage.do" class="shopping">查看購物車</a>
        <c:if test="${sessionScope.user!=null}"><a
                href="userOrder.do?uid=${sessionScope.user.uid}">我的訂單</a>&nbsp;用户:${sessionScope.user.uname}&nbsp;&nbsp;<a href="updateUserPage.do">更新個人資料</a><a href="updatePwdPage.do">修改密碼</a><a href="logout.do">刪除</a></c:if>
        <c:if test="${sessionScope.user==null}">
            <button type="button" class="btn btn-default" onclick="window.location.href='login.do'">登入</button>
            <button type="button" class="btn btn-default" onclick="window.location.href='reg.do'">註冊</button>
        </c:if>
    </div>
    <div class="navbar">
        <button type="button" onclick="window.location.href='index.do'" class="btn btn-warning btn-lg ">首頁</button>
        <div class="searchBook">
            <form method="post" action="productList.do">
                尋找書籍：<input type="text" class="text" name="key" placeholder="請輸入商品關鍵字"/> <input class="btn btn-info"
                                                                                                type="submit"
                                                                                                name="submit"
                                                                                                value="搜索"/>
            </form>
        </div>
    </div>
</div>
<div id="childNav">
    <div class="wrap">
        <ul class="clearfix">
            <c:forEach items="${bts}" var="bt">
                <li><a href="productList.do?type=${bt}">${bt}</a></li>
            </c:forEach>
        </ul>
    </div>
</div>
<div id="main" class="wrap">
    <div class="lefter">

        <div id="product" class="main">
            <h1>${book.bname }</h1>
            <div class="infos">
                <div class="thumb"><img height="100" width="100" src="images/product/${book.image }"/>
                    <p>价格：<span class="price">￥${book.pirce }</span></p>
                </div>
                <div class="buy">

                    <div id="reply-box">
                        <form action="addComment.do">
                            <table>
                                <input type="hidden" name="uid" value="${sessionScope.user.uid}"/>
                                <input type="hidden" name="odid" value="${odid}"/>
                                <input type="hidden" name="bid" value="${book.bid }"/>
                                <input type="hidden" name="uname" value="${sessionScope.user.uname }"/>
                                <tr>
                                    <td class="field">評價内容：</td>
                                    <td><textarea name="content"></textarea></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><label class="ui-blue"><input type="submit" name="submit" value="提交評價"/></label>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>

                </div>
                <div class="clear"></div>
            </div>

        </div>

    </div>
    <div class="clear"></div>
</div>
<jsp:include page="../static/footer.html"/>
</body>
</html>

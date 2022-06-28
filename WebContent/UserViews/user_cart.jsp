<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/UserCss/.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.html"%>

<div class="wrapper">
	<h1>CART</h1>
</div>

<hr>

<c:choose>
	<c:when test="${cart.size()>0}">
		<p>${cart.size()}種類の商品があります。</p>
	</c:when>

	<c:otherwise>
		<p>カートに商品がありません。</p>
	</c:otherwise>
</c:choose>

<form action="../servlets/CartRemoveAction" method="get">
	<table class="itemes">
		<c:forEach var="itemBean" items="${cart}">

			<tr>
				<td><img src="../UserImg/${itemBean.registBean.itemId}.jpg"></td>
				<td>${itemBean.registBean.name}</td>
				<td>\ ${itemBean.registBean.price}</td>
				<td>${itemBean.count}個</td>
				<td>￥<input type="text" name="item01" size="8" value="0"></td>
				<td class="total" align="right" colspan="3"><strong>TOTAL</strong></td>
				<td>￥<input type="text" id="total" size="8" value="0"></td>
				<td><a href="<c:url value="../servlets/CartRemoveAction">
					<c:param name="itemId" value="${itemBean.registBean.itemId}" /></c:url>">REMOVE</a></td>
			</tr>
		</c:forEach>
	</table>
</form>

<form action="../UserViews/user_item.jsp" method="get">
	<input type="submit" value="BACK">
</form>

<form action="#" method="get">
	<input type="submit" value="PROCEED TO CHECKOUT">
</form>
<!--自作のJS-->
<script src="../UserJs/cart.js"></script>
</body>
</html>

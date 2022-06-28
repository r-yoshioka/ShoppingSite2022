<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/UserCss/user_design_itemInfo.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.html"%>

<hr>
<div class="itemInfo">

	<div>
		<p><img src="../UserImg/${rb.itemId}.jpg" height="100"></p>
		<p>${rb.name}<br>
		   ${rb.info}
		</p>
		<p>\ ${rb.price}</p>
	</div>

	<div class="link">
		<a class="cart"
					href="<c:url value="../servlets/CartAction">
					<c:param name="itemId" value="${rb.itemId }" /></c:url>">CART</a>

		<a href="../servlets/UserItemAction">BACK</a>
	</div>

</div>

<%@ include file="../footer.html"%>

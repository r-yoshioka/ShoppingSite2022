<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/UserCss/user_design_item.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.html"%>
<div class="wrapper">
<h1>ALL ITEMES</h1>
</div>

<hr>

<form action="../servlets/UserIemInfo" method="post">
<div class="itemes">
	<c:forEach var="rb" items="${list}">

			<div>
				<a href="<c:url value="../servlets/UserItemInfo">
					<c:param name="itemId" value="${rb.itemId }" /></c:url>">
				<img src="../UserImg/${rb.itemId}.jpg" >
				</a>

				<p><a href="<c:url value="../servlets/UserItemInfo">
					<c:param name="itemId" value="${rb.itemId }" /></c:url>">
					${rb.name}</a>
				</p>

				<p>\ ${rb.price}</p>
				<p><a class="cart" href="" >CART</a></p>
			</div>

	</c:forEach>
</div>
</form>

<%@ include file="../footer.html"%>

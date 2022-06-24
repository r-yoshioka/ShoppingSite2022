<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/UserCss/user_design_item.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.html"%>

<p>ALL ITEMES</p>
<hr>
<form action="../servlets/UserItemInfo" method="get">
<ul>
	<c:forEach var="rb" items="${list}">

			<li><img src="../UserImg/${rb.itemId}.jpg" height="100"></li>
			<li><a href="../servlets/UserItemInfo?id=${rb.itemId}">商品名${rb.name}</a></li>
			<li>値段${rb.price}円</li>
			<li><a href="CartAdd.action?id=${rb.itemId}">カート</a></li>

	</c:forEach>
</ul>
</form>

<%@ include file="../footer.html"%>

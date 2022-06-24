<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/UserCss/user_design_item.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.html"%>

<p>ALL ITEMES</p>
<hr>

<ul>
	<c:forEach var="RegistBean" items="${list}">

			<li><img src="../UserImg/${RegistBean.itemId}.jpg" height="100"></li>
			<li>商品名${RegistBean.name}</li>
			<li>値段${RegistBean.price}円</li>
			<li><a href="CartAdd.action?id=${RegistBean.itemId}">カート</a></li>

	</c:forEach>
</ul>

<%@ include file="../footer.html"%>

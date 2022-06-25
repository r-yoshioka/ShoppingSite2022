<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/UserCss/user_design_item.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.html"%>

<hr>

<ul>
	<li><img src="../UserImg/${rb.itemId}.jpg" height="100"></li>
	<li>商品名${rb.name}</li>
	<li>詳細${rb.info}</li>
	<li>値段${rb.price}円</li>
	<li><a href="CartAdd.action?id=${rb.itemId}">カート</a></li>

</ul>

<%@ include file="../footer.html"%>

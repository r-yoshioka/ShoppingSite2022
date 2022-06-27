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
		<p>商品名${rb.name}</p>
		<p>詳細${rb.info}</p>
		<p>値段${rb.price}円</p>
		<p><a href="">カート</a> <a href="../servlets/UserItemAction">戻る</a></p>
	</div>

</div>

<%@ include file="../footer.html"%>

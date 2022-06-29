<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- フォント -->
<link
	href="https://fonts.googleapis.com/css2?family=Shadows+Into+Light&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Yomogi&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/UserCss/user_design_cart.css">
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/UserCss/header.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.html"%>

 <div id="container">
		   <header id="header">
			   <h1>SHOP</h1>
			   <nav>
				   <ul id="menu">
					   <li><a href="../UserViews/user_top.jsp" class="push">TOP</a></li>
					   <li class="has-child"><a href="#" class="push">CATEGORY</a>
						   <ul>
							   <li><a href="#" class="push">ALL ITEM</a></li>
							   <li><a href="#" class="push">HAIR CARE</a></li>
							   <li><a href="#" class="push">BODY CARE</a></li>
							   <li><a href="#" class="push">SKIN CARE</a></li>
						   </ul>
					   </li>
					   <li><a href="../UserViews/user_cart.jsp">CART</a></li>
					   <li class="has-child"><a href="../UserViews/user_mypage.jsp">MYPAGE</a>
						   <ul>
							   <li class="mini">
							      <a href="../UserViews/user_profile_search.jsp" class="push">MY PROFILE</a>
							   </li>
							   <li class="mini">
							      <a href="../UserViews/user_update_search.jsp" class="push">UPDATE MY PROFILE</a>
							   </li>
							   <li class="mini">
							      <a href="../UserViews/user_update_search.jsp" class="push">INFORMATION</a>
							   </li>
							   <li class="mini">
							      <a href="../UserViews/user_logout.jsp" class="push">LOGOUT</a>
							   </li>
						   </ul>
					   </li>
				   </ul>
			   </nav>
		   </header>
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
	<table class="itemes" border="1">
		<c:forEach var="itemBean" items="${cart}">

			<tr>
				<th>ITEMS</th>
				<th>NAME</th>
				<th>PRICE</th>
				<th>QUANTITY</th>
			</tr>

			<tr>
				<td><img src="../UserImg/${itemBean.registBean.itemId}.jpg" height="300"></td>
				<td>${itemBean.registBean.name}</td>
				<td>\ ${itemBean.registBean.price}</td>
				<td>${itemBean.count}個</td>
				<td><a href="<c:url value="../servlets/CartRemoveAction">
					<c:param name="itemId" value="${itemBean.registBean.itemId}" /></c:url>">削除</a></td>
			</tr>
		</c:forEach>
	</table>
</form>

<p>TOTAL\ <%=request.getAttribute("sum")%></p>

<form class="buttun" action="../UserViews/user_top.jsp" method="get">
	<input type="submit" value="戻る">
</form>

<form class="buttun" action="../UserViews/user_item.jsp" method="get">
	<input type="submit" value="商品一覧へ">
</form>

<form class="buttun" action="../UserViews/user_customer_input.jsp" method="get">
	<input type="submit" value="購入画面に進む">
</form>
</div>
<%@ include file="../footer.html"%>

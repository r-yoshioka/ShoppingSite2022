<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- フォント -->
<link
	href="https://fonts.googleapis.com/css2?family=Shadows+Into+Light&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Yomogi&display=swap"
	rel="stylesheet">
<!-- 自作CSS -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/UserCss/user_design_item.css">
	<link rel="stylesheet" type="text/css" href="../UserCss/header.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.html"%>

<header id="header">
			<h1 class="name">SHOP</h1>
			<nav>
				<ul id="menu">
					<li><a href="../UserViews/user_top.jsp" class="navi">TOP</a></li>
					<li class="has-child"><a href="#" class="navi">CATEGORY</a>
						<ul>
							<li class="mini2"><a href="../servlets/UserItemAction"
								class="mini">ALL ITEM</a></li>
							<li class="mini2"><a href="#" class="mini">HAIR CARE</a></li>
							<li class="mini2"><a href="#" class="mini">BODY CARE</a></li>
							<li class="mini2"><a href="#" class="mini">FACE CARE</a></li>
							<li class="mini2"><a href="../UserViews/user_hot_item.jsp" class="mini">HOT ITEM</a></li>
							<li class="mini2"><a href="../UserViews/user_ranking_item.jsp" class="mini">RANKING</a></li>
						</ul></li>
					<li class="has-child"><a href="../UserViews/user_mypage.jsp"
						class="navi">MYPAGE</a>
						<ul>
							<li class="mini2"><a
								href="../UserViews/user_profile_search.jsp" class="mini">MY
									PROFILE</a></li>
							<li class="mini2"><a
								href="../UserViews/user_update_search.jsp" class="mini">UPDATE
									MY PROFILE</a></li>
							<li class="mini2"><a
								href="../UserViews/user_update_search.jsp" class="mini">INFORMATION</a>
							</li>
							<li class="mini2"><a href="../UserViews/user_logout.jsp"
								class="mini">LOGOUT</a></li>
						</ul>
					<li><a href="../UserViews/user_cart.jsp" class="cart-btn"></a></li>
					<li>
						<div class="open-btn"></div> <!--虫眼鏡マークのHTML-->
						<div id="search-wrap">
							<!--表示エリアのHTML虫眼鏡マークをクリックするとsearch-wrap に表示用のクラス名が付与されて前面に画面表示。閉じるボタン（close-btn）をクリックするとクラス名が除去されて非表示。-->
							<div class="search-area">
								<form role="search" method="post" action="../servlets/UserTop">
									<input type="text" value="search" name="search"
										id="search-text" placeholder="search"> <input
										type="submit" id="searchsubmit" value="">
								</form>
								<!--/search-area-->
							</div>
							<!--/search-wrap-->
						</div>
					</li>
				</ul>
			</nav>
		</header>

<div class="wrapper">
	<h1>ALL ITEMES</h1>
</div>

<hr>

<div class="itemes">
	<c:forEach var="rb" items="${list}">

		<div>
			<form action="../servlets/UserIemInfo" method="get">
				<a
					href="<c:url value="../servlets/UserItemInfo">
					<c:param name="itemId" value="${rb.itemId }" /></c:url>">
					<img src="../UserImg/${rb.itemId}.jpg">
				</a>

				<p><a href="<c:url value="../servlets/UserItemInfo">
					<c:param name="itemId" value="${rb.itemId }" /></c:url>">${rb.name}</a>
				</p>

				<p>\ ${rb.price}</p>
			</form>

			<form action="../servlets/CartAction" method="get">
			<p>
				<a class="cart" href="<c:url value="../servlets/CartAction">
					<c:param name="itemId" value="${rb.itemId }" /></c:url>">CART</a>
			</p>
			</form>

		</div>

	</c:forEach>
</div>
<!--自作のJS-->
	<script src="../UserJs/header.js"></script>
<%@ include file="../footer.html"%>

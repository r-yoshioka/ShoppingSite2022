<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- フォント -->
<link
	href="https://fonts.googleapis.com/css2?family=Shadows+Into+Light&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Yomogi&display=swap"
	rel="stylesheet">
<!-- 自作のCSS -->
<link rel="stylesheet" type="text/css" href="../UserCss/header.css">
<link rel="stylesheet" type="text/css" href="../UserCss/footer.css">
</head>
<body>
	<div id="container">
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
							<li class="mini2"><a href="../UserViews/user_hot_item.jsp"
								class="mini">HOT ITEM</a></li>
							<li class="mini2"><a
								href="../UserViews/user_ranking_item.jsp" class="mini">RANKING</a></li>
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
							<div class="close-btn">
								<span></span><span></span>
							</div>
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

		<h2>FACE CARE</h2>
		<table>
			<tr>
				<td><img src="../UserImg/I06281437.jpg" alt="face" width="80%"></td>
				<td>ONE THING</td>
				<td>￥2,160</td>
				<td><a class="cart" href="">CART</a></td>
			</tr>

			<tr>
				<td><img src="../UserImg/I06271649.jpg" alt="face" width="80%"></td>
				<td>ONE THING</td>
				<td>￥2,160</td>
				<td><a class="cart" href="">CART</a></td>
			</tr>

			<tr>
				<td><img src="../UserImg/I06281449.jpg" alt="face" width="80%"></td>
				<td>ONE THING</td>
				<td>￥2,160</td>
				<td><a class="cart" href="">CART</a></td>
			</tr>

			<tr>
				<td><img src="../UserImg/I06281405.jpg" alt="face" width="80%"></td>
				<td>ONE THING</td>
				<td>￥2,160</td>
				<td><a class="cart" href="">CART</a></td>
			</tr>

			<tr>
				<td><img src="../UserImg/I06271046.jpg" alt="face" width="80%"></td>
				<td>ONE THING</td>
				<td>￥2,160</td>
				<td><a class="cart" href="">CART</a></td>
			</tr>
		</table>

		<footer>
			<p class="copyright">
				Minami Shingaki<br> m.shingaki@ks-japan.jp
			</p>
			<p class="copyright">
				Risa Yoshioka<br> r.yoshioka@ks-japan.jp
			</p>
			<p class="copyright">Copyright:KSJ</p>
		</footer>
	</div>

	<!--自作のJS-->
	<script src="../UserJs/header.js"></script>
</body>
</html>
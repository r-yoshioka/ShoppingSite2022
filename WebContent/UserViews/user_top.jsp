<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<!-- フォント -->
<link
	href="https://fonts.googleapis.com/css2?family=Shadows+Into+Light&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Yomogi&display=swap"
	rel="stylesheet">
<!-- 検索・スライド写真・スクロール-->
<link rel="stylesheet" type="text/css"
	href="https://coco-factory.jp/ugokuweb/wp-content/themes/ugokuweb/data/reset.css">
<!-- スライド写真-->
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">
<!-- 商品一覧 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css">
<!-- 自作のCSS -->
<link rel="stylesheet" type="text/css" href="../UserCss/user_top.css">
<link rel="stylesheet" type="text/css"
	href="../UserCss/user_top_header.css">
<link rel="stylesheet" type="text/css" href="../UserCss/user_top_item.css">
</head>

<body>
	<div id="splash">
		<div id="splash_text"></div>
		<div class="loader_cover loader_cover-up"></div>
		<div class="loader_cover loader_cover-down"></div>
	</div>

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

		<main>
			<div class="wrapper">
				<ul class="slider">
					<li class="slider-item slider-item01"></li>
					<li class="slider-item slider-item02"></li>
					<li class="slider-item slider-item03"></li>
				</ul>
				<!--/wrapper-->
			</div>

			<section class="left">
				<div class="concept">
					<div class="content">
						<h2 class="heading">CONCEPT</h2>
						<h3>自然にやさしく、自分を磨こう</h3>
						<p class="text">
							オーガニックやビーガンなどの成分を使用し、自然環境にやさしく<br> そして、身体の内側から自分磨きをしていきませんか？
						</p>
					</div>
				</div>

				<div class="left-con">
					<div class="left-content">
						<div class="left-content-item">
							<img src="../UserImg/ビーガン２.jpg" class="left-image">
						</div>
						<div class="left-content-item">
							<div class="text">
								<h2 class="heading">VEGAN</h2>
								<p>
									ビーガンとは<br> 日本語で「完全菜食主義」といわれ、<br>
									食事や衣服、生活用品などで動物由来のものは利用せず、作られるもの
								</p>
							</div>
						</div>
					</div>
				</div>
			</section>

			<section class="right">
				<div class="right-con">
					<div class="right-content">
						<div class="right-content-item">
							<img src="../UserImg/オーガニック.jpg" class="right-image">
						</div>
						<div class="right-content-item">
							<div class="text">
								<h2 class="heading">ORGANIC</h2>
								<p>
									オーガニックとは<br> 化学肥料や農薬などを極力使用せず、<br> 自然の恵みを大切にしたもの
								</p>
							</div>
						</div>
					</div>
				</div>
			</section>

			<section class="miniItem">
				<h2>　HOT ITEM</h2>
				<table class="itemes">
					<tr>
						<td><img src="../UserImg/I06281422.jpg" alt="化粧水１"
							width="60%"></td>
						<td><img src="../UserImg/I06271648.jpg" alt="化粧水2"
							width="60%"></td>
						<td><img src="../UserImg/I06271046.jpg" alt="化粧水3"
							width="60%"></td>
						<td><img src="../UserImg/I06271614.jpg" alt="化粧水4"
							width="60%"></td>
					</tr>
					<tr>
						<td>化粧水1</td>
						<td>化粧水2</td>
						<td>化粧水3</td>
						<td>化粧水4</td>
					</tr>
					<tr>
						<td>1.098円</td>
						<td>1.540円</td>
						<td>2,160円</td>
						<td>2,480円</td>
					</tr>
					<tr>
						<td><a class="cart" href="">CART</a></td>
						<td><a class="cart" href="">CART</a></td>
						<td><a class="cart" href="">CART</a></td>
						<td><a class="cart" href="">CART</a></td>
					</tr>
				</table>
				<p><a href="../UserViews/user_hot_item.jsp" class="push2">View More</a></p>
			</section>

			<section class="miniItem">
				<h2>　RANKING</h2>
				<table class="itemes">
					<tr>
						<td><img src="../UserImg/I06281400.jpg" alt="化粧水１"
							width="60%"></td>
						<td><img src="../UserImg/I06281403.jpg" alt="化粧水2"
							width="60%"></td>
						<td><img src="../UserImg/I06271020.jpg" alt="化粧水3"
							width="60%"></td>
						<td><img src="../UserImg/I06281403.jpg" alt="化粧水4"
							width="60%"></td>
					</tr>
					<tr>
						<td>化粧水1</td>
						<td>化粧水2</td>
						<td>化粧水3</td>
						<td>化粧水4</td>
					</tr>
					<tr>
						<td>1.098円</td>
						<td>1.540円</td>
						<td>2,160円</td>
						<td>2,480円</td>
					</tr>
					<tr>
						<td><a class="cart" href="">CART</a></td>
						<td><a class="cart" href="">CART</a></td>
						<td><a class="cart" href="">CART</a></td>
						<td><a class="cart" href="">CART</a></td>
					</tr>
				</table>
				<p><a href="../UserViews/user_ranking_item.jsp" class="push2">View More</a></p>
			</section>

			<section>
			  <footer>
			     <p class="copyright">Minami Shingaki<br>
			                m.shingaki@ks-japan.jp</p>
			     <p class="copyright">Risa Yoshioka<br>
			                r.yoshioka@ks-japan.jp</p>
			     <p class="copyright">Copyright:KSJ</p>
		      </footer>
			</section>
			<!--/main-->
		</main>
	</div>

	<!-- jquery -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

	<!--自作のJS-->
	<script src="../UserJs/user_top.js"></script>

	<script
		src="https://rawgit.com/kimmobrunfeldt/progressbar.js/master/dist/progressbar.min.js"></script>

	<!--自作のJS-->
	<script src="../UserJs/user_top_header.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/multiscroll.js/0.2.2/jquery.multiscroll.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
	<!--Muuri-->
	<script src="https://unpkg.com/muuri@0.8.0/dist/muuri.min.js"></script>
	<script
		src="https://unpkg.com/web-animations-js@2.3.2/web-animations.min.js"></script>
	<!--fancybox-->
	<script
		src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
</body>
</html>
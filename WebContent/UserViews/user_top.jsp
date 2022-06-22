<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<!-- 検索-->
<link rel="stylesheet" type="text/css"
	href="https://coco-factory.jp/ugokuweb/wp-content/themes/ugokuweb/data/reset.css">
<!-- スライド写真-->
<link rel="stylesheet" type="text/css"
	href="https://coco-factory.jp/ugokuweb/wp-content/themes/ugokuweb/data/reset.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">
<!-- 商品一覧 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css">
<!-- スクロール -->
<link rel="stylesheet" type="text/css"
	href="https://coco-factory.jp/ugokuweb/wp-content/themes/ugokuweb/data/reset.css">
<!-- 自作のCSS -->
<link rel="stylesheet" type="text/css" href="../UserCss/user_top.css">
<link rel="stylesheet" type="text/css"
	href="../UserCss/user_top_header.css">
</head>

<body>
	<div id="splash">
		<div id="splash_text"></div>
		<div class="loader_cover loader_cover-up"></div>
		<div class="loader_cover loader_cover-down"></div>
	</div>

	<div id="container">
		<header id="header">
			<h1>SHOP</h1>
			<nav>
				<ul id="menu">
					<li><a href="#">TOP</a></li>
					<li class="has-child"><a href="#">CATEGORY</a>
						<ul>
							<li><a href="#">ALL ITEM</a></li>
							<li><a href="#">HAIR CARE</a></li>
							<li><a href="#">BODY CARE</a></li>
							<li><a href="#">SKIN CARE</a></li>
						</ul></li>
					<li><a href="#">CART</a></li>
					<li><a href="#">MYPAGE</a></li>
					<li>
						<div class="open-btn"></div> <!--虫眼鏡マークのHTML-->
						<div id="search-wrap">
							<!--表示エリアのHTML虫眼鏡マークをクリックするとsearch-wrap に表示用のクラス名が付与されて前面に画面表示。閉じるボタン（close-btn）をクリックするとクラス名が除去されて非表示。-->
							<div class="close-btn">
								<span></span><span></span>
							</div>
							<div class="search-area">
								<form role="search" method="get" action="">
									<input type="text" value="" name="" id="search-text"
										placeholder="search"> <input type="submit"
										id="searchsubmit" value="">
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

			<section id="area-1">
				<ul class="sort-btn">
					<li class="sort00 active">ALL</li>
					<!--はじめに「全て」ボタンに現在地表示をつけるためactive というクラス名を付与-->
					<li class="sort01">MEMORY</li>
					<li class="sort02">MY FAMIIY</li>
					<li class="sort03">SCENERY</li>
				</ul>

				<ul class="grid">
					<!--1番外側のタグにgrid というクラス名を付与。-->
					<li class="item sort01">
						<!--li には、item というクラス名と並び替え基準となるクラス名（ボタンのクラス名と同じ名前）を付与。-->
						<div class="item-content">
							<!--内側のdivには高さを維持するためにitem-contentというクラス名をつける。-->
							<a href="img/01.jpg" data-fancybox="group1"
								data-caption="グループ1キャプション"><img src="img/01.jpg" alt=""></a>
							<!--複数画像をグループ化してサムネ
イル表示させたい場合は、datafancybox="半角英数字で同一のグループ名"、キャプションを入れたい場合はdata-caption="キャプションタイトル"を設定する。-->
						</div>
					</li>
					<li class="item sort01">
						<div class="item-content">
							<a href="image/グランピング.jpg" data-fancybox="group1"
								data-caption="Flower 2018"><div class="img-box">
									<img src="image/グランピング.jpg" alt="">
								</div> <span>Glamping2022</span></a>
						</div>
					</li>
					<li class="item sort03">
						<div class="item-content">
							<a href="image/カメハメハ大王.jpg" data-fancybox="group3"
								data-caption="Flower 2018"><div class="img-box">
									<img src="image/カメハメハ大王.jpg" alt="">
								</div> <span>Sea2021</span></a>
						</div>
					</li>
					<li class="item sort02">
						<div class="item-content">
							<a href="image/猫階段.jpg" data-fancybox="group2"
								data-caption="Flower 2020"><div class="img-box">
									<img src="image/猫階段.jpg" alt="">
								</div> <span>My Family</span></a>
						</div>
					</li>
					<li class="item sort01">
						<div class="item-content">
							<a href="image/卒業一人.jpg" data-fancybox="group1"
								data-caption="Flower 2018"><div class="img-box">
									<img src="image/卒業一人.jpg" alt="">
								</div> <span>Graduation2022</span></a>
						</div>
					</li>
					<li class="item sort03">
						<div class="item-content">
							<a href="image/熱海花火.jpg" data-fancybox="group3"
								data-caption="Woman 2018"><div class="img-box">
									<img src="image/熱海花火.jpg" alt="">
								</div> <span>Firework 2019</span></a>
						</div>
					</li>
					<li class="item sort03">
						<div class="item-content">
							<a href="image/スキー場.jpg" data-fancybox="group3"
								data-caption="Flower 2018"><div class="img-box">
									<img src="image/スキー場.jpg" alt="">
								</div> <span>Glamping2022</span></a>
						</div>
					</li>
					<li class="item sort02">
						<div class="item-content">
							<a href="image/猫顔.jpg" data-fancybox="group2"
								data-caption="Woman2024"><div class="img-box">
									<img src="image/猫顔.jpg" alt="">
								</div> <span>My Family</span></a>
						</div>
					</li>
					<li class="item sort01">
						<div class="item-content">
							<a href="image/history.jpg" data-fancybox="group1"
								data-caption="Flower 2018"><div class="img-box">
									<img src="image/history.jpg" alt="">
								</div> <span>Glamping2022</span></a>
						</div>
					</li>
					<li class="item sort03">
						<div class="item-content">
							<a href="image/変な雲.jpg" data-fancybox="group3"
								data-caption="Winter 2006"><div class="img-box">
									<img src="image/変な雲.jpg" alt="">
								</div> <span>Memory 2021</span></a>
						</div>
					</li>
					<li class="item sort01">
						<div class="item-content">
							<a href="image/ぐあむ.jpg" data-fancybox="group1"
								data-caption="Desk 2020"><div class="img-box">
									<img src="image/ぐあむ.jpg" alt="">
								</div> <span>Memory 2020</span></a>
						</div>
					</li>
					<li class="item sort02">
						<div class="item-content">
							<a href="image/ジブゴミ箱.jpg" data-fancybox="group2"
								data-caption="Flower 2018"><div class="img-box">
									<img src="image/ジブゴミ箱.jpg" alt="">
								</div> <span>Glamping2022</span></a>
						</div>
					</li>
					<li class="item sort03">
						<div class="item-content">
							<a href="image/湘南平.jpg" data-fancybox="group3"
								data-caption="Winter 2006"><div class="img-box">
									<img src="image/湘南平.jpg" alt="">
								</div> <span>Memory 2021</span></a>
						</div>
					</li>
					<li class="item sort01">
						<div class="item-content">
							<a href="image/でぃずにー.jpg" data-fancybox="group1"
								data-caption="Woman 2018"><div class="img-box">
									<img src="image/でぃずにー.jpg" alt="">
								</div> <span>Memory 2022</span></a>
						</div>
					</li>
					<li class="item sort02">
						<div class="item-content">
							<a href="image/ジブ光.jpg" data-fancybox="group2"
								data-caption="Flower 2018"><div class="img-box">
									<img src="image/ジブ光.jpg" alt="">
								</div> <span>Glamping2022</span></a>
						</div>
					</li>
					<li class="item sort03">
						<div class="item-content">
							<a href="image/だざいふ.jpg" data-fancybox="group3"
								data-caption="Ocean 2010"><div class="img-box">
									<img src="image/だざいふ.jpg" alt="">
								</div> <span>Trip 2022</span></a>
						</div>
					</li>
					<li class="item sort02">
						<div class="item-content">
							<a href="image/猫餌.jpg" data-fancybox="group2"
								data-caption="Flower 2018"><div class="img-box">
									<img src="image/猫餌.jpg" alt="">
								</div> <span>Glamping2022</span></a>
						</div>
					</li>
					<li class="item sort01">
						<div class="item-content">
							<a href="image/雪自分.jpg" data-fancybox="group1"
								data-caption="Woman 2021"><div class="img-box">
									<img src="image/雪自分.jpg" alt="">
								</div> <span>Memory 2020</span></a>
						</div>
					</li>
					<li class="item sort02">
						<div class="item-content">
							<a href="image/テテ顔.jpg" data-fancybox="group2"
								data-caption="Flower 2018"><div class="img-box">
									<img src="image/テテ顔.jpg" alt="">
								</div> <span>Glamping2022</span></a>
						</div>
					</li>
					<li class="item sort02">
						<div class="item-content">
							<a href="image/テテカラー.jpg" data-fancybox="group2"
								data-caption="Mountain 2000"><div class="img-box">
									<img src="image/テテカラー.jpg" alt="">
								</div> <span>My Family</span></a>
						</div>
					</li>
					<li class="item sort02">
						<div class="item-content">
							<a href="image/ジブ寝.jpg" data-fancybox="group2"
								data-caption="Flower 2018"><div class="img-box">
									<img src="image/ジブ寝.jpg" alt="">
								</div> <span>Glamping2022</span></a>
						</div>
					</li>
					<li class="item sort02">
						<div class="item-content">
							<a href="image/ジブ赤ちゃん.jpg" data-fancybox="group2"
								data-caption="Ocean 2025"><div class="img-box">
									<img src="image/ジブ赤ちゃん.jpg" alt="">
								</div> <span>My Family</span></a>
						</div>
					</li>
					<li class="item sort01">
						<div class="item-content">
							<a href="image/高校.jpg" data-fancybox="group1"
								data-caption="Woman 2020"><div class="img-box">
									<img src="image/高校.jpg" alt="">
								</div> <span>Memory 2018</span></a>
						</div>
					</li>
					<li class="item sort03">
						<div class="item-content">
							<a href="image/ebisu.jpg" data-fancybox="group3"
								data-caption="Steps 2000"><div class="img-box">
									<img src="image/ebisu.jpg" alt="">
								</div> <span>Memory 2021</span></a>
						</div>
					</li>
					<li class="item sort03">
						<div class="item-content">
							<a href="image/あしかが.jpg" data-fancybox="group3"
								data-caption="Winter 2006"><div class="img-box">
									<img src="image/あしかが.jpg" alt="">
								</div> <span>Memory 2021</span></a>
						</div>
					</li>
					<li class="item sort02">
						<div class="item-content">
							<a href="image/テテかくれんぼ.jpg" data-fancybox="group2"
								data-caption="Art 2021"><div class="img-box">
									<img src="image/テテかくれんぼ.jpg" alt="">
								</div> <span>My Family</span></a>
						</div>
					</li>
					<li class="item sort01">
						<div class="item-content">
							<a href="image/湘南.jpg" data-fancybox="group1"
								data-caption="Group 2010"><div class="img-box">
									<img src="image/湘南.jpg" alt="">
								</div> <span>Memory 2020</span></a>
						</div>
					</li>
					<li class="item sort02">
						<div class="item-content">
							<a href="image/猫外.jpg" data-fancybox="group2"
								data-caption="Woman 2023"><div class="img-box">
									<img src="image/猫外.jpg" alt="">
								</div> <span>My Family</span></a>
						</div>
					</li>
					<li class="item sort03">
						<div class="item-content">
							<a href="image/富士山.jpg" data-fancybox="group3"
								data-caption="Woman 2013"><div class="img-box">
									<img src="image/富士山.jpg" alt="">
								</div> <span>Photo 2020</span></a>
						</div>
					</li>
					<li class="item sort02">
						<div class="item-content">
							<a href="image/テテ寝.jpg" data-fancybox="group2"
								data-caption="Winter 2023"><div class="img-box">
									<img src="image/テテ寝.jpg" alt="">
								</div> <span>My Family</span></a>
						</div>
					</li>
					<li class="item sort02">
						<div class="item-content">
							<a href="image/仲良し.jpg" data-fancybox="group2"
								data-caption="Table 2023"><div class="img-box">
									<img src="image/仲良し.jpg" alt="">
								</div> <span>My Family</span></a>
						</div>
					</li>
					<li class="item sort01">
						<div class="item-content">
							<a href="image/sotugyou.jpg" data-fancybox="group1"
								data-caption="Flower 2019"><div class="img-box">
									<img src="image/sotugyou.jpg" alt="">
								</div> <span>Memory 2022</span></a>
						</div>
					</li>
					<li class="item sort01">
						<div class="item-content">
							<a href="image/鎌倉花.jpg" data-fancybox="group1"
								data-caption="Coffee 2019"><div class="img-box">
									<img src="image/鎌倉花.jpg" alt="">
								</div> <span>Memory 2021</span></a>
						</div>
					</li>
					<li class="item sort01">
						<div class="item-content">
							<a href="image/バスケ (2).jpg" data-fancybox="group1"
								data-caption="Ocean 2019"><div class="img-box">
									<img src="image/バスケ (2).jpg" alt="">
								</div> <span>Memory 2018</span></a>
						</div>
					</li>
					<li class="item sort03">
						<div class="item-content">
							<a href="image/gurannpinngu.jpg" data-fancybox="group3"
								data-caption="Woman 2014"><div class="img-box">
									<img src="image/gurannpinngu.jpg" alt="">
								</div> <span>Memory 2022</span></a>
						</div>
					</li>
					<li class="item sort03">
						<div class="item-content">
							<a href="image/恵比寿２.jpg" data-fancybox="group3"
								data-caption="Steps 2000"><div class="img-box">
									<img src="image/恵比寿２.jpg" alt="">
								</div> <span>Memory 2021</span></a>
						</div>
					</li>
					<li class="item sort01">
						<div class="item-content">
							<a href="image/熱海.jpg" data-fancybox="group1"
								data-caption="Table 2000"><div class="img-box">
									<img src="image/熱海.jpg" alt="">
								</div> <span>My Family</span></a>
						</div>
					</li>
					<li class="item sort02">
						<div class="item-content">
							<a href="image/other.jpg" data-fancybox="group2"
								data-caption="Woman 2000"><div class="img-box">
									<img src="image/other.jpg" alt="">
								</div> <span>My Family</span></a>
						</div>
					</li>
					<li class="item sort03">
						<div class="item-content">
							<a href="image/あしかが２.jpg" data-fancybox="group3"
								data-caption="Flower 2014"><div class="img-box">
									<img src="image/あしかが２.jpg" alt="">
								</div> <span>Memory 2021</span></a>
						</div>
					</li>
					<li class="item sort03">
						<div class="item-content">
							<a href="image/鎌倉.jpg" data-fancybox="group3"
								data-caption="Summer 2007"><div class="img-box">
									<img src="image/鎌倉.jpg" alt="">
								</div> <span>Memory 2021</span></a>
						</div>
					</li>
				</ul>
				<!--/area1-->
			</section>

			<section id="area-2">
				<!--area2の範囲に入ったらページトップリンクが出現-->
				<h2>Area 2</h2>
				<p>内容が入ります。</p>
				<!--/area2-->
			</section>

			<footer id="footer">
				<p class="js-scroll scroll-top scrollview">
					<a href="#area-2">Scroll</a>
				</p>
				<p class="js-pagetop scroll-top">
					<a href="#">Page Top</a>
				</p>
				<small>Copyright; KSJ</small>
			</footer>

			<form action="../servlets/UserLogin" method="post">

				<p>ようこそ！${loginName.name } さん！</p>

			</form>

			<form action="user_update_success.jsp" method="post">

				<p>おかえりなさい。${uub. name} さん！</p>

			</form>
			<!--/main-->
		</main>
	</div>

	<footer id="footer">
		<p class="js-scroll scroll-top scrollview">
			<a href="#area-2">Scroll</a>
		</p>
		<p class="js-pagetop scroll-top">
			<a href="#">Page Top</a>
		</p>
		<small>Copyright; KSJ</small>
	</footer>

	<!-- jquery -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>

	<script src="../UserJs/user_top.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script
		src="https://rawgit.com/kimmobrunfeldt/progressbar.js/master/dist/progressbar.min.js"></script>
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
	<!--自作のJS-->
		<script src="../UserJs/user_top_header.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta charset="UTF-8">
        <title>Login</title>
        <!-- フォント -->
        <link
	        href="https://fonts.googleapis.com/css2?family=Shadows+Into+Light&display=swap"
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
					   <li><a href="../UserViews/user_top.jsp" class="push">TOP</a></li>
					   <li class="has-child"><a href="#" class="push">CATEGORY</a>
						   <ul>
							   <li class="mini"><a href="#" class="push">ALL ITEM</a></li>
							   <li class="mini"><a href="#" class="push">HAIR CARE</a></li>
							   <li class="mini"><a href="#" class="push">BODY CARE</a></li>
							   <li class="mini"><a href="#" class="push">SKIN CARE</a></li>
						   </ul>
					   </li>
					   <li><a href="#">CART</a></li>
					   <li class="has-child">
					       <a href="../UserViews/user_mypage.jsp"class="push">MYPAGE</a>
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
							       <a href="../UserViews/user_logout.jsp" class="push">LOGOUT</a></li>
						   </ul>
					   <li>
						   <div class="open-btn"></div> <!--虫眼鏡マークのHTML-->
						   <div id="search-wrap">
							   <!--表示エリアのHTML虫眼鏡マークをクリックするとsearch-wrap に表示用のクラス名が付与されて前面に画面表示。閉じるボタン（close-btn）をクリックするとクラス名が除去されて非表示。-->
							   <div class="close-btn">
								   <span></span><span></span>
							   </div>
							   <div class="search-area">
								   <form role="search" method="post" action="../servlets/UserTop">
									   <input type="text" value="search" name="search" id="search-text" placeholder="search">
									   <input type="submit" id="searchsubmit" value="">
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
				   <h2>CONCEPT</h2>
				   <h3>自然にやさしく、自分を磨こう</h3>
				   <p>
					   オーガニックやビーガンなどの成分を使用し、自然環境にやさしく<br> そして、身体の内側から自分磨きをしていきませんか？
				   </p>

				   <table>
					   <tr>
						   <td><img src="../UserImg/ビーガン２.jpg" alt="ビーガン" width="60%"></td>
						   <td><img src="../UserImg/オーガニック.jpg" alt="オーガニック" width="60%"></td>
					   </tr>
					   <tr>
						   <td>ビーガンとは<br>
						         日本語で「完全菜食主義」といわれ、<br>
							     食事や衣服、生活用品などで動物由来のものは利用せず、作られるもの
						   </td>
						   <td>オーガニックとは<br>
						         化学肥料や農薬などを極力使用せず、<br>
							     自然の恵みを大切にしたもの
						   </td>
					   </tr>
				   </table>
				   <!--/area1-->
			   </section>

			   <section id="area-2">
				   <!--area2の範囲に入ったらページトップリンクが出現-->
				   <ul class="sort-btn">
					   <li class="sort00 active">HOT ITEM</li>
					   <!--はじめに「全て」ボタンに現在地表示をつけるためactive というクラス名を付与-->
					   <li class="sort01">RANKING</li>
					   <li class="sort02">SUMMER ITEM</li>
					   <li class="sort03">ALL ITEM</li>
				   </ul>

				   <ul class="grid">
					   <!--1番外側のタグにgrid というクラス名を付与。-->
					   <li class="item sort01">
						   <!--li には、item というクラス名と並び替え基準となるクラス名（ボタンのクラス名と同じ名前）を付与。-->
						   <div class="item-content">
							   <!--内側のdivには高さを維持するためにitem-contentというクラス名をつける。-->
							   <a href="UserImg/スキンケア２１.jpg" data-fancybox="group1"
								   data-caption="グループ1キャプション"><img src="img/01.jpg" alt=""></a>
							   <!--複数画像をグループ化してサムネ
イル表示させたい場合は、datafancybox="半角英数字で同一のグループ名"、キャプションを入れたい場合はdata-caption="キャプションタイトル"を設定する。-->
						   </div>
					   </li>
					   <li class="item sort01">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group1"
							  	   data-caption="Flower 2018"><div class="img-box">
									   <img src="image/グランピング.jpg" alt="">
								   </div> <span>Glamping2022</span></a>
						   </div>
					   </li>
					   <li class="item sort03">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group3"
								   data-caption="Flower 2018"><div class="img-box">
									   <img src="image/カメハメハ大王.jpg" alt="">
								   </div> <span>Sea2021</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Flower 2020"><div class="img-box">
									   <img src="image/猫階段.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort01">
						   <div class="item-content">
						 	   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group1"
								   data-caption="Flower 2018"><div class="img-box">
									   <img src="image/卒業一人.jpg" alt="">
								   </div> <span>Graduation2022</span></a>
						   </div>
					   </li>
					   <li class="item sort03">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group3"
								   data-caption="Woman 2018"><div class="img-box">
									   <img src="image/熱海花火.jpg" alt="">
								   </div> <span>Firework 2019</span></a>
						   </div>
					   </li>
					   <li class="item sort03">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group3"
								   data-caption="Flower 2018"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>Glamping2022</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Woman2024"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort01">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group1"
								   data-caption="Flower 2018"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>Glamping2022</span></a>
						   </div>
					   </li>
					   <li class="item sort03">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group3"
								   data-caption="Winter 2006"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>Memory 2021</span></a>
						   </div>
					   </li>
					   <li class="item sort01">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group1"
								   data-caption="Desk 2020"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>Memory 2020</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Flower 2018"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>Glamping2022</span></a>
						   </div>
					   </li>
					   <li class="item sort03">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group3"
								   data-caption="Winter 2006"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>Memory 2021</span></a>
						   </div>
					   </li>
					   <li class="item sort01">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group1"
								   data-caption="Woman 2018"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>Memory 2022</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Flower 2018"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>Glamping2022</span></a>
						   </div>
					   </li>
					   <li class="item sort03">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group3"
								   data-caption="Ocean 2010"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>Trip 2022</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Flower 2018"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>Glamping2022</span></a>
						   </div>
					   </li>
					   <li class="item sort01">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group1"
								   data-caption="Woman 2021"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>Memory 2020</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Flower 2018"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>Glamping2022</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Flower 2018"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>Glamping2022</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
					   <li class="item sort02">
						   <div class="item-content">
							   <a href="../UserImg/スキンケア２１.jpg" data-fancybox="group2"
								   data-caption="Mountain 2000"><div class="img-box">
									   <img src="../UserImg/スキンケア２１.jpg" alt="">
								   </div> <span>My Family</span></a>
						   </div>
					   </li>
				   </ul>
				   <!--/area2-->
			   </section>

			   <form action="../servlets/UserLogin" method="post">
				   <p>ようこそ！${loginName.name } さん！</p>
			   </form>

			   <form action="user_update_success.jsp" method="post">
				   <p>おかえりなさい。${uub. name} さん！</p>
			   </form>
			   <!--/main-->
		   </main>

		   <footer id="footer">
			   <p class="js-scroll scroll-top scrollview">
				   <a href="#area-1">Scroll</a>
			   </p>
			   <p class="js-pagetop scroll-top">
				   <a href="#">Page Top</a>
			   </p>
			   <small id="copyright">Copyright; KSJ</small>
		   </footer>
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
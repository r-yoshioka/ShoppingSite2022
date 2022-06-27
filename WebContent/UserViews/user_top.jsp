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
	    <link rel="stylesheet" type="text/css" href="../UserCss/user_cart.css">
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
					   <li><a href="../UserViews/user_top.jsp" class="navi">TOP</a></li>
					   <li class="has-child"><a href="#" class="navi">CATEGORY</a>
						   <ul>
							   <li class="mini"><a href="#" class="push">ALL ITEM</a></li>
							   <li class="mini"><a href="#" class="push">HAIR CARE</a></li>
							   <li class="mini"><a href="#" class="push">BODY CARE</a></li>
							   <li class="mini"><a href="#" class="push">SKIN CARE</a></li>
						   </ul>
					   </li>
					   <li class="has-child">
					       <a href="../UserViews/user_mypage.jsp" class="navi">MYPAGE</a>
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

			   <section id="area-1" class="concept">
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
			   <form action="../servlets/UserTopItem" method="get">
				   <!--area2の範囲に入ったらページトップリンクが出現-->

				      <ul class="sort-btn">
				         <li class="sort00 active">HOT ITEM</li>
				         <li class="sort01">RANKING</li>
				         <li class="sort02">SUMMER ITEM</li>
				         <li class="sort03">ALL ITEM</li>
				      </ul>

				   <table class="item">
				      <tr>
				         <th class="image"><img src="../UserImg/I06271020.jpg"  alt="化粧水１" width="100%"></th>
	                     <td class="list">化粧水１</td>
                         <td class="list">1,208</td>
                         <td><a class="cart" href="../UserViews/user_cart.jsp" >CART</a></td>
                      </tr>

                        <tr>
                        <th class="image"><img src="../UserImg/I06271025.jpg"  alt="化粧水２" width="100%"></th>
                         <td class="list">化粧水２</td>
                         <td class="list">1,208</td>
                         <td><a class="cart" href="../UserViews/user_cart.jsp" >CART</a></td>
                      </tr>

                      <tr>
                      <th class="image"><img src="../UserImg/I06271046.jpg"  alt="化粧水3" width="100%"></th>
                         <td class="list">化粧水3</td>
                         <td class="list">1,208</td>
                         <td><a class="cart" href="../UserViews/user_cart.jsp" >CART</a></td>
                      </tr>

                      <tr>
                         <th class="image"><img src="../UserImg/スキンケア１１.jpg"  alt="化粧水3" width="100%"></th>
                         <td class="list">化粧水4</td>
                         <td class="list">1,208</td>
                         <td><a class="cart" href="../UserViews/user_cart.jsp" >CART</a></td>
                      </tr>

                      <tr>
                         <td>￥<input type="text" name="item01" size="8" value="0"> </td>
                         <td>￥<input type="text" name="item02" size="8" value="0"> </td>
                         <td>￥<input type="text" name="item03" size="8" value="0"> </td>
                      </tr>


				   <c:forEach var="rb" items="${list}">
				      <tr>
				         <td><a href="<c:url value="../servlets/UserItemInfo">
				         <c:param name="itemId" value="${rb.itemId }" /></c:url>">
				         <img src="../UserImg/${rb.itemId}.jpg" ></a></td>
				      </tr>

				      <tr>
				         <td><a href="<c:url value="../servlets/UserItemInfo">
				         <c:param name="itemId" value="${rb.itemId }" /></c:url>">
				         ${rb.name}</a></td>
				      </tr>

				      <tr>
				         <td>¥ ${rb.price}</td>
				      </tr>

				      <tr>
				         <td><a class="cart" href="CartAdd.action?id=${rb.itemId}" >CART</a></td>
				      </tr>

				   </c:forEach>
				   </table>

				 </form>
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
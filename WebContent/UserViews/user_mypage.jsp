<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SHOP MYPAGE</title>
<!-- フォント -->
<link
	href="https://fonts.googleapis.com/css2?family=Shadows+Into+Light&display=swap"
	rel="stylesheet">
<!-- 自作のCSS -->
<link rel="stylesheet" type="text/css" href="../UserCss/user_mypage.css">
</head>

<body>
	<div id="container">
		<header id="header">
			<h1>SHOP</h1>
			<nav>
				<ul id="menu">
					<li><a href="../UserVews/user_top.jsp" class="push">TOP</a></li>
					<li class="has-child"><a href="#" class="push">CATEGORY</a>
						<ul>
							<li><a href="#" class="push">ALL ITEM</a></li>
							<li><a href="#" class="push">HAIR CARE</a></li>
							<li><a href="#" class="push">BODY CARE</a></li>
							<li><a href="#" class="push">SKIN CARE</a></li>
						</ul></li>
					<li><a href="#">CART</a></li>
					<li class="has-child"><a href="../UserViews/user_mypage.jsp">MYPAGE</a>
					     <ul>
							<li class="mini"><a href="../UserViews/user_profile_search.jsp" class="push">MY PROFILE</a></li>
							<li class="mini"><a href="../UserViews/user_update_search.jsp" class="push">UPDATE MY PROFILE</a></li>
							<li class="mini"><a href="../UserViews/user_update_search.jsp" class="push">INFORMATION</a></li>
							<li class="mini"><a href="../UserViews/user_logout.jsp" class="push">LOGOUT</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</header>

		<main>
			<ul id="content">
				<li><a href="../UserViews/user_profile_search.jsp">MY PROFILE</a></li>
				<li><a href="../UserViews/user_update_search.jsp">UPDATE MY PROFILE</a></li>
				<li><a href="#">INFORMATION</a></li>
				<li><a href="../UserViews/user_logout.jsp">LOGOUT</a></li>
			</ul>
			<!--/main-->
		</main>
	</div>

	<footer id="footer">
		<small id="copyright">Copyright; KSJ</small>
	</footer>

	<!--自作のJS-->
	<script src="../UserJs/user_mypage.js"></script>
</body>
</html>
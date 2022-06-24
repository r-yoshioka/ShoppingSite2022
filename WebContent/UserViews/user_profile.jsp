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
<link rel="stylesheet" type="text/css"
	href="../UserCss/user_profile.css">
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
						</ul>
					</li>
					<li><a href="#">CART</a></li>
					<li class="has-child"><a href="../UserViews/user_mypage.jsp">MYPAGE</a>
						<ul>
							<li class="mini">
							    <a href="../UserViews/user_profile_search.jsp" class="push">MY PROFILE</a>
							</li>
							<li class="mini">
							    <a href="../UserViews/user_update_search.jsp" class="push">UPDATE MY PROFILE</a>
							</li>
							<li class="mini">
							    <a
								href="../UserViews/user_update_search.jsp" class="push">INFORMATION</a>
							</li>
							<li class="mini">
							    <a href="../UserViews/user_logout.jsp" class="push">LOGOUT</a>
							</li>
						</ul>
					</li>
				</ul>
			</nav>
		</header>

		<form action="../servlets/UserProfile" method="post">

			<p class="header">MY PROFILE</p>

			<table class="design">

				<tr>
					<th class="content">■NAME</th>
					<td class="input">${uub. name}</td>
				</tr>

				<tr>
					<th class="content">■GENDER</th>
					<td class="input">${uub. sex}</td>
				</tr>

				<tr>
					<th class="content">■BIRTHDAY</th>
					<td class="input">${uub.birthYear }年${uub.birthMonth }月${uub.birthDay }日</td>
				</tr>

				<tr>
					<th class="content">■JOB</th>
					<td class="input">${uub. job}</td>
				</tr>

				<tr>
					<th class="content">■PHONE NUMBER</th>
					<td class="input">${uub. phoneNumber}</td>
				</tr>

				<tr>
					<th class="content">■MAIL ADDRESS</th>
					<td class="input">${uub. mailAddress}</td>
				</tr>

				<tr>
					<th class="content">■PASSWORD</th>
					<td class="input">${uub. password}
			</table>
		</form>

		<form action="../UserViews/user_update.jsp" method="post">
			<p>
				<input type="submit" class="push" value="内容を変更する">
			</p>
		</form>

		<form action="../UserViews/user_mypage.jsp" method="post">
			<p>
				<input type="submit" class="push" value="戻る">
		</form>

		<footer id="footer">
			<small id="copyright">Copyright; KSJ</small>
		</footer>
	</div>

	<!--自作のJS-->
	<script src="../UserJs/user_mypage.js"></script>
</body>
</html>
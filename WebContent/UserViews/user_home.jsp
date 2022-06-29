<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/UserCss/user_design_home.css">
<!-- フォント -->
<link href="https://fonts.googleapis.com/css2?family=Shadows+Into+Light&display=swap" rel="stylesheet">
<html>
<head>
<a href="../AdminViews/admin_home.jsp"><img src="../AdminImg/admin_icon.jpeg"  alt="管理者ログイン"></a>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>

	<p class="title">-LIM ORGANIC-</p>

	<section class="background">

		<form action="user_login.jsp" method="post">
			<p>
				<input type="submit" class="push" value="ログイン">
			</p>
		</form>

		<form action="user_reginst.jsp" method="post">
			<p>
				<input type="submit" class="push" value="新規会員登録">
			</p>
		</form>

	</section>

<%@ include file="../footer.html"%>
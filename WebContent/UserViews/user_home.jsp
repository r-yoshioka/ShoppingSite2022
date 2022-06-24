<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/UserCss/user_design_home.css">
<%@ include file="../header.html"%>

	<p class="title">-STORE NAME-</p>

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
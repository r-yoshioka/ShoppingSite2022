<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>

<form action="../servlets/AdminRegist" method="post">

	<p class="header">登録内容（確認画面）</p>

	<span class="red">${messageE1}</span>
	<span class="red">${messageE2}</span>

</form>

<form action="../AdminViews/admin_menu.jsp" method="post">
	<input type="submit" class="push" value="メニュー">
</form>
<form action="../AdminViews/admin_regist.jsp" method="post">
	<input type="submit" class="push" value="戻る">
</form>

<%@ include file="../footer.html"%>
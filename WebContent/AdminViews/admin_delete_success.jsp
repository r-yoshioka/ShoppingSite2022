<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>

<form action="../servlets/AdminUpdate" method="post">

	<p class="header">削除内容（確認画面）</p>
	<span class="red">${messageI2} </span>

</form>

<form action="../AdminViews/admin_menu.jsp" method="post">
	<input type="submit" class="push" value="メニュー">
</form>

<%@ include file="../footer.html"%>
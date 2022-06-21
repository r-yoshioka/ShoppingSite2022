<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.html"%>

<form method="post" action="../Servlets/AdminAll">
	<input class="menu" type="submit" value="商品情報一覧" name="all">
</form>

<form method="post" action="../AdminViews/admin_regist.jsp">
	<input class="menu" type="submit" value="商品情報登録" name="regist">
</form>

<form method="post" action="../AdminViews/admin_update.jsp">
	<input class="menu" type="submit" value="商品情報変更" name="update">
</form>

<form method="post" action="../AdminViews/admin_delete.jsp">
	<input class="menu" type="submit" value="商品情報削除" name="delete">
</form>


<%@include file="../footer.html"%>
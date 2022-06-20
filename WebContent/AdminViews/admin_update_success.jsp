<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>

<form action="../servlets/AdminUpdate" method="post">

	<p class="header">更新内容（確認画面）</p>

	<table class="design">

		<tr>
			<th class="content">■NAME</th>
			<td class="input">${rb.name}</td>
		</tr>

		<tr>
			<th class="content">■PRICE</th>
			<td class="input">${rb.price}円</td>
		</tr>

		<tr>
			<th class="content">■NUMBER</th>
			<td class="input">${rb.number}個</td>
		</tr>

	</table>

</form>

<form action="../AdminViews/admin_menu.jsp" method="post">
	<input type="submit" class="push" value="メニュー">
</form>
<p>
	<input type="button" onclick="history.back()" value="戻る">
</p>

<%@ include file="../footer.html"%>
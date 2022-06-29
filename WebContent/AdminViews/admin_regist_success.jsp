<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>

<form action="../servlets/AdminRegist" method="post">

	<p class="header">登録内容（確認画面）</p>
	<span class="message">${messageI1}</span>

	<table class="design">

		<tr>
			<th class="content">■ID</th>
			<td class="input">${rb.itemId}</td>
		</tr>
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

		<tr>
			<th class="content">■Infomation</th>
			<td class="input">${rb.info}</td>
		</tr>

	</table>

</form>

<form action="../AdminViews/admin_menu.jsp" method="post">
	<input type="submit" class="push" value="メニュー">
</form>

<%@ include file="../footer.html"%>
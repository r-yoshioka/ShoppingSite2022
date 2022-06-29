<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>
<link rel="stylesheet" type="text/css" href="../UserCss/user_update.css">

<form action="../servlets/UserUpdate" method="post">

	<p class="header">入力内容（確認画面）</p>

	<p>以下の内容で変更いたしました。</p>

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
		<input type="submit" class="push" value="変更画面へ戻る">
	</p>
</form>

<form action="../UserViews/user_top.jsp" method="post">
	<p>
		<input type="submit" class="push" value="TOPへ戻る">
	</p>
</form>

<%@ include file="../footer.html"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>

<form action="../servlets/UserReginst" method="post">

	<p class="header">入力内容（確認画面）</p>

	<table class="design">

		<tr>
			<th class="content">■NAME</th>
			<td class="input">${reginstBean. name}</td>
		</tr>

		<tr>
			<th class="content">■GENDER</th>
			<td class="input">${reginstBean. sex}</td>
		</tr>

		<tr>
			<th class="content">■BIRTHDAY</th>
			<td class="input">${reginstBean.birthYear }年${reginstBean.birthMonth }月${reginstBean.birthDay }日</td>
		</tr>

		<tr>
			<th class="content">■JOB</th>
			<td class="input">${reginstBean. job}</td>
		</tr>

		<tr>
			<th class="content">■PHONE NUMBER</th>
			<td class="input">${reginstBean. phoneNumber}</td>
		</tr>

		<tr>
			<th class="content">■MAIL ADDRESS</th>
			<td class="input">${reginstBean. mailAddress}</td>
		</tr>

		<tr>
			<th class="content">■PASSWORD</th>
			<td class="input">${reginstBean. password}
	</table>

</form>

<form action="../UserViews/user_home.jsp" method="post">
	<p>
		<input type="submit" class="push" value="確認">
	</p>
</form>

<form action="../UserViews/user_reginst.jsp" method="post">
	<p>
		<input type="submit" class="push" value="戻る">
</form>

<%@ include file="../footer.html"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>

<h1 class="title">Login</h1>

<form action="../servlets/UserLogin" method="post">

	<table class="design">
		<tr>
			<th class="content">■MAIL ADDRESS</th>
			<td class="input"><input type="text" name="mail_address"></td>
		</tr>

		<tr>
			<th class="content">■PASSWORD</th>
			<td class="input"><input type="password" name="password"></td>
		</tr>

		<tr>
			<th></th>
			<td><input type="submit" value="ログイン"></td>
		</tr>
	</table>
</form>

<form action="user_home.jsp" method="post">
	<input type="submit" value="戻る">
</form>

<%@ include file="../footer.html"%>
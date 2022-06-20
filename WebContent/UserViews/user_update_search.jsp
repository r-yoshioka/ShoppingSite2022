<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>

<p class="header">会員情報更新画面</p>

<span>${USMessage }</span>

<form action="../servlets/UserUpdateSearch" method="post">
	<table class="search">
		<tr>
			<th>■MAIL ADDRESS</th>
			<td><input type="text" name="mail_address"></td>
		</tr>

		<tr>
			<th>■PASSWORD</th>
			<td><input type="password" name="password"></td>
		</tr>

		<tr>
			<td><input type="submit" value="検索"></td>
		</tr>
	</table>

</form>
<%@ include file="../footer.html"%>
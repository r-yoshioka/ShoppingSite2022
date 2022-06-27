<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>
<link rel="stylesheet" type="text/css" href="../UserCss/user_update.css">

<p class="header">会員情報更新画面</p>

<span>${USMessage }</span>

<form action="../servlets/UserUpdateSearch" method="post">
	<table class="design">
		<tr>
			<th class="content">■MAIL ADDRESS</th>
			<td class="input"><input type="text" name="mail_address" placeholder="example@gmail.com" size="40"></td>
		</tr>

		<tr>
			<th class="content">■PASSWORD</th>
			<td class="input"><input type="password" name="password" size="30" maxlength="20"></td>
		</tr>

		<tr>
		    <th></th>
			<td><input type="submit" class="push" value="検索"></td>
		</tr>
	</table>

</form>
<%@ include file="../footer.html"%>
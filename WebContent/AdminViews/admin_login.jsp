<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/AdminCss/admin_login.css">
<%@include file="../header.html"%>

<h1 class="header">管理者用ログイン画面</h1>
<span class="message">${message}</span>

<form action="../servlets/AdminLogin" method="post">
	<table class="design">
		<tr>
			<th class="content">■ID</th>
			<td class="input"><input type="text" name="adminId"
				placeholder="A0000000000" size="40" required></td>
		</tr>
		<tr>
			<th class="content">■PASSWORD</th>
			<td class="input"><input type="password" name="password"
				size="30" maxlength="20" required></td>
		</tr>
		<tr class="search">
			<th></th>
			<td><input type="submit" class="push" value="検索"></td>
		</tr>
		<tr class="serch">
			<th></th>
			<td><input type="submit" class="push"onclick="history.back()" value="戻る"></td>
		</tr>
	</table>
</form>
<%@include file="../footer.html"%>
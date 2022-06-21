<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.html"%>

<form action="../servlets/AdminInfoRegist" method="post">

	<p>管理者情報登録画面</p>

	<span class="red">${message}</span>

	<table class="design">
		<tr>
			<td class="input">氏名： <input type="text" maxlength="32"
				name="name" required>
			</td>
		</tr>
		<tr>
			<td class="input">パスワード： <input type="password" maxlength="20"
				name="password" required>
			</td>
	</table>

	<input type="button" onclick="history.back()" value="戻る">
	<input type="submit" value="登録">
	<input type="reset" value="リセット">

</form>

<%@include file="../footer.html"%>
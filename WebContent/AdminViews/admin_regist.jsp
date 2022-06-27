<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.html"%>

<form action="../Servlets/AdminRegist" method="post">

	<p>商品情報登録画面</p>

	<span class="red">${messageI1}</span>

	<table class="design">
		<tr>
			<td class="input">商品名： <input type="text" maxlength="20" name="name" required>
			</td>
		</tr>
		<tr>
			<td class="input">値段： <input type="tel" name="price" required>
			</td>
		</tr>
		<tr>
			<td class="input">個数： <input type="tel" name="number" required>
			</td>
		</tr>
		<tr>
			<td class="input">商品詳細： <textarea name="info" cols="30" rows="5" required></textarea>
			</td>
		</tr>
	</table>

	<input type="button" onclick="history.back()" value="戻る">
	<input type="submit" value="登録">
	<input type="reset" value="リセット">

</form>

<%@include file="../footer.html"%>
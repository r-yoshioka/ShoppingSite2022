<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.html"%>

	<p>商品情報削除画面</p>

	<span class="red">${messageI2} </span>
	<span class="red">${messageE3} </span>
	<span class="red">${messageE4} </span>

<form action="../Servlets/AdminSearch2" method="post">

	<table class="design">
		<tr>
			<td class="input">商品番号： <input type="text" name="itemId" value="${itemId}" required></td>
		</tr>
		<tr>
			<td class="input"><input type="submit" value="検索"></td>
		</tr>
	</table>

</form>

<form action="../Servlets/AdminDelete" method="post">

	<input type="hidden" name="itemId" value="${itemId}">

	<table class="design">
		<tr>
			<td class="input">商品名： <input type="text" name="name" value="${rb.name}" required>
			</td>
		</tr>

		<tr>
			<td class="input">値段： <input type="tel" name="price" value="${rb.price}" required>
			</td>
		</tr>
		<tr>
			<td class="input">個数： <input type="tel" name="number" value="${rb.number}" required>
			</td>
		</tr>
		<tr>
			<td class="input">商品詳細： <textarea name="info" cols="20" rows="10" <%= "${info}" %> required></textarea>
			</td>
		</tr>
	</table>

	<input type="button" class="push" onclick="history.back()" value="戻る">
	<input type="submit" class="push" value="削除">
	<input type="reset" class="push" value="リセット">

</form>

<%@include file="../footer.html"%>
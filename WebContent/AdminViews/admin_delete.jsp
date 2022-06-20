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
			<td class="input">商品番号： <input type="text" name="item_id" value="${item_id}" required></td>
		</tr>
		<tr>
			<td class="input"><input type="submit" value="検索"></td>
		</tr>
	</table>

</form>

<form action="../Servlets/AdminDelete" method="post">

	<input type="hidden" name="item_id" value="${item_id}">

	<table class="design">
		<tr>
			<td class="input">商品名： <input type="text" name="name" value="${rb.name}" required>
			</td>
		</tr>

		<tr>
			<td class="input">値段： <input type="text" name="price" value="${rb.price}" required>
			</td>
		</tr>
		<tr>
			<td class="input">個数： <input type="text" name="number" value="${rb.number}" required>
			</td>
		</tr>
	</table>

	<input type="button" onclick="history.back()" value="戻る">
	<input type="submit" value="削除">
	<input type="reset" value="リセット">

</form>

<%@include file="../footer.html"%>
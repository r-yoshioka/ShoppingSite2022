<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.html"%>

<p>商品情報更新画面</p>

<span class="red">${messageI3} </span>
<span class="red">${messageE3} </span>
<span class="red">${messageE2} </span>
<span class="red">${messageE5} </span>

<form action="../Servlets/AdminSearch" method="post">

	<table class="design">
		<tr>
			<td class="input">商品番号： <input type="text" maxlength="10" name="item_id" value="${item_id}" required></td>
		</tr>
		<tr>
			<td class="input"><input type="submit" value="検索"></td>
		</tr>
	</table>

</form>

<form action="../Servlets/AdminUpdate" method="post">

	<input type="hidden" name="item_id" value="${item_id}">

	<table class="design">
		<tr>
			<td class="input">商品名： <input type="text" maxlength="20" name="name" value="${rb.name}" required>
			</td>
		</tr>

		<tr>
			<td class="input">値段： <input type="tel" name="price" value="${rb.price}"required>
			</td>
		</tr>
		<tr>
			<td class="input">個数： <input type="tel" name="number" value="${rb.number}" required>
			</td>
		</tr>
	</table>

	<input type="button" class="push" onclick="history.back()" value="戻る">
	<input type="submit" class="push" value="更新">
	<input type="reset" class="push" value="リセット">

</form>

<%@include file="../footer.html"%>
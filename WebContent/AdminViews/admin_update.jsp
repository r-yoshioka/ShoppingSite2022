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
			<td class="input">商品番号： <input type="text" name="item_id" required></td>
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
			<td class="input">商品名： <input type="text" name="name" value="${name}" required>
			</td>
		</tr>

		<tr>
			<td class="input">値段： <input type="text" name="price" value="${price}" required>
			</td>
		</tr>
		<tr>
			<td class="input">個数： <input type="text" name="number" value="${number}" required>
			</td>
		</tr>
	</table>

	<input type="button" onclick="history.back()" value="戻る">
	<input type="submit" value="更新">
	<input type="reset" value="リセット">

</form>

<%@include file="../footer.html"%>
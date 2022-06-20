<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.html"%>

	<p>商品情報削除画面</p>

	<span class="red">${messageI3} </span> <span class="red">${messageE3}
	</span> <span class="red">${messageE2} </span>

<form action="../Servlets/AdminUpdate" method="post">

	<table class="design">
		<tr>
			<td class="input">商品番号： <input type="text" name="item_id" required>
			</td>
		</tr>
		<tr>
			<td class="input"><input type="submit" value="検索">
			</td>
		</tr>
		<tr>
			<td class="input">商品名： <input type="text" name="name" required>
			</td>
		</tr>

		<tr>
			<td class="input">値段： <input type="text" name="price" required>
			</td>
		</tr>
		<tr>
			<td class="input">個数： <input type="text" name="number" required>
			</td>
		</tr>
	</table>

	<input type="button" onclick="history.back()" value="戻る">
	<input type="submit" value="削除">
	<input type="reset" value="リセット">

</form>

<%@include file="../footer.html"%>
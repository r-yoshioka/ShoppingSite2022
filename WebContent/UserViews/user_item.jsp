<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/UserCss/user_design_item.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.html"%>

	<h2>商品一覧</h2>

	<p>検索キーワードを入力してください。</p>

	<form action="../servlets/UserItemAction" method="post">
		<input type="text" name="keyword">
		<input type="submit"value="検索">
	</form>
	<hr>

	<table>
		<c:forEach var="RegistBean" items="${list}">
			<tr>

				<td>商品${rb.item_id}</td>
				<td>商品名${rb.name}</td>
				<td>値段${rb.price}</td>
				<td><a href="CartAdd.action?id=${rb.item_id}">カート</a></td>

			</tr>
		</c:forEach>
	</table>

<%@ include file="../footer.html"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>
<link rel="stylesheet" type="text/css"
	href="../UserCss/user_customer_input.css">

<form action="../servlets/UserOrder" method="post">

	<h1 class="topic">Thank you!!</h1>

	<table class="design">
		<tr>
			<th class="content">NAME</th>
			<td class="input"><%=request.getAttribute("name")%></td>
		</tr>

		<tr>
			<th class="content">POST</th>
			<td class="input"><%=request.getAttribute("post")%></td>
		</tr>

		<tr>
			<th class="content">PREFECTURES</th>
			<td class="input"><%=request.getAttribute("prefectures")%></td>
		</tr>

		<tr>
			<th class="content">ADDRESS</th>
			<td class="input"><%=request.getAttribute("address")%></td>
		</tr>

		<tr>
			<th class="content">PAYMENT</th>
			<td class="input"><%=request.getAttribute("payment")%></td>
		</tr>

		<tr>
			<th class="content">DELIVERY DATE</th>
			<td class="input"><%=request.getAttribute("datelist")%></td>
		</tr>
	</table>

</form>

<form action="../UserViews/user_logout.jsp" method="post">
	<p>
		<input type="submit" class="push" value="ログアウト">
	</p>
</form>

<form action="../UserViews/user_top.jsp" method="post">
	<p>
		<input type="submit" class="push" value="TOPへ戻る">
	</p>
</form>

<!-- jquely -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<!-- 自作CSS -->
<script src="../UserJs/date.js"></script>
<%@ include file="../footer.html"%>
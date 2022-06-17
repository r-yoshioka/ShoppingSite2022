<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.html"%>

<form action="../servlets/AdminLogin" method="post">

	<p>
		ID:<input type="text" name="member_id" value="${member_id}"required>
	</p>
	<p>
		パスワード:<input type="password" name="password" required>
	</p>

	<span>${message} </span>

	<p>
		<input type="submit" value="ログイン">
	</p>

</form>
<%@include file="../footer.html"%>
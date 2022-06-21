<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.html"%>

<form action="../servlets/AdminLogin" method="post">

	<span>${message} </span>

	<p>
		ID:<input type="text" name="member_id" maxlength="10" value="${member_id}"required>
	</p>
	<p>
		パスワード:<input type="password" maxlength="20" name="password" required>
	</p>

	<p>
		<input type="submit"  class="push" value="ログイン">
	</p>

</form>
<%@include file="../footer.html"%>
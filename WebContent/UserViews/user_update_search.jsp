<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>

<form action="../servlets/UserUpdate" method="post">

	<p>
		MAIL_ADDRESS：<input type="text" name="mail_address"
			value="${mail_address }" required>
	</p>
	<p>
		PASSWORD：<input type="password" name="password" required>
	</p>

	<span class="LoginMessage">${LoginMessage} </span>

	<p>
		<input type="submit" value="検索">
	</p>
	<p>
		<input type="reset" class="push" value="リセット">
	</p>

</form>

<form action="user_top.jsp" method="post">
	<p>
		<input type="submit" class="push" value="TOPへ戻る">
	</p>
</form>

<%@ include file="../footer.html"%>
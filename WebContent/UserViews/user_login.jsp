<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>

<form action="../servlets/UserLogin" method="post">

	<p>
		MAIL_ADDRESS：<input type="text" name="mailAddress"
			value="${mailAddress }" required>
	</p>
	<p>
		PASSWORD：<input type="password" name="password" required>
	</p>

	<span class="LoginMessage">${LoginMessage} </span>

</form>

<form action="../UserViews/user_top.jsp">
	<input type="submit" value="ログイン">
</form>

<form action="user_home.jsp" method="post">
	<input type="submit" value="戻る">
</form>

<%@ include file="../footer.html"%>
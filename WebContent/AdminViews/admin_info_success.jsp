<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>

<form action="../servlets/AdminInfoRegist" method="post">

	<span class="red">${message}</span>

</form>

<form action="../AdminViews/admin_home.jsp" method="post">
	<input type="submit" class="push" value="ホーム">
</form>

<%@ include file="../footer.html"%>
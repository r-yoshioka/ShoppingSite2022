<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>

<form action="../servlets/UserLogin" method="post">

	<p>ようこそ！${loginName.name } さん！</p>

</form>

<form action="user_update_success.jsp" method="post">

	<p>おかえりなさい。${uub. name} さん！</p>

</form>

<%@ include file="../footer.html"%>
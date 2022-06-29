<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/AdminCss/admin_home.css">

<p>ログインまたは新規登録をしてください。</p>

<section>

	<form action="admin_login.jsp" method="post">
		<p>
			<input class="menu" type="submit" value="ログイン">
		</p>
	</form>

	<form action="admin_info_regist.jsp" method="post">
		<p>
			<input class="menu" type="submit" value="新規管理者登録">
		</p>
	</form>

</section>

<%@ include file="../footer.html"%>
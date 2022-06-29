<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>
<link rel="stylesheet" type="text/css" href="../UserCss/user_regist.css">
<link href="https://fonts.googleapis.com/css2?family=Smooch&display=swap" rel="stylesheet">

    <header>
          <h1 class="shopName">SHOP</h1>
    </header>

	<h1 class="header">入力内容（確認画面）</h1>

<main>
<form action="../servlets/UserReginst" method="post">
	<table class="design">
		<tr>
			<th class="content">■NAME</th>
			<td class="input">${reginstBean. name}</td>
		</tr>

		<tr>
			<th class="content">■GENDER</th>
			<td class="input">${reginstBean. sex}</td>
		</tr>

		<tr>
			<th class="content">■BIRTHDAY</th>
			<td class="input">${reginstBean.birthYear }年${reginstBean.birthMonth }月${reginstBean.birthDay }日</td>
		</tr>

		<tr>
			<th class="content">■JOB</th>
			<td class="input">${reginstBean. job}</td>
		</tr>

		<tr>
			<th class="content">■PHONE NUMBER</th>
			<td class="input">${reginstBean. phoneNumber}</td>
		</tr>

		<tr>
			<th class="content">■MAIL ADDRESS</th>
			<td class="input">${reginstBean. mailAddress}</td>
		</tr>

		<tr>
			<th class="content">■PASSWORD</th>
			<td class="input">${reginstBean. password}
	</table>

</form>

<form action="../UserViews/user_home.jsp" method="post">
	<p>
		<input type="submit" class="push" value="Homeへ戻る">
	</p>
</form>
</main>

<footer>
         <p>Minami Shingaki<br>
              M.shingaki@ks-japan.jp</p>
         <p>Risa Yoshioka<br>
              R.yoshioka@ks-japan.jp</p>
         <p>copyright:KSJ,</p>
</footer>

<form action="../UserViews/user_reginst.jsp" method="post">
	<p>
		<input type="submit" class="push" value="戻る">
	</p>
</form>
>>>>>>> branch 'staging' of https://github.com/r-yoshioka/ShoppingSite2022

<%@ include file="../footer.html"%>
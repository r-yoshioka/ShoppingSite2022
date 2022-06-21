<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>../css/user_top.css">

<div class="openbtn1"><span></span><span></span><span></span></div>
<nav id="g-nav">
<div id="g-nav-list"><!--ナビの数が増えた場合縦スクロールするためのdiv※不要なら削除-->
<ul>
<li><a href="#">Top</a></li>
<li><a href="#">Search</a></li>
<li><a href="#">Cart</a></li>
<li><a href="#">MyPage</a></li>
</ul>
</div>
</nav>

<form action="../servlets/UserLogin" method="post">

	<p>ようこそ！${loginName.name } さん！</p>

</form>

<form action="user_update_success.jsp" method="post">

	<p>おかえりなさい。${uub. name} さん！</p>

</form>


<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<!--自作のJS-->
<script src="UserJs/user_top.js"></script>
<%@ include file="../footer.html"%>
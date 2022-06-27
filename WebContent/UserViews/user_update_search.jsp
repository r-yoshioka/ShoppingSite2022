<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
         <meta charset="UTF-8">
       <title>MY PROFILE</title>
       <!-- フォント -->
       <link
	       href="https://fonts.googleapis.com/css2?family=Shadows+Into+Light&display=swap"
	       rel="stylesheet">
       <!-- 自作のCSS -->
       <link rel="stylesheet" type="text/css" href="../UserCss/user_update.css">
   </head>

   <body>
	   <div id="container">
		   <header id="header">
			   <h1>SHOP</h1>
			   <nav>
				   <ul id="menu">
					   <li><a href="../UserVews/user_top.jsp" class="push">TOP</a></li>
					   <li class="has-child"><a href="#" class="push">CATEGORY</a>
						   <ul>
							   <li><a href="#" class="push">ALL ITEM</a></li>
							   <li><a href="#" class="push">HAIR CARE</a></li>
							   <li><a href="#" class="push">BODY CARE</a></li>
							   <li><a href="#" class="push">SKIN CARE</a></li>
						   </ul>
					   </li>
					   <li><a href="#">CART</a></li>
					   <li class="has-child"><a href="../UserViews/user_mypage.jsp">MYPAGE</a>
						   <ul>
							   <li class="mini">
							      <a href="../UserViews/user_profile_search.jsp" class="push">MY PROFILE</a>
							   </li>
							   <li class="mini">
							      <a href="../UserViews/user_update_search.jsp" class="push">UPDATE MY PROFILE</a>
							   </li>
							   <li class="mini">
							      <a href="../UserViews/user_update_search.jsp" class="push">INFORMATION</a>
							   </li>
							   <li class="mini">
							      <a href="../UserViews/user_logout.jsp" class="push">LOGOUT</a>
							   </li>
						   </ul>
					   </li>
				   </ul>
			   </nav>
		   </header>

<h1 class="header">会員情報更新画面</h1>

<span class="message">${USMessage }</span>

<form action="../servlets/UserUpdateSearch" method="post">
	<table class="design">
		<tr>
			<th class="content">■MAIL ADDRESS</th>
			<td class="input"><input type="text" name="mail_address" placeholder="example@gmail.com" size="40"></td>
		</tr>

		<tr>
			<th class="content">■PASSWORD</th>
			<td class="input"><input type="password" name="password" size="30" maxlength="20"></td>
		</tr>

		<tr>
		    <th></th>
			<td><input type="submit" class="push" value="検索"></td>
		</tr>
	</table>
</form>

           <footer id="footer">
			   <small id="copyright">Copyright; KSJ</small>
		   </footer>
	   </div>
    </body>
</html>
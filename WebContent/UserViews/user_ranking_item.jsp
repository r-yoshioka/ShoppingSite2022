<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
       <meta charset="UTF-8">
       <title>MY PAGE</title>
       <!-- フォント -->
       <link
	       href="https://fonts.googleapis.com/css2?family=Shadows+Into+Light&display=swap"
	       rel="stylesheet">
       <!-- 自作のCSS -->
       <link rel="stylesheet" type="text/css" href="../UserCss/user_mypage.css">
   </head>

   <body>
	   <div id="container">
		   <header id="header">
			   <h1>SHOP</h1>
			   <nav>
				   <ul id="menu">
					   <li><a href="../UserViews/user_top.jsp" class="push">TOP</a></li>
					   <li class="has-child"><a href="#" class="push">CATEGORY</a>
						   <ul>
							   <li><a href="#" class="push">ALL ITEM</a></li>
							   <li><a href="#" class="push">HAIR CARE</a></li>
							   <li><a href="#" class="push">BODY CARE</a></li>
							   <li><a href="#" class="push">SKIN CARE</a></li>
						   </ul>
					   </li>
					   <li><a href="../UserViews/user_cart.jsp">CART</a></li>
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

  <main>

     <h2>RANKING</h2>

     <table>
        <tr>
           <th>1位</th>
          <td><img src="../UserImg/I06281437.jpg" alt="face" width="80%"></td>
				<td>ONE THING</td>
				<td>￥2,160</td>
				<td><a class="cart" href="">CART</a></td>
        </tr>

        <tr>
           <th>2位</th>
           <td><img src="../UserImg/I06281428.jpg" alt="body" width="80%"></td>
				<td>ボディーソープ</td>
				<td>￥1,540</td>
				<td><a class="cart" href="">CART</a></td>
        </tr>

        <tr>
           <th>3位</th>
           <td><img src="../UserImg/I06281400.jpg" alt="hair" width="80%"></td>
				<td>DROAS(PLANE)</td>
				<td>￥1,980</td>
				<td><a class="cart" href="">CART</a></td>
        </tr>

        <tr>
           <th>4位</th>
           <td><img src="../UserImg/I06281403.jpg" alt="hair" width="80%"></td>
				<td>DROAS(PINK)</td>
				<td>￥1,980</td>
				<td><a class="cart" href="">CART</a></td>
        </tr>

        <tr>
           <th>5位</th>
           <td><img src="../UserImg/I06281422.jpg" alt="hair" width="80%"></td>
				<td>DROAS(YELLOW)</td>
				<td>￥1,980</td>
				<td><a class="cart" href="">CART</a></td>
        </tr>

        <tr>
           <th>6位</th>
           <td><img src="../UserImg/I06281449.jpg" alt="face" width="80%"></td>
				<td>ONE THING</td>
				<td>￥2,160</td>
				<td><a class="cart" href="">CART</a></td>
        </tr>

        <tr>
           <th>7位</th>
           <td><img src="../UserImg/I06281453.jpg" alt="body" width="80%"></td>
				<td>ボディーソープ</td>
				<td>￥1,540</td>
				<td><a class="cart" href="">CART</a></td>
        </tr>

        <tr>
           <th>8位</th>
           <td><img src="../UserImg/I06281424.jpg" alt="body" width="80%"></td>
				<td>ボディクリーム</td>
				<td>￥1,540</td>
				<td><a class="cart" href="">CART</a></td>
        </tr>

        <tr>
           <th>9位</th>
           <td><img src="../UserImg/I06281432.jpg" alt="body" width="80%"></td>
				<td>ボディクリーム</td>
				<td>￥1,540</td>
				<td><a class="cart" href="">CART</a></td>
        </tr>

        <tr>
           <th>10位</th>
          <td><img src="../UserImg/I06271046.jpg" alt="face" width="80%"></td>
				<td>ONE THING</td>
				<td>￥2,160</td>
				<td><a class="cart" href="">CART</a></td>
        </tr>
     </table>
  </main>

           <footer id="footer">
			   <small id="copyright">Copyright; KSJ</small>
		   </footer>
	   </div>

	   <!--自作のJS-->
	   <script src="../UserJs/user_mypage.js"></script>
   </body>
</html>
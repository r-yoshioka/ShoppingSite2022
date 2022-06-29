<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>
<link rel="stylesheet" type="text/css" href="../UserCss/user_customer_input.css">

<form action="../servlets/UserOrder" method="post">

<h1 class="topic">Customer Information </h1>

<table class="design">
<tr>
<th class="content">NAME</th>
<td class="input"><input type="text" name="name" size="15" maxlength="32"></td>
</tr>

<tr>
<th class="content">POST</th>
<td class="input">
<input type="number" name="post" size="5" maxlength="7">
</td>
</tr>

<tr>
<th class="content">PREFECTURES</th>
<td class="input">
<select name="prefectures">
<option value=""></option>
<option value="北海道">北海道</option>
<option value="青森">青森</option>
<option value="岩手">岩手</option>
<option value="宮城">宮城</option>
<option value="秋田">秋田</option>
<option value="山形">山形</option>
<option value="福島">福島</option>
<option value="茨城">茨城</option>
<option value="栃木">栃木</option>
<option value="群馬">群馬</option>
<option value="埼玉">埼玉</option>
<option value="千葉">千葉</option>
<option value="東京">東京</option>
<option value="神奈川">神奈川</option>
<option value="新潟">新潟</option>
<option value="富山">富山</option>
<option value="石川">石川</option>
<option value="福井">福井</option>
<option value="山梨">山梨</option>
<option value="長野">長野</option>
<option value="岐阜">岐阜</option>
<option value="静岡">静岡</option>
<option value="愛知">愛知</option>
<option value="三重">三重</option>
<option value="滋賀">滋賀</option>
<option value="京都">京都</option>
<option value="大阪">大阪</option>
<option value="兵庫">兵庫</option>
<option value="奈良">奈良</option>
<option value="和歌山">和歌山</option>
<option value="鳥取">鳥取</option>
<option value="島根">島根</option>
<option value="岡山">岡山</option>
<option value="広島">広島</option>
<option value="山口">山口</option>
<option value="徳島">徳島</option>
<option value="香川">香川</option>
<option value="愛媛">愛媛</option>
<option value="高知">高知</option>
<option value="福岡">福岡</option>
<option value="佐賀">佐賀</option>
<option value="長崎">長崎</option>
<option value="熊本">熊本</option>
<option value="大分">大分</option>
<option value="宮崎">宮崎</option>
<option value="鹿児島">鹿児島</option>
<option value="沖縄">沖縄</option>
</select>
</td>
</tr>

<tr>
<th class="content">ADDRESS</th>
<td class="input"><input type="text" name="address" size="20" maxlength="32"></td>
</tr>

<tr>
<th class="content">PAYMENT</th>
   <td class="input">
      <ul>
         <li>
             <section>
               <a class="title"><input type="radio" name="payment" value="代金引換">代金引換</a>
               <div class="box">
                  <p>代金引換の際は、別途で<br>手数料：200円<br>を頂戴いたします。</p>
               </div>
            </section>
         </li>
         <li>
            <section>
               <a class="title"><input type="radio" name="payment" value="クレジットカード">クレジットカード</a>
               <div class="box">
                  <p>カード情報入力</p>
                  <p>カード番号：<input type="text" name="card" maxlength="16"><br>
                       有効期限：
                          <select name="month">
                             <option value="">-</option>
                             <option value="1">1</option>
                             <option value="2">2</option>
                             <option value="3">3</option>
                             <option value="4">4</option>
                             <option value="5">5</option>
                             <option value="6">6</option>
                             <option value="7">7</option>
                             <option value="8">8</option>
                             <option value="9">9</option>
                             <option value="10">10</option>
                             <option value="11">11</option>
                             <option value="12">12</option>
                          </select>/
                          <select name="year">
                             <option value="">-</option>
                             <option value="2022">2022</option>
                             <option value="2023">2023</option>
                             <option value="2024">2024</option>
                             <option value="2025">2025</option>
                             <option value="2026">2026</option>
                             <option value="2027">2027</option>
                          </select><br>
                       セキュリティコード CVC/CW：<input type="number" name="cord" maxlength="4">
                    </p>
               </div>
            </section>
         </li>
         <li>
            <section>
               <a class="title"><input type="radio" name="payment" value="コンビニ支払い">コンビニ支払い</a>
               <div class="box">
                  <p>お支払い可能なお店<br>
                       ・セブンイレブン<br>
                       ・ファミリーマート<br>
                       ・ローソン<br>
                       ・ミニストップ<br>
                       別途手数料：300円
                   </p>
               </div>
            </section>
         </li>
      </ul>
   </td>
</tr>

<tr>
<th class="content">DELIVERY DATE</th>
<td class="input">
<select id="datelist" name="datelist" data-start="3" data-end="20">
<option value="">-選択してください-</option>
</select>
</td>
</tr>
</table>

<a><input type="reset" class="reset" value="リセット"></a>

<p>購入内容</p>


<a class="finish"><input type="submit" value="購入"></a>
<a class="finish"><input type="button" onclick="history.back()" value="戻る"></a>
</form>


<!-- jquely -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<!-- 自作CSS -->
<script src="../UserJs/date.js"></script>
<%@ include file="../footer.html"%>
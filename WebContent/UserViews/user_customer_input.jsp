<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.html"%>

<h1>Customer Information </h1>

<table>
<tr>
<th>NAME</th>
<td><input type="text" name="name" size="15" maxlength="32"></td>
</tr>

<tr>
<th>POST</th>
<td>
<input type="number" name="post" size="5" maxlength="7">
</td>
</tr>

<tr>
<th>PREFECTURES</th>
<td>
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
<th>ADDRESS</th>
<td><input type="text" name="address" size="20" maxlength="32"></td>
</tr>

<tr>
<th>PAYMENT</th>
<td><input type="radio" name="payment" value="代金引換">代金引換<br>
        <input type="radio" name="payment" value="クレジットカード">クレジットカード<br>
        <input type="radio" name="payment" value="コンビニ支払い">コンビニ支払い
        </td>
</tr>

<tr>
<th>DELIVERY DATE</th>
<td>
<select id="datelist" name="datelist" data-start="3" data-end="20">
<option value="">-選択してください-</option>
</select>
</td>
</tr>
</table>

<script src="../UserJs/date.js"></script>
<%@ include file="../footer.html"%>
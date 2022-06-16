<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../header.html" %>

<form action = "../jp.co.aforce.main/Reginst" method ="post">

<p class="header">入力内容（確認画面）</p>

<table class="design">

  <tr>
    <td class="content">　■NAME</td>
  </tr>
  <tr>
      <td class="input">

      </td>
  </tr>

  <tr>
    <td class="content">　■GENDER</td>
  </tr>
  <tr>
      <td class="input">

      </td>
  </tr>

  <tr>
    <td class="content">　■BIRTHDAY</td>
  </tr>
  <tr>
      <td class="input">　　

      </td>
  </tr>

  <tr>
    <td class="content">　■JOB</td>
  </tr>
  <tr>
      <td class="input">　　

      </td>
  </tr>

  <tr>
    <td class="content">　■PHONE NUMBER</td>
  </tr>
  <tr>
      <td class="input">

      </td>
  </tr>

  <tr>
    <td class="content">　■MAIL ADDRESS</td>
  </tr>
  <tr>
      <td class="input">

      </td>
  </tr>

  <tr>
    <td class="content">　■PASSWORD</td>
  </tr>
  <tr>
    <td class="input">

</table>

</form>

<form action="user_home.jsp" method ="post">
   <p><input type="submit" class="push" value="確認"></p>
</form>

<form action="user_reginst.jsp" method="post">
   <p><input type="submit" class="push" value="戻る">
</form>

<%@ include file = "../footer.html" %>
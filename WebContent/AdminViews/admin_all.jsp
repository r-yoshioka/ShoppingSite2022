<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.html"%>

<%@page import="jp.co.aforce.beans.RegistBean, java.util.List"%>

<p>ALL ITEMS</p>

<table class="design">
	<tr>
		<td class="input">
			<%
			List<RegistBean> list = (List<RegistBean>) request.getAttribute("list");
			%>
		</td>
	</tr>

	<tr>
		<td class="input">
			<%
			for (RegistBean rb : list) {
			%>
		</td>
	</tr>

	<tr>
		<td class="input"><%=rb.getItemId()%>:<%=rb.getName()%>:<%=rb.getPrice()%>:<%=rb.getNumber()%>:<%=rb.getInfo()%><br>
			<%
			}
			%></td>
	</tr>

</table>

<input type="button" class="push" onclick="history.back()" value="戻る">

<%@include file="../footer.html"%>
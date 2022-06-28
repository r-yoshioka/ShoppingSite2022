'use strict';
function Calc() {
	const tax = 0.1;   //税
	const item1 = 1098;
	const item2 = 1280;
	const item3 = 1540;
	const item4 = 1980;
	const item5 = 2160;
	const item6 = 2450;
	let item01 = document.form.item1.selectedIndex * (item1 + item1 * tax);    //小計計算
	document.form.item01.value = item01;

	let item02 = document.form.item2.selectedIndex * (item2 + item2 * tax);    //小計計算
	document.form.item02.value = item02;

	let item03 = document.form.item3.selectedIndex * (item3 + item3 * tax);    //小計計算
	document.form.item03.value = item03;

	let item04 = document.form.item4.selectedIndex * (item4 + item4 * tax);    //小計計算
	document.form.item04.value = item04;

	let item05 = document.form.item5.selectedIndex * (item5 + item5 * tax);    //小計計算
	document.form.item05.value = item05;

	let item06 = document.form.item6.selectedIndex * (item6 + item6 * tax);    //小計計算
	document.form.item06.value = item06;

	let total = item01 + item02 + item03 + item04 + item05 + item06;            //合計計算
	document.form.total.value = total;
}
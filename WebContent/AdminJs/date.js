'use strict';


/*生年月日のセレクトタグにオプション追加*/
let item_id = document.getElementById("item_id");
let item_id = document.getElementById("item_id");
let item_id = document.getElementById("item_id");


//1920年まで表示
for (let i = year; i >= 1920; i--) {
 const option = document.createElement("option");
	option.text = i;
	option.value = i;
	item_id.appendChild(option);
}

//1～12の数字を生成
for (let i = 1; i <= 12; i++) {
  const option = document.createElement("option");
	option.text = i;
	option.value = i;
	item_id.appendChild(option);
}

//1～31の数字を生成
for (let i = 1; i <= 31; i++) {
  const option = document.createElement("option");
	option.text = i;
	option.value = i;
	item_id.appendChild(option);
}

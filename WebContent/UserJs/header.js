//検索欄
//開くボタンを押した時には
$(".open-btn").click(function() {
	$("#search-wrap").toggleClass('panelactive');//#search-wrapへpanelactiveクラスを付与
	$('#search-text').focus();//テキスト入力のinputにフォーカス
});

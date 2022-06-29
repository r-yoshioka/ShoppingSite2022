'use strict';

//支払方法
//アコーディオンをクリックした時の動作
$('.title').on('click', function() {//タイトル要素をクリックしたら
	$('.box').slideUp(500);//クラス名.boxがついたすべてのアコーディオンを閉じる

	var findElm = $(this).next(".box");//タイトル直後のアコーディオンを行うエリアを取得

	if($(this).hasClass('close')){//タイトル要素にクラス名closeがあれば
		$(this).removeClass('close');//クラス名を除去
	}else{//それ以外は
		$('.close').removeClass('close'); //クラス名closeを全て除去した後
		$(this).addClass('close');//クリックしたタイトルにクラス名closeを付与し
		$(findElm).slideDown(500);//アコーディオンを開く
	}
});

//ページが読み込まれた際にopenクラスをつけ、openがついていたら開く動作※不必要なら下記全て削除
$(window).on('load', function(){
	$('.accordion-area li:first-of-type section').addClass("open"); //accordion-areaのはじめのliにあるsectionにopenクラスを追加
	$(".open").each(function(index, element){	//openクラスを取得
		var Title =$(element).children('.title');	//openクラスの子要素のtitleクラスを取得
		$(Title).addClass('close');				///タイトルにクラス名closeを付与し
		var Box =$(element).children('.box');	//openクラスの子要素boxクラスを取得
		$(Box).slideDown(500);					//アコーディオンを開く
	});
});

//今日から3日後のデータを取得
//要素取得
const datelist = document.getElementById('datelist')

//data-startを取得
const start = datelist.dataset.start

//data-endを取得
const end = datelist.dataset.end

//曜日
const week = ['日', '月', '火', '水', '木', '金', '土']

if(start !== undefined && end !== undefined ){

    for(let i = Number(start); i < end; i++){
        //取得する日付の値を設定
        let param = Date.now() + i * 86400000
        //値から日付を取得
        let date = new Date(param)

        //dateから年を取得
        let year = date.getFullYear()
        //dateから月を取得
        let month = date.getMonth()+1
        //dateから日を取得
        let day = date.getDate()
        //dateから曜日を取得
        let w = date.getDay()

        //月を2桁に揃える
        if(month < 10){ month = '0'+month }
        //日を2桁に揃える
        if(day < 10){ day = '0'+day }

        //テキストの出力形式
        let textFormat = year+'年'+month+'月'+day+'日'+'('+week[w]+')'
        //値の出力形式
        let valueFormat = year+'-'+month+'-'+day

        //option要素を作成
        let option = document.createElement('option')
        //optionのテキスト指定
        option.textContent = textFormat
        //optionの値指定
        option.value = valueFormat
        //detelistの末尾に追加
        datelist.appendChild(option);
    }
}
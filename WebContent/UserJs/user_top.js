
//スライド写真

 $('.slider').slick({
    autoplay: true,//自動的に動き出すか。初期値はfalse。
    autoplaySpeed: 3000,//次のスライドに切り替わる待ち時間
    speed:1000,//スライドの動きのスピード。初期値は300。
    infinite: true,//スライドをループさせるかどうか。初期値はtrue。
    slidesToShow: 1,//スライドを画面に3枚見せる
    slidesToScroll: 1,//1回のスクロールで3枚の写真を移動して見せる
    arrows: true,//左右の矢印あり
    prevArrow: '<div class="slick-prev"></div>',//矢印部分PreviewのHTMLを変更
    nextArrow: '<div class="slick-next"></div>',//矢印部分NextのHTMLを変更
    dots: true,//下部ドットナビゲーションの表示
        pauseOnFocus: false,//フォーカスで一時停止を無効
        pauseOnHover: false,//マウスホバーで一時停止を無効
        pauseOnDotsHover: false,//ドットナビゲーションをマウスホバーで一時停止を無効
    });

//スマホ用：スライダーをタッチしても止めずにスライドをさせたい場合
$('.slider').on('touchmove', function(event, slick, currentSlide, nextSlide){
    $('.slider').slick('slickPlay');
});



//スクロールした際の動きを関数でまとめる
function PageTopCheck(){
    var winScrollTop = $(this).scrollTop();
    var secondTop =  $("#area-2").offset().top - 150; //#area-2の上から150pxの位置まで来たら
    if(winScrollTop >= secondTop){
		$('.js-scroll').removeClass('scroll-view');//.js-scrollからscroll-viewというクラス名を除去
		$('.js-pagetop').addClass('scroll-view');//.js-pagetopにscroll-viewというクラス名を付与
	} else {//元に戻ったら
		$('.js-scroll').addClass('scroll-view');//.js-scrollからscroll-viewというクラス名を付与
		$('.js-pagetop').removeClass('scroll-view');//.js-pagetopからscroll-viewというクラス名を除去
	}

}

//クリックした際の動き
$('.scroll-top a').click(function () {
	var elmHash = $(this).attr('href'); //hrefの内容を取得
	if (elmHash == "#area-2") {//もし、リンク先のhref の後が#area-2の場合
		var pos = $(elmHash).offset().top;
		$('body,html').animate({scrollTop: pos}, pos); //#area-2にスクロール
	}else{
		$('body,html').animate({scrollTop: 0}, 500); //それ以外はトップへスクロール。数字が大きくなるほどゆっくりスクロール
	}
    return false;//リンク自体の無効化
});

// 画面をスクロールをしたら動かしたい場合の記述
$(window).scroll(function () {
	PageTopCheck();/* スクロールした際の動きの関数を呼ぶ*/
});

// ページが読み込まれたらすぐに動かしたい場合の記述
$(window).on('load', function () {
	PageTopCheck();/* スクロールした際の動きの関数を呼ぶ*/
});



$(window).on('load',function(){	//画面遷移時にギャラリーの画像が被らないように、すべての読み込みが終わった後に実行する

//＝＝＝Muuriギャラリープラグイン設定
var grid = new Muuri('.grid', {

//アイテムの表示速度※オプション。入れなくても動作します
showDuration: 600,
showEasing: 'cubic-bezier(0.215, 0.61, 0.355, 1)',
hideDuration: 600,
hideEasing: 'cubic-bezier(0.215, 0.61, 0.355, 1)',

// アイテムの表示/非表示状態のスタイル※オプション。入れなくても動作します
  visibleStyles: {
    opacity: '1',
    transform: 'scale(1)'
  },
  hiddenStyles: {
    opacity: '0',
    transform: 'scale(0.5)'
  }
});

//＝＝＝並び替えボタン設定
$('.sort-btn li').on('click',function(){			//並び替えボタンをクリックしたら
	$(".sort-btn .active").removeClass("active");	//並び替えボタンに付与されているactiveクラスを全て取り除き
	var className = $(this).attr("class");			//クラス名を取得
	className = className.split(' ');				//「sortXX active」のクラス名を分割して配列にする
	$("."+className[0]).addClass("active");			//並び替えボタンに付与されているクラス名とギャラリー内のリストのクラス名が同じボタンにactiveクラスを付与
	if(className[0] == "sort00"){						//クラス名がsort00（全て）のボタンの場合は、
		 grid.show('');								//全ての要素を出す
	}else{											//それ以外の場合は
		grid.filter("."+className[0]); 				//フィルターを実行
	}
});

//＝＝＝ Fancyboxの設定
$('[data-fancybox]').fancybox({
 thumbs: {
    autoStart: true, //グループのサムネイル一覧をデフォルトで出す。不必要であればfalseに
  },
});

});
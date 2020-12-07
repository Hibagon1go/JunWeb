//スライド用のliタグを全て取得
var slides = document.getElementById('mainBanner').getElementsByClassName("mainImg").getElementsByTagName('img');

//スライド表示用の関数を呼び出す（引数はスライドの切り替え時間）
viewSlide(2000);

function viewSlide(msec, slide_no = -1)
{
	//現在のスライドを消す
	if (slides[slide_no]) {
		slides[slide_no].style.display = 'none';
	}
	//スライド番号をカウントアップ
	slide_no++;
	if (slides[slide_no]) {
		//次のスライドを表示
		slides[slide_no].style.display = 'block';
	} else {
		//次のスライドがなければ最初のスライドを表示
		slides[0].style.display = 'block';
		slide_no = 0;
	}
	setTimeout(function(){viewSlide(msec, slide_no);}, msec);
}

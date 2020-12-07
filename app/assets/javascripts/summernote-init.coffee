$(document).on 'turbolinks:load', ->
  $('[data-provider="summernote"]').each ->
    $(this).summernote
      height: 300
      fontNames: ["YuGothic","Meiryo","sans-serif", "Arial","Arial Black","Comic Sans MS","Helvetica Neue","Helvetica","Impact","Lucida Grande","Tahoma","Times New Roman","Verdana",'ヒラギノ角ゴ ProN W6','ヒラギノ角ゴ Std W8','ヒラギノ角ゴ Pro W3',"ヒラギノ丸ゴ ProN W4"]
      lang: "ja-JP"
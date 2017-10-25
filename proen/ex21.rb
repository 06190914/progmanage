#ハッシュyaoyaを作成し、野菜名と値段の組を3つ保存する
yaoya = {"NINJIN" => 150,"TOMATO" => 100,"ABOKADO" =>120}

#キーボードから入力された野菜名を変数yasaiに代入する
print("かすが商店です。どの野菜をお探しですか？\n")
yasai = gets.chomp

#入力された野菜がハッシュyaoyaにあるかどうか判定する
#ある場合は、「***はあります.***円です」と表示する
#ない場合は、「申し訳ありません。***は品切れです。」と表示する
if yaoya.include?(yasai)
  print(yasai,"はあります。",yaoya[yasai],"円です\n")
else
  print("申し訳ありません。",yasai,"は品切れです\n")
end

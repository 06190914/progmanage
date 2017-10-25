#ハッシュyaoyaを作成し、野菜名と値段の組を3つ保存する
yaoya = {"NINJIN" => 150,"TOMATO" => 100,"ABOKADO" =>120}
i=0
while i<100
  #キーボードから入力された野菜名を変数yasaiに代入する
  print("かすが商店です。どの野菜をお探しですか？\n")
  print("終了する場合は、.(ピリオド)を入力してください\n")
  yasai = gets.chomp

  #もし、.(ピリオド)が入力されたら、while文を抜ける
  if yasai == '.' then
    break;
  else
    if yaoya.include?(yasai)
      print(yasai,"はあります。",yaoya[yasai],"円です\n")
      print("他のお店では、",yasai,"はいくらでしたか？\n")
      #キーボードから入力された野菜の値段を変数yasuneに保存する
      yasune = gets.chomp.to_i
#ハッシュに保存されている値とyasuneを比較する
      if yasune < yaoya[yasai] then #入力された値段の方が安い場合
#yasuneの値をハッシュに保存する
        yaoya[yasai] = yasune
        print("じゃ、",yasune,"円にしておきます！\n")
      else
        print("かすが商店は、",yaoya[yasai],"円だよ。安いでしょ！\n")
      end
    else
      print("申し訳ありません。",yasai,"は品切れです\n")
    end
    i = i + 1
  end
end

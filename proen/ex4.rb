#2つのキーからなるハッシュを作成
ja = {"cat" => "猫","book" => "本"}

#それぞれのキーに対応する値を全て表示
ja.each{|key,value|
  print(key," ==> ",value,"\n")
}

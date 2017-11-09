def get_ratio(place,place1,place2)
  return place[place1].to_f/place[place2].to_f
end

def display_place_list(place)
  printf("● ハッシュに蓄積された全ての名前と面積を表示します.\n")
  printf("名前 面積（割合）\n")
  place.each do |k,v|
    printf("%s %f m^2（%.15f ITF.）\n",k, v,get_ratio(place,k,"筑波キャンパス"))
  end
end

# ハッシュの準備
place = {"筑波キャンパス" => 2577286}
place["銀河系の円盤部"] = 700000000000000000000000000000000000000000
place["山手線内"] = 63000000
place["鳥取砂丘"] = 5500000
place["牛久沼"] = 3490000
place["皇居"] = 14200
place["東京ディズニーランド"] = 520000
place["バチカン市国"] = 440000
place["東京ドーム"] = 46755
place["iPad"] = 0.0448
place["10円玉"] = 0.00043

i = 0
while i < 100
  printf("名前を入力してください\n>")
  name = gets.chomp
  if name == "."
     break;
  end
  place.each do |n,s|
    if name == n
       printf("%s %d\n",n,s)
       printf("面積を変更しますか(y/n)\n")
       ans = gets.chomp.to_s
       if ans == 'y'
         n = name
       else
         printf("上書きをキャンセルします。")
       end
    end
  end

  printf("面積(m^2)を入力してください\n>")
  area  = gets.chomp
  place.store(name,area)

  i=i+1
end
#place.each do |k,v|
#  printf("%s %f¥n",k,v)
#end
display_place_list(place)
printf("名前を２つ入力してください.\n")
i = 0
while i < 100
  printf("名前1>")
  name1 = gets.chomp
  printf("名前2>")
  name2 = gets.chomp
  printf("%sは%s %.14fの個分です.\n",name1,name2,get_ratio(place,name1,name2))
  i= i+1
end

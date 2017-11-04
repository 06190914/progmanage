def get_ratio(place,place1,place2)
  return place[place1]/place[place2]
end

def display_place_list(place)
  printf("名前          面積（割合）\n")
  place.each do |k,v|
    printf("%s %f m^2（%f ITF.）\n",k, v,v.to_f/place["筑波キャンパス"].to_f)
  end
end


# ハッシュの準備
place = {"筑波キャンパス" => 2577286}
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
         printf("上書きします。")
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
  #get_ratio(place,name1,name2)
  i+=1
end

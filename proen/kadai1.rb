def get_ratio(place,place1,place2)
  return place[place1]/place[place2]
end

def display_place_list(place)
  place.each do |k,v|
  printf("%s %s %f\n",k, v,v/place["筑波キャンパス"].to_f)
  end
end


# ハッシュの準備
place = {"筑波キャンパス" => 2577286}
i = 0
while i < 100
  puts "名前を入力してください."
  name = gets.chomp
  if name == "."
     break;
  end
  place.each do |n,s|
    if name == n
       printf("%s %d\n",n,s)
       printf("\"y\"(上書きするか or \"n\"(上書きしない))\n")
       ans = gets.chomp.to_s
       if ans == 'y'
         n = name
         printf("上書きします。")
       else
         printf("上書きをキャンセルします。")
       end
    end
  end

  puts "面積を入力してください."
  area  = gets.chomp
  place.store(name,area)
  
  i=i+1
end
display_place_list(place)

# 駅名配列
eki_soto =  ["東京", "有楽町", "新橋", "浜松町", "田町",
"品川", "大崎", "五反田", "目黒", "恵比寿",
"渋谷", "原宿", "代々木", "新宿", "新大久保",
"高田馬場", "目白", "池袋", "大塚", "巣鴨",
"駒込", "田端", "西日暮里", "日暮里", "鶯谷",
"上野", "御徒町", "秋葉原", "神田"]

# 乗車時間配列
eki_jikan = [2, 2, 2, 2, 3,
             2, 2, 2, 3, 2,
             3, 2, 2, 2, 3,
             1, 3, 3, 1, 2,
             3, 1, 2, 1, 2,
             2, 2, 2, 2]
#入力された降車駅名があるかどうか判定するメソッド,trueまたはfalseを返す
def IsExist(s1,s2,line)
  cnt = 0
  line.each do |n|
    if(n==s1 && n==s2)
      return true
    elsif(n == s1 || n== s2)
      cnt = cnt + 1
      if(cnt==2)
        return true
      end
    end
  end
  return false
end
#降車駅までの駅名と乗車時間を表示するメソッド
def searchStation(starts,stops,r,t)

  #降車駅名が何番目にあるかを探索し,変数にその数を保存
  start_stationindex = r.find_index(starts)
  stop_stationindex = r.find_index(stops)

  distance = stop_stationindex-start_stationindex
  inner= false
  if(distance > 0)
    inner = false
    print("[外回り]\n")
  else
    inner = true
    print("[内回り]\n")
  end
  if(inner == true)
    r = r.reverse
    start_stationindex = r.find_index(starts)
    stop_stationindex = r.find_index(stops)
  end

  printf("%sは%d個めの駅です\n",stops,distance.abs)
  print("====================\n")


  s=0
  for i in start_stationindex..stop_stationindex
    #乗車駅から降車駅まで表示(何番目にあるか保存した変数を使う)
    printf("%s",r[i])

    if(i<= stop_stationindex-1)
      print("==>")
      s+=t[i]
    end
    if(i== stop_stationindex)
      print("\n")
    end
  end
  printf("乗車時間は，%d分です\n",s)
  print("====================\n")
end

printf("乗車駅名を入力してください:")
ep = gets.chomp
printf("降車駅名を入力してください:")
#降車駅名を入力,駅名判定メソッドを呼ぶ
gf = gets.chomp
#駅名があった場合は表示メソッドを呼ぶ.
if(IsExist(ep,gf,eki_soto) == true)
  searchStation(ep,gf,eki_soto,eki_jikan)
else
  print("駅名がありません\n")
end

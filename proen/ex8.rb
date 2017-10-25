#配列を作成
kazu = [1, 3, 10, 2, 9, 7, 8, 4, 6, 5]

i = 0
l = kazu.length-1 #配列の一番最後の添え字を取得
while i < kazu.length
  print(kazu[l-i],"\n") #要素を逆順に出力
  i = i + 1
end

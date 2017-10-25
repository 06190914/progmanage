kazu = Array.new(4, 0)   #配列の宣言　要素数4 初期値0
i = 0 
while i< kazu.length     #配列の要素数だけ繰り返す(4は使わない)
  print("整数を入力してください\n")
  kazu[i] = gets.chomp.to_i
  i = i+1                #ここは繰り返しで重要なポイント！
end
#配列の要素を全て表示する
i=0
while i<kazu.length
  puts(kazu[i])
  i = i+1
end


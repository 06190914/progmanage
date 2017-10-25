i = 0
while i<10
  print("アルファベット1文字入力してください\n")
  moji = gets.chomp

  if moji == "u"
    print("正解\n")
    break;
  else
    print("残念\n")
  end

  i = i + 1
end
print("終了\n")

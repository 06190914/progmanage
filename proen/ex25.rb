tango_shuu = ["USAGI","HITUGI","ROBA","KUMA","BUTA"]
i=0
while i < 3
  print("単語を入力してください\n")
  tango = gets.chomp
  j = 0
  while j < tango_shuu.length
    if tango == tango_shuu[j]
      print("辞書の",j+1,"番目に登録されています\n")
      break
    end
    j = j + 1;
  end
  i = i + 1;
end

tango_shuu = ["library","book","information","service"]

print("単語を入力してください\n")
tango = gets.chomp
i = 0 
while i<tango_shuu.length
  if tango_shuu[i] == tango then
    print(i+1,"番目にあります\n")
    break;
  else
    i = i + 1
  end
end

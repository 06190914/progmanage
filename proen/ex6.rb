print("年齢を入力してください\n")
age = gets.chomp.to_i

if age < 0 then 
  print("0以上の値を入力してください.\n")
elsif age >= 0 and age < 20 then 
  print("未成年です。まだ飲酒できません.\n")
elsif age >=20 and age < 40 then 
  print("飲酒できますが、飲み過ぎに注意しましょう.\n")
else
  print("もうそろそろ飲酒を控えた方がいいですよ.\n")
end

n = gets.chomp.to_i

i = 1
while i < n + 1
  j = 1
  while j < n + 1
    printf("%d ",i*j)
    j = j + 1
  end 
  print("\n")
  i = i + 1
end


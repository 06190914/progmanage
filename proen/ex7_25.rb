#メソッド1
def union(s1,s2)
  return s1 + s2
end

#メソッド2
def print_str(s1,s2)
  p s1+s2
end

input1 = gets.chomp.to_i
input2 = gets.chomp.to_i

union(input1,input2)      #表示はされず足されるのみ
print_str(input1,input2)  #足した後、表示する

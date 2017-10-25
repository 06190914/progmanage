def maxvalue(b)
  l = b.length
  max = b[0]
  i = 1 
  while i < b.length
    if max < b[i] then
      max = b[i]
    end
    i = i+1
  end
  return max
end

kazu_1 = [3,9,3,4,10]
kazu_2 = [-100,-10,-5,0,1]
puts maxvalue(kazu_1)
puts maxvalue(kazu_2)

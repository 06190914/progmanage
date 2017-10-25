def maxvalue(b)
  l = b.length
  max = 0
  b.each do |ary|
    if max < ary then
      max = ary
    end
  end
  return max
end

b = [19,3,4,10]
print(maxvalue(b),"\n.")

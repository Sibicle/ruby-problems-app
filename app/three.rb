def solution(x, y)
  frac = []
  cnt  = []
  i    = 0

  while i < x.size do
    frac.push Rational(x[i], y[i])
    i += 1
  end

  freq = frac.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  freq.max_by { |v| freq[v] }[1]

end

puts solution([1,2,3,4,0],[2,3,6,8,4])

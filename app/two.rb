def solution(a)
  total = 0
  a = a.sort

  while a.size > 2
    one = a.shift
    two = a.shift
    cur = one + two
    total += cur

    puts a
    puts
    puts total
    puts puts

    index = [*a.each_with_index].bsearch{|x, _| x > cur}.last
    a.insert index, cur
  end

  total
end

x = [250, 100, 1000, 1000]

puts solution x



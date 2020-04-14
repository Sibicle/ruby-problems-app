require 'rubystats'

def solution(s, k)
  return if s.length <= k + 1

  head = []
  buf  = []
  tail = s.split("")
  min  = 0

  k.times { buf.push tail.shift }

  while tail.length > 0
    full = (head + tail).join
    con  = condense(full)
    len  = con.length
    min  = len if len < min

    buf.push tail.shift
    head.push buf.shift

    puts "#{full} : #{con} : #{len}"
  end
end

def condense(s)
  arr = s.split('')
  out = ""
  cur = arr[0]
  i = 0
  cnt = 0

  while i < arr.size
    me = arr[i]

    if me != cur
      out += cnt.to_s if cnt > 1
      out += cur
      cnt = 1
      cur = me
    else
      cnt += 1
    end

    i += 1
  end

  out
end

def random
  size  = Rubystats::NormalDistribution.new(1, 10)
  len   = Rubystats::NormalDistribution.new(1, 5)
  alpha = Array('A'..'Z')
  chars = Array.new(size.rng.ceil.to_i.abs) { alpha.sample }
  chars.inject("") { |r,e| r += [e].cycle(len.rng.ceil.to_i.abs).to_a.join }
end

10.times { solution random, rand(2..4) }

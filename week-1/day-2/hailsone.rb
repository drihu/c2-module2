def hailstone(x)
  print "#{x} "

  steps = 0
  until x == 1
    if x.even?
      x = x / 2
    else
      x = x * 3 + 1
    end
    print "#{x} "
    steps += 1
  end

  return steps
end

puts hailstone(20)

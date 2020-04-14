def hailstone(x)
  puts x

  count = 0
  until x == 1
    if x % 2 == 0
      x = x / 2
    else
      x = x * 3 + 1
    end
    puts x
    count += 1
  end

  puts "Steps: #{count}"
end

hailstone(20)

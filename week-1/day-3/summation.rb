def summation(n)
  sum = 0
  i = 1
  while i <= n
    sum += yield(i)
    i += 1
  end
  sum
end

p summation(3) { |val| val * 2 } # 1 * 2 + 2 * 2 + 3 * 2 = 12

def has_seven?(n)
  while n > 0
    return true if n % 10 == 7
    n = n / 10
  end
  return false
end

def pingpong(n)
  i = 0
  el = 0
  increment = 1

  while i < n
    if (i % 7 == 0 || has_seven?(i)) && i != 0
      increment = -increment
    end
    el += increment
    i += 1
  end

  return el
end

puts pingpong(100)

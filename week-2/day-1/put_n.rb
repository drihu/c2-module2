def put_n(string, n)
  if n.is_a?(Integer) && n > 0
    n.times { puts string }
  elsif !n.is_a? Integer
    raise ArgumentError.new('Second argument should be an integer.')
  elsif n <= 0
    raise ArgumentError.new('Second argument should be greater than 0.')
  end
end

put_n("This will be printed 5 times!", 5)
# Logs
# This will be printed 5 times!
# This will be printed 5 times!
# This will be printed 5 times!
# This will be printed 5 times!
# This will be printed 5 times!

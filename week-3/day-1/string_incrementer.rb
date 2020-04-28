def increment_string(string)
  case
  when string.match?(/0+\z/)
    string.gsub(/0\z/) { |match| '1' }
  when string.match?(/0+9+\z/)
    string.gsub(/09+\z/) { |match| (match.to_i + 1).to_s }
  when string.match?(/[\d]+\z/)
    string.gsub(/[1-9][0-9]*\z/) { |match| (match.to_i + 1).to_s }
  else
    string << '1'
  end
end

p increment_string("foo") # prints "foo1"
p increment_string("foobar001") # prints "foobar002"
p increment_string("foobar1") # prints "foobar2"
p increment_string("foobar00") # prints "foobar01"
p increment_string("foobar99") # prints "foobar100"
p increment_string("foobar099") # prints "foobar100"
p increment_string("") # prints "1"

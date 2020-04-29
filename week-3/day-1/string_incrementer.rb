def increment_string(string)
  string.sub(/[\d]*\z/) { |match| match.empty? ? '1' : match.succ }
end

p increment_string("foo") # prints "foo1"
p increment_string("foobar001") # prints "foobar002"
p increment_string("foobar1") # prints "foobar2"
p increment_string("foobar00") # prints "foobar01"
p increment_string("foobar99") # prints "foobar100"
p increment_string("foobar099") # prints "foobar100"
p increment_string("") # prints "1"

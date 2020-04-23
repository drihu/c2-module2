def singular(noun)
  (noun[-1] == 's') ? noun[0..-2] : noun
end

def format_duration(seconds)
  return 'now' if seconds == 0
  stamps = Hash.new(0)
  time = seconds
  stamps['seconds'] += time % 60
  time = (time - stamps['seconds']) / 60
  stamps['minutes'] += time % 60
  time = (time - stamps['minutes']) / 60
  stamps['hours'] += time % 24
  time = (time - stamps['hours']) / 24
  stamps['days'] += time % 365
  time = (time - stamps['days']) / 365
  stamps['years'] += time
  p stamps

  words = []
  stamps.each_with_index do |(type, n), i|
    case
    when n > 0 && words.length == 2
      words << 'and'
      if n > 1
        words << type
        words << n
      elsif n == 1
        words << singular(type)
        words << n
      end
    when n > 0 && words.length > 2
      if n > 1
        words << "#{type},"
        words << n
      elsif n == 1
        words << "#{singular(type)},"
        words << n
      end
    when n > 0 && words.length < 2
      if n > 1
        words << type
        words << n
      elsif n == 1
        words << singular(type)
        words << n
      end
    end
  end
  words.reverse.join(' ')
end

p format_duration(1) # prints "1 second"
p format_duration(62) # prints "1 minute and 2 seconds"
p format_duration(120) # prints "2 minutes"
p format_duration(3600) # prints "1 hour"
p format_duration(3662) # prints "1 hour, 1 minute and 2 seconds"

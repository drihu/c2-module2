def fake_ruby
  filename = ARGV[0]
  code = File.read(filename)
  eval code
end

fake_ruby

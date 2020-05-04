require 'http'

def dad_joke_cli
  response = HTTP.headers(accept: 'application/json').get('https://icanhazdadjoke.com/')
  joke = response.parse['joke']
  puts joke
end

dad_joke_cli

def anchorize(text)
  text.gsub(/(HTTP|HTTPS|FTP|FTPS|FILE|SMB):\/\/([\w]+\.[\w]+)/i) do |match|
    "<a href=\"#{match}\">#{match}</a>"
  end
end

p anchorize('hello FTP://world.com !')
# prints "hello <a href="FTP://world.com">FTP://world.com</a> !"
p anchorize('hello http://world.com !')
# prints "hello <a href="http://world.com">http://world.com</a> !"

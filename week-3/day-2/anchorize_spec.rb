def anchorize(text)
  text.gsub(/(HTTP|HTTPS|FTP|FTPS|FILE|SMB):\/\/([\w]+\.[\w]+)/i) do |match|
    "<a href=\"#{match}\">#{match}</a>"
  end
end

describe 'anchorize' do
  it 'replaces an FTP URL with an anchor tag <a>' do
    anchor = anchorize('hello FTP://world.com !')
    expect(anchor).to eq 'hello <a href="FTP://world.com">FTP://world.com</a> !'
  end

  it 'replaces an http URL with an anchor tag <a>' do
    anchor = anchorize('hello http://world.com !')
    expect(anchor).to eq 'hello <a href="http://world.com">http://world.com</a> !'
  end

  it 'it returns the same string' do
    anchor = anchorize('hello FT://world.com !')
    expect(anchor).to eq 'hello FT://world.com !'
  end
end

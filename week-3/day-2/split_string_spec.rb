def split_string(string)
  string.concat('_').scan(/.{2}/)
end

describe 'split_string' do
  it 'returns an array of strings with 2 characters from the original' do
    expect(split_string('abcdef')).to eq ["ab", "cd", "ef"]
    expect(split_string('abcdefg')).to eq ["ab", "cd", "ef", "g_"]
    expect(split_string('')).to eq []
  end
end

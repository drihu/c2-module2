def increment_string(string)
  string.sub(/[\d]*\z/) { |match| match.empty? ? '1' : match.succ }
end

describe 'increment_string' do
  it 'returns a successor string' do
    expect(increment_string("foobar001")).to eq "foobar002"
    expect(increment_string("foobar1")).to eq "foobar2"
    expect(increment_string("foobar00")).to eq "foobar01"
    expect(increment_string("foobar99")).to eq "foobar100"
    expect(increment_string("foobar099")).to eq "foobar100"
    expect(increment_string("")).to eq "1"
  end
end

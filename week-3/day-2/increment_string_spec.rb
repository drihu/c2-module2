def increment_string(string)
  string.sub(/[\d]*\z/) { |match| match.empty? ? '1' : match.succ }
end

describe 'increment_string' do
  it 'returns a successor string: foo1' do
    expect(increment_string("foo")).to eq "foo1"
  end

  it 'returns a successor string: foobar002' do
    expect(increment_string("foobar001")).to eq "foobar002"
  end

  it 'returns a successor string: foobar2' do
    expect(increment_string("foobar1")).to eq "foobar2"
  end

  it 'returns a successor string: foobar01' do
    expect(increment_string("foobar00")).to eq "foobar01"
  end

  it 'returns a successor string: foobar100' do
    expect(increment_string("foobar99")).to eq "foobar100"
  end

  it 'returns a successor string: foobar100' do
    expect(increment_string("foobar099")).to eq "foobar100"
  end

  it 'returns a successor string: 1' do
    expect(increment_string("")).to eq "1"
  end
end

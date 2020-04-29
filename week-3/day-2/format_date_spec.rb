require 'date'

def format_date(date)
  date.strftime("%B %d, del %Y")
end

describe 'format_date' do
  it 'returns a formatted date string: April 10, del 2020' do
    date = Time.new(2020, 4, 10)
    expect(format_date(date)).to eq "April 10, del 2020"
  end

  it 'returns a formatted date string: February 18, del 2014' do
    date = Time.new(2014, 2, 18)
    expect(format_date(date)).to eq "February 18, del 2014"
  end

  it 'returns a formatted date string: November 01, del 2050' do
    date = Time.new(2050, 11, 1)
    expect(format_date(date)).to eq "November 01, del 2050"
  end
end

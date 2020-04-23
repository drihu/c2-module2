require 'csv'

def read_csv(filename)
  content = File.read(filename).gsub('"', '').gsub(' ', '')
  csv = CSV.parse(content)
  students = csv[1..-1].sort { |row1, row2| row1[7] <=> row2[7] }.reverse

  3.times do |i|
    puts "#{i + 1} - #{students[i][1]} with a final grade of #{students[i][7]}"
  end
end

read_csv('grades.csv')
# 1 - Jim with a final grade of 97.0
# 2 - Benny with a final grade of 90.0
# 3 - Andrew with a final grade of 83.0

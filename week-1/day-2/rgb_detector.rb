def isRed?(pixel)
  if (pixel[0] > 100) && (pixel[1] < pixel[0] / 4.0) && (pixel[2] < pixel[0] / 4.0)
    return true
  end
  return false
end

def rgb_detector(sample)
  red_count = 0
  sample.each do |row|
    row.each do |pixel|
      red_count += 1 if isRed?(pixel)
    end
  end
  return red_count
end

sample = [
  [[ 65, 67, 23], [234,176, 0], [143, 0, 0]],
  [[255, 30, 51], [156, 41, 38], [ 3,243,176]],
  [[255,255,255], [ 0, 0, 0], [133, 28, 13]],
  [[ 26, 43,255], [ 48, 2, 2], [ 57, 89,202]],
]

puts rgb_detector(sample)

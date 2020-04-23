# Given an n x n array, return the array elements
# arranged from outermost elements to the middle
# element, traveling clockwise.
def rotate(vector)
  [vector[1], -vector[0]]
end

def sum(v1, v2)
  [v1[0] + v2[0], v1[1] + v2[1]]
end

def increments(n)
  array = [n - 1]
  (n - 1).times do |i|
    2.times { array << array.last + n - 1 - i }
  end
  array
end

def snail(array)
  length = array.length
  area = length ** 2
  rotate_times = increments(length)
  r = [0, 0]
  v = [0, 1]
  new_array = []
  k = 0
  while k < area
    new_array << array[r[0]][r[1]]
    r = sum(r, v)
    k += 1
    v = rotate(v) if rotate_times.include?(k)
  end
  new_array
end

array = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
]
p snail(array) # prints [1,2,3,6,9,8,7,4,5]

array = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9, 10, 11, 12],
  [13, 14, 15, 16],
]
p snail(array) # prints [1,2,3,4,8,12,16,15,14,13,9,5,6,7,11,10]

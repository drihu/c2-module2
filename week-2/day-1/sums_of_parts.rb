def sum(ls)
  ls.inject { |sum, n| sum + n }
end

def parts_sums(ls)
  lists = ls.map.with_index { |n, i| ls[i..-1] } << []
  sums = lists.map { |list| list.empty? ? 0 : sum(list) }
end

# ls = [0, 1, 3, 6, 10]
# The corresponding lists are:
# [0, 1, 3, 6, 10] -> 20
# [1, 3, 6, 10] -> 20
# [3, 6, 10] -> 19
# [6, 10] -> 16
# [10] -> 10
# [] -> 0
p parts_sums([0, 1, 3, 6, 10]) # prints [20, 20, 19, 16, 10, 0]
p parts_sums([1, 2, 3, 4, 5, 6]) #prints [21, 20, 18, 15, 11, 6, 0]

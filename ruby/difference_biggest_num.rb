def diff_big_2(arr)
  sorted = arr.sort
  p sorted[-1] - sorted[-2]
end

diff_big_2([3, 7, 90, 2, 68])

def diff_big_2(arr)
  num1 = arr.max
  arr.delete_at(arr.index(num1))
  num1 - arr.max
end

diff_big_2([3, 7, 90, 2, 68])

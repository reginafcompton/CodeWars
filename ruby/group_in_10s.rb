def group_in_10s(*num)
  return [] if num.empty?
  num.sort!
  arr_count = (num[-1] / 10) + 1
  arr_2d = make_2d_arr(arr_count)

  num.each do |n|
    arr_2d[n/10].push(n)
  end

  add_nil(arr_2d)
end

def make_2d_arr(num)
  arr = []
  num.times { arr << [] }
  arr
end

def add_nil(arr)
  arr.map! do |el|
    el.empty? ? nil : el
  end
  arr
end

group_in_10s(4, 1, 2, 3, 14, 33)



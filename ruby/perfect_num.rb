def is_perfect(n)
  sum = find_factors(n).reduce(:+)
  sum == n ? true : false
end

def find_factors(n)
  num_arr = Array (1..n-1)
  num_arr.delete_if { |num| n % num != 0 }
  num_arr
end

p is_perfect(8128)

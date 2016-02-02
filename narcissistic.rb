def narcissistic?(value)
  array = value.to_s.split("").map! { |x| x.to_i }

  sum = 0
  array.map! { |x| x ** array.length }.each { |x| sum += x }

  sum == value ? true : false
end

p narcissistic?(153)
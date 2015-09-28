def narcissistic?(value)

  array = value.to_s.split("").map! { |x| x.to_i }

  sum = 0
  array.map! { |x| x ** array.length }.each { |x| sum += x }

  if sum == value
    p true
  else
    p false
  end

end

narcissistic?(153)
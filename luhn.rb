def validate(n)
  num_array = n.to_s.split("")
  doubles = double_nums(num_array)
  split_doubles_array = doubles.join("").split("")
  add_array(split_doubles_array) % 10 == 0 ? true : false
end

def double_nums(array)
  doubled_array = []
  array.each_with_index do |num, index|
    index % 2 == 0 ? (doubled_array << num.to_i * 2) : (doubled_array << num.to_i)
  end
  doubled_array
end

def add_array(array)
  sum = 0
  array.each do |n|
    sum += n.to_i
  end
  sum
end

p validate(4663960122001999)
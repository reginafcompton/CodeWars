def no_boring_zeros(num)
  array = num.to_s.chars.reverse
  num_zeroes = find_num_zeroes(array)
  array.drop(num_zeroes).reverse.join("").to_i
end

def find_num_zeroes(arr)
	counter = 0
	arr.each do |num|
		counter += 1 if num == "0"
		break if num != "0"
	end
	counter
end

no_boring_zeros(10220000000)
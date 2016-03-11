def get_last_digit(index)
	fib_arr = [1, 1]
	i = 0
  	while fib_arr.length < index
  		new_num = fib_arr[i] + fib_arr[i + 1]
  		fib_arr << new_num
  		i += 1
  	end
  	fib_arr[-1][-1]
end

p get_last_digit(15)
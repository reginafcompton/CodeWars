def last_man_standing(num)
	arr = make_arr(num)
	until arr.length == 1
		arr.map!.with_index do |i, index|
			i if index % 2 == 1
		end
		arr.compact!.reverse!
	end
	arr[0]
end

def make_arr(num)
	arr = []
	counter = 1
	num.times do 
		arr << counter
		counter += 1
	end
	arr
end

p last_man_standing(9)



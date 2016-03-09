def noonerize(numbers)
	numbers.each { |el| return "invalid array" if el.is_a? String }
	arr = spoonerize(numbers)
	arr.sort!
	arr[1] - arr[0]
end

def spoonerize(arr)
	first_nums_arr = []
	spoon_arr = []
	arr.map! do |num|
		first_nums_arr << num.to_s.slice!(0)
		num.to_s[1..-1]
	end
	multi_arr = [first_nums_arr.reverse, arr].transpose
	multi_arr.each do |el|
		if el[0] == 0 || el[1] == 0
			spoon_arr << el[0] + el[1]
		else
			spoon_arr << el.join("").to_i
		end
	end
	spoon_arr
end

noonerize([1000000, 9999999])



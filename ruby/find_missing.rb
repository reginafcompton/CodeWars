def find_missing_numbers(arr)
  missing_nums = []
  arr.each_with_index do |num, index|
  	unless arr[index + 1] == num + 1
  		unless arr[index + 1] == nil
	  		diff = arr[index + 1] - num
	  		amt = diff.abs - 1
	  		amt.abs.times { missing_nums << num += 1 }
  		end
  	end
  end
  missing_nums
end

p find_missing_numbers([-3,-2,1,4])
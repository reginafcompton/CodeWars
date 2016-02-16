def remove_smallest(numbers)
  arr_sorted = numbers.sort
  smallest = arr_sorted[0]
  numbers.each_with_index do |num, index|
      if num == smallest
        numbers.delete_at(index)
        return numbers
      end
  end
end

p remove_smallest([5,3,2,1,4, 1])

def fill_gaps(arr)
  clone_arr = arr.dup
  clone_arr.map.with_index do |el, index|
    last = clone_arr[0..index].compact.last
    first = clone_arr[index..-1].compact.first
    if el == nil && first == last
      first
    else
      el
    end
  end
end

p fill_gaps([1,nil, nil, nil, 2, 1])


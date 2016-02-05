def double_check(str)
  array = str.downcase.split("")
  array.each_with_index do |num, index|
    return true if num == array[index + 1]
  end
  return false
end

p double_check("sstringggg   ")
def longest_palindrome(s)
  return 0 if s.length == 0
  arr = s.split("")
  arr_length = arr.length
  arr_clone = arr.dup
  arr_container = []
  arr.each do |el|
    index = 0
    while index <= arr_length
      arr_segment = arr_clone.take(index)
      arr_container << arr_segment if palindrome?(arr_segment)
      index += 1
    end
    arr_clone.shift
  end
  find_max(arr_container)
end

def palindrome?(s)
  s == s.reverse ? true : false
end

def find_max(arr)
  arr.max_by(&:length).length
end

p longest_palindrome("")



def count_vegetables(s)
  arr = make_arr(s)
  hash = hash_counter(arr)
  nested_arr = hash.sort_by { |key, value| [value, key] }
  nested_arr.reverse.map! { |arr| arr.reverse }
end

def hash_counter(arr)
	hash = Hash.new(0)
	arr.each { |el| hash[el] += 1 }
	hash
end

def make_arr(s)
	vegetables = "cabbage carrot celery cucumber mushroom onion pepper potato tofu turnip"
	arr = s.split(' ')
	arr.delete_if { |el| vegetables.include?(el) == false }
	arr
end

p count_vegetables("pants potato tofu cucumber cabbage turnip pepper onion carrot celery mushroom potato tofu cucumber cabbage")

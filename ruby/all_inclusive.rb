def contain_all_rots(string, arr)
	return true if string.length == 0
	return false if arr.include?(string) == false

    num = string.length
    num.times do 
    	string = rotation(string)
    	return false if arr.include?(string) == false
    end
    true
end

def rotation(string)
	string.split("").rotate!.join
end

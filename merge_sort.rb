require 'pry-byebug'

def merge_sort(array)
	return array if array.length <= 1

	midpoint = (array.length) / 2
	left = array[0..midpoint - 1]
	right = array[midpoint..array.length - 1]
	merge(left,right)	
end

def merge(left,right)
end

merge_sort([9,16,3,5,69,8,4,0,11])
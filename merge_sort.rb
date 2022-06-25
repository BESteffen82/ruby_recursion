def merge_sort(array)
	if array.length < 2
		array
	else 
		midpoint = (array.length / 2)
		left = merge_sort(array[0..midpoint - 1])
		right = merge_sort(array[midpoint..array.length - 1])
		merge(left,right)
	end	
end

def merge(left,right)
	if left.empty?
		right
	elsif right.empty?
		left
	elsif left.first < right.first
		[left.first] + merge(left[1..left.length], right)
	else 
		[right.first] + merge(left, right[1..right.length])
	end
end

random_array = Array.new(11){rand(1..100)}
p random_array
p merge_sort(random_array)
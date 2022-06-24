def fibs(n)
	arr = [0,1]
	return [] if n == 0
	return [0] if n == 1
	return arr if n == 2
	
	
	for i in 3..n
		arr << (arr[-2] + arr[-1])
	end
	arr
end

def fibs_rec(arr = [], n)	
	return arr.push(n) if n < 2	
	return arr.push(0, 1) if n == 2
	fibs_rec(arr, n-1)
	arr.push(arr[-2] + arr[-1]) 
end

p fibs(8)
p fibs_rec(8)
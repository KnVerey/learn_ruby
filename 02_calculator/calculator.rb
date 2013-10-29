def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(num_array)
	num_array.inject(0) {|sum, num| sum+num}
end

def multiply(*nums_to_array)
	nums_to_array.inject(1) {|result, num| result*num }
end

def factorial(num, result=num*1)
	return result if num<=1
	result = num * factorial(num-1)
end

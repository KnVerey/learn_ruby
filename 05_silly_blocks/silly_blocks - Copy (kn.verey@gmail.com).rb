def reverser
	yield.split(" ").map{|x| x.reverse}.join(" ")
end

def adder(num=1)
	yield + num
end

def repeater(num=1)
	sum = 0
	num.times	{ sum += yield }
	return sum
end
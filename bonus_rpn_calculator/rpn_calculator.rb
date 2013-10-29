class RPNCalculator
	attr_reader :value, :stack

	def initialize
		@stack = []
	end

	def update_value
		@value = @stack[-1]
	end

	def push(num)
		@stack << num.to_f
	end

	def plus
		@stack.push(@stack.pop + @stack.pop)
		update_value
	end

	def minus
		x = @stack[-2] - @stack[-1]
		@stack.pop(2) 
		@stack.push(x)
		update_value
	end

	# def times
	# 	if @stack.length>1; @value *= (@stack.pop * @stack.pop)
	# 	elsif @stack.length==1; @value*=@stack.pop
	# 	else; @value; end
	# end

	# def divide
	# 	if @stack.length>1; @value = (@stack.pop / @stack.pop)
	# 	elsif @stack.length==1; @value/=@stack.pop
	# 	else; @value; end
	# end
end
# calculator=RPNCalculator.new
#     calculator.push(2)
#     calculator.push(3)
#     puts calculator.plus

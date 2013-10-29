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

	def validate		
		raise("calculator is empty") if @stack.size < 2
	end

	def plus
		validate
		@stack.push(@stack.pop + @stack.pop)
		update_value
	end

	def minus
		validate
		x = @stack[-2] - @stack[-1]
		@stack.pop(2)
		@stack.push(x)
		update_value
	end

	def times
		validate
		@stack.push(@stack.pop * @stack.pop)
		update_value
	end

	def divide
		validate
		x = @stack[-2] / @stack[-1]
		@stack.pop(2)
		@stack.push(x)
		update_value
	end

	def tokens(string)
		operators = %w(+ - * % /)
		string.split(" ").map { |x| (operators.include? x) ? x.to_sym : x.to_i}
	end

	def evaluate(string)
		tokens(string).each do |item|
			if item==:+
				plus
			elsif item==:-
				minus
			elsif item==:*
				times
			elsif item==:/
				divide
			else
				push(item)
			end
 		end
 		@value
	end

end

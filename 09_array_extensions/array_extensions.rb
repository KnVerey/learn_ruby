class Array
	def sum
		inject(0)	{|total,item| total+=item}
	end

	def square
		map {|item| item*item}
	end

	def square!
		map! {|item| item*item}
		
	end
end
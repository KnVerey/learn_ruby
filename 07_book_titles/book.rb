class Book
	attr_reader :title

	def initialize
		
	end

	def title=(string)
		no_caps = ["a","an","the","and","but","for","nor","or","yet","so","in","of","to"]

		cap_array = string.split(" ").each do |word| 
			(no_caps.include? (word)) ? word : word.capitalize!
		end
		cap_array[0].capitalize!
		@title=cap_array.join(" ")
	end
end
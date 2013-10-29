class Dictionary
	attr_accessor :entries, :keywords

	def initialize
		@entries = {}
		@keywords = update_keywords
	end

	def add(input)
		input = {input => nil} unless input.is_a? Hash
		@entries.merge!(input)
		update_keywords
	end

	def update_keywords
		@keywords = @entries.keys.sort
	end

	def include?(keyword)
		@entries.has_key?(keyword)
	end

	def find(keyword)
		{}.merge(@entries).keep_if {|key, value| key.start_with?(keyword)}
	end

end

class Dictionary
	attr_accessor :entries

	def initialize
		@entries = {}
	end

	def add(hash)
		@entries << hash
		
	end

end
class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		hours = padded(@seconds/60/60)
		minutes = padded(@seconds/60%60)
 		seconds = padded(@seconds%60%60)
 		hours + ":" + minutes + ":" + seconds
	end

	def padded(num)
		num>9 ? num.to_s : "0" + num.to_s
	end
end
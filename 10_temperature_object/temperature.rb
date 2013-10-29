class Temperature

	def initialize(hash)
		@temp = hash.values[0]
		@fahr = (hash.keys[0]==:f ? true : false)
		@cel = (hash.keys[0]==:c ? true : false)
	end

	def to_fahrenheit
		return @temp if @fahr
		(@temp.to_f*9/5)+32
	end

	def to_celsius
		return @temp if @cel
		(@temp.to_f-32)*5/9
	end

	def self.in_celsius(num)
		Temperature.new({:c => num})
	end

	def self.in_fahrenheit(num)
		Temperature.new({:f => num})
	end
end

class Celsius < Temperature
	def initialize(num)
		@cel = true
		@temp = num
	end
end

class Fahrenheit < Temperature
	def initialize(num)
		@fahr=true
		@temp=num
	end
end
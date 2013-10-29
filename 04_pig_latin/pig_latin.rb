def translate(expression)
	vowels = ["a","e","i","o","u"]
	punctuation = ["!",".","?",","]

	array = expression.split(" ")
	first_vow_i = 0

	pigged = array.map do |word|
		capitalized = (word.capitalize == word ? true : false)

		word_array = word.split("")
		word_array.each_index do |i| 
			if vowels.include? (word[i])
				first_vow_i = i
				break
			end
		end

		(punctuation.include? (word_array[-1])) ? punct = word_array.pop : punct = ""

		if first_vow_i == 0 
			pig = word + "ay" + punct
		elsif word[0..2].include? ("qu")
			pig = word_array.rotate!(first_vow_i+1).join("") + "ay"	+ punct
		else
			pig = word_array.rotate!(first_vow_i).join("") + "ay" + punct
		end

		capitalized ? pig.capitalize! : pig

	end

	pigged.join(" ")

end

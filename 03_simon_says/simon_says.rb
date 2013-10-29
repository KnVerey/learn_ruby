def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, num=2)
	((word+" ")*num).rstrip
end

def start_of_word(word,num)
	word[0..(num-1)]
end

def first_word(string)
	string.partition(" ")[0]
end

def titleize(string)
	word_array = string.split(" ")
	little_words = ["a","an","the", "over","in","and","but","for","so","nor","or"]

	word_array.each do |word| 
		word.capitalize! unless little_words.include?(word) 
	end
	word_array[0].capitalize!

	word_array.join(" ")
end
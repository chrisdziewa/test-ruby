def translate(text)
	words = text.split " "
	result_list = []

	words.each do |word|
		new_word = translate_single(word)
		result_list.push(new_word)
	end
	result_list.join " "
end


def translate_single(text)
	consonants = "bcdfghjklmnpqrstvwxyz"
	word = text.split ""		
	
	if consonants.include? word.first
		consonant = true
		letter = word.shift
		ending = ""
		while consonant and word.length > 0
			if letter.downcase + word.first.downcase == "qu"
				ending += letter + word.shift
				letter = word.first
			elsif consonants.include? letter
				ending += letter	
			end

			if consonants.include? word.first
				letter = word.shift
			else
				consonant = false	
			end
		end
		word << ending
	end
	word << "ay"
	word.join ""
end

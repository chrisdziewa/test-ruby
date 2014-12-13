def echo(text)
	text
end

def shout(text) 
	text.upcase
end

def repeat(text, repeat=2) 
	results = []
	repeat.times do 
		results.push(text)
	end
	results.join " "
end

def start_of_word(text, length)
	result = ""
	i = 0
	while i < length 
		result += text[i]
		i += 1
	end
	result
end

def first_word(phrase)
	result = phrase.split(" ")
	result = result[0]
end

def titleize(text)
	# result = text.split ""
	# result[0].upcase!	
	# result.join ""
	result = text.split(" ")
	new_result = []
	if result.length >= 1 
		result.each do |word|
			word = word.split ""
			word[0].upcase!	
			word = word.join ""
			if ["and", "the", "over"].include? word.downcase and new_result.length != 0
				word.downcase!
			end
			new_result.push(word)
		end
	end
	result = new_result.join " "
	result
end

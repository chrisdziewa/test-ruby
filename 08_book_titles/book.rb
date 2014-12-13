class Book
	attr_accessor :title

	def title
		skip_words = ["and", "but", "or", "in", 
			"the", "of", "a", "an"]
		final = []
		@title.split.map do |word|	
			if final.empty? 
				word = word.capitalize
			elsif !skip_words.include? word
				word = word.capitalize
			end
			final << word
		end
		@title = final.join " "
	end
end
class Book
    attr_accessor :title
    
    def title
        titleize(@title.capitalize!)        
    end
    
    private
    def titleize(words)
        little_words = ["And","The","A","An","In","Of",""]
		words_arry = words.split(" ")
		for i in 1...words_arry.length
			words_arry[i].capitalize!
			if little_words.include? words_arry[i]
			    words_arry[i].downcase! 
			end
			
		end

		words_arry.join(" ")
    end
end

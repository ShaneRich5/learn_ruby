#write your code here
def echo(str) 
   str
end

def shout(str)
    str.upcase 
end

def repeat(str, n=2)
    ([str] * n).join(' ')
end

def start_of_word(word, n)
    word[0..n - 1]
end

def first_word(sentence)
    sentence.split.first
end

def titleize(string)
	split_array=string.split(" ")
	split_array.map! do |word|
		if word == "and" || word== "the" || word=="over"
			if split_array.index(word)==0
				word.capitalize
			else word
			end
		else 
			word.capitalize
		end
	end
	split_array
	return split_array.join(" ")
end
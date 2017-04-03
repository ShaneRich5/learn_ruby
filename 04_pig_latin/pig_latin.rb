#write your code here
def translate(sentence)
    words = sentence.split(' ')
    words.map! { |word| rearrange(word) + 'ay' }
    words.join(' ')
end

def rearrange(word)
    vowels = ['a', 'e', 'i', 'o', 'u']
    
    word.size.times do
        first_letter = word[0]
        if 'qu' == word.slice(0, 2)
            letters = word.slice!(0, 2)
            word << letters
        elsif not vowels.include? first_letter
            word << first_letter
            word.slice!(0)
        else
            break 
        end
    end
    return word
end
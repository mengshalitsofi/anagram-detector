class Anagram
    def initialize (word)
        @word = word
    end

    attr_accessor :word

    def match(anagrams)
        result = []
        sorted_word = @word.split("").sort
        anagrams.each do |string|
            if sorted_word == string.split("").sort
                result << string
            end
        end
        return result
    end
end
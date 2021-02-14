# Your code goes here!
require 'pry'
class Anagram
    attr_accessor :word, :word_array, :possible_anagrams, :possible_anagrams_array, :matching_word

    def initialize(word)
        @word = word
        @word_array = @word.split("").sort
        @word_array
    end

    def match(possible_anagrams)
        
        @possible_anagrams_array = []
        @matching_word = []
        @possible_anagrams = possible_anagrams
        @possible_anagrams.map {|word| @possible_anagrams_array << word.split("")}

        @possible_anagrams_array.each do |item|
            if item.sort == @word_array
                @matching_word << item.join
            end
        end
        @matching_word
    end
end


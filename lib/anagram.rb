# Your code goes here!
class Anagram
  @@characters_of_word = []
  def initialize(word)
    @@characters_of_word = word.split("").sort!
  end
  def self.match(array)
    anagrams = []
    array.each do |word|
      characters = word.split("").sort!
      anagrams << word if characters == characters_of_word
    end
    return anagrams
  end
end
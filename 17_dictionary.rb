# Dictionary
#
# Extend the Dictionary class.
#
# It should have three methods:
# .add_word(word, definition) -> Should store a word and definition
# .lookup(word) -> Should return a definition
# .total_words -> Should return the number of words stored
#
# Difficulty:
# 4/10
#
# Example:
# dictionary = Dictionary.new
# dictionary.add_word('ruby', 'A precious stone')
# dictionary.total_words -> should return 1
# dictionary.lookup('ruby') -> should return 'A previous stone'
#
# Check your solution by running the tests:
# ruby tests/10_dictionary_test.rb
#

class Dictionary
   attr_accessor :add_word
   def initialize
    @words_in_dictionary=[] 
   end  
   def add_word(word,definition)
    @word=word
    @definition=definition
    h={}
    p @word
    h[@word]= @definition
    @words_in_dictionary << h 
   end
   def total_words
    @words_in_dictionary.length 
   end 
   def lookup(key)
    @key=key
    my_definition=@words_in_dictionary.map!{|letter| letter[@key]}
    my_definition.compact.join
   end 
end

add=Dictionary.new

p add.add_word('ruby', 'A precious stone')
p add.total_words
p add.lookup('ruby')





# puts "please type a word and definition to add"
#  i=0
#  word=[]
#  while i !='no'
#   i = gets.chomp 
#   break if i=='no'
#    word << i
#  end
#  p word
#  l= word.length
#  p total_word= (l/2)
#  h = Hash[*word]
#  p h.values


#  for words in word do{
#    a = words.slice
#  }
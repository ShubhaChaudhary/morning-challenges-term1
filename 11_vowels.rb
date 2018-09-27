# Vowels
#
# Write a method that will take a string and
# return an array of vowels used in that string.
#
# Difficulty:
# 4/10
#
# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]
#
# Check your solution by running the tests:
# ruby tests/04_vowels_test.rb
#

<<<<<<< HEAD
 def vowels (s)
 elem =[] 
 s.each {|word| elem << word.split(//)}
 d = elem.flatten
 vowel=["a","e","i","o","u"] 
  a = d - vowel
  count_vowel = d - a
 end
puts"please enter the string"
p = gets.chomp.downcase!
s = p.split
p vowels(s)
 
 
#  vo = s.each{||word|  word.each_char{|x| p "#{"x"},"}}
#  v = s.each {|word| puts word.match(/[aeiou]/)}


=======
def vowels (string)
  string.scan(/[aeiou]/i)
end
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993

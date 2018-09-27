# Included Once
#
# Write a method that takes an array and a string. Return
# true if the string is found in the array only once.
# Otherwise return false.
#
# What's the time complexity of your solution? Can it be improved?
#
# *** Whiteboard this first ***
#
# Difficulty: 4/10
#
# Example:
# includedOnce(['hello','hi','hi'], 'hi') -> false
# includedOnce(['hello','hi','hey'], 'hi') -> true
#
# Check your solution by running the tests:
# ruby tests/14_included_once_test.rb
#

def includedOnce (haystack, needle)
   l = haystack.length
   n = needle
   i=0
   flag=0
   while  i < l
    if haystack[i] == n
      flag += 1
    end
    i += 1
   end 
     flag > 1 ? 'false' :  'true'
end
 haystack=['hello','hi','fo'] 
  p haystack
  p includedOnce(haystack,'hi')


# puts"please enter the array of item"
# a=Array[]
#   i= 0
# while i != 'no'
#  i = gets.chomp
#  break if i=='no'
#   a << i 
# end 
#   p a
#   l= a.length
#   i=0
#   m=gets.chomp
#   flag = 0
#   while i < l 
#     if a[i] == m
#       flag = 1
#     # else  
#     #   flag = flag + 0  
#     end
#     i+=1
#   end
# if flag == 1
#   puts "Match Found  "
# else
#   puts "No Match Found" 
# end   

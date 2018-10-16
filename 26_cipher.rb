# Write a class that implements the Caesar cipher.
# (http://practicalcryptography.com/ciphers/caesar-cipher/)
#
# When given a string, will return an uppercase string with each letter shifted
# forward in the alphabet by however many spots the cipher was initialized to.
#
# For example:
#
# c = CaesarCipher.new(5); # creates a CipherHelper with a shift of five
# c.decode('BFKKQJX') # returns 'WAFFLES'
#
# If something in the string is not in the alphabet (e.g. punctuation, spaces), simply leave it as is.
#
# The shift will always be in range of [1, 26].
 class CaesarCipher

  def initialize(shift)
    @shift = shift
  end

  def encode(string)
    string.upcase.tr(alphabet, cipher)
  end

  def decode(string)
    string.upcase.tr(cipher, alphabet)
  end

  def alphabet
    [*('A'..'Z')].join
  end

  def cipher
    alphabet.chars.rotate(@shift).join 
  end

end

# class CaesarCipher
#   def initialize(shift)
#     @shift=shift
#     @de_code=[]
#     @en_code=[]
#     @words=('A'..'Z').to_a
#     p @words.length
#     # @alphabet=@words.to_a
#   end
#   def encode(string)
#     @string= string
#     @my_string=@string.split(//)
#     @my_string.map do |word|  
#       if @words.index(word)+@shift > 26
#         @final_index =@words.index(word)+@shift-26
#       else 
#         @final_index=@words.index(word)+@shift 
#       end
#         @en_code << @words[@final_index] 
#       end 
#   end
#   def decode(string)
#     @string= string
#     @my_string=@string.split(//)
#     @my_string.map{|word|  @de_code <<@words[@words.index(word)-@shift]}
#     @de_code  
#   end
# end

# cipher=CaesarCipher.new(5)
# p cipher.decode("BFKKQJX")
# p cipher.encode("WAFFLES")
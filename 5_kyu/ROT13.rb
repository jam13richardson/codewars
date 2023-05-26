# ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.

# Create a function that takes a string and returns the string ciphered with Rot13. 
# If there are numbers or special characters included in the string, they should be returned as they are. 
# Only letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".


def rot13(text)
    text.gsub(/[A-Za-z]/) do |char|
      ascii_offset = char.match(/[a-z]/) ? 'a'.ord : 'A'.ord
      rotated = (char.ord - ascii_offset + 13) % 26
      (rotated + ascii_offset).chr
    end
  end

#   def rot13(string)
#     string.tr("A-Za-z", "N-ZA-Mn-za-m")
#   end

# string.tr(source_chars, target_chars)

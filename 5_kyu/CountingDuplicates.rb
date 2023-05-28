#Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits 
#that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

def duplicate_count(text)
    x = text.downcase.chars
   y = x.group_by { |letter| letter}.select { |_, letters| letters.count > 1}
     z = y.count
   end

#    def duplicate_count(text)
# 	arr = text.downcase.split("")
#   arr.uniq.count { |n| arr.count(n) > 1 }
# end

# def duplicate_count(text)
#     text.downcase.chars.tally.count { |k, v| v > 1 }
#   end
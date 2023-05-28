#Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

def pig_it(text)
    a = text.split.map do |x| 
      if x =~ /[a-zA-Z]/
        x << x[0] + 'ay'
        x[1..-1]
      else 
        x
      end
    end
    
    a.join(" ")
  end
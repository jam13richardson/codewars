# You need to write regex that will validate a password to make sure it meets the following criteria:

# At least six characters long
# contains a lowercase letter
# contains an uppercase letter
# contains a digit
# only contains alphanumeric characters (note that '_' is not alphanumeric)



class PasswordValidator
    def =~(other)
      return 0 if valid(other)
    end
    
    private
    
    def valid(other)
      other.length > 5 &&
      /[a-z]/ =~ other &&
      /[A-Z]/ =~ other &&
      /[_\W]/ !~ other &&
      /\d/    =~ other
    end
  end
  
  regex = PasswordValidator.new
  
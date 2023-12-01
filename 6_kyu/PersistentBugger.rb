def persistence(n)
  counter = 0 
  while n > 9 do 
    n = n.to_s.split('').map(&:to_i).inject(&:*)
    counter += 1 
  end 
  return counter 
end 

#Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

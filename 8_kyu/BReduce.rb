

=begin
Given and array of integers (x), return the result of multiplying
the values together in order. Example:
[1, 2, 3] --> 6
For the beginner, try to use the reduce method - it comes in
very handy quite a lot so is a good one to know.
Array will not be empty.
=end

def grow(x)
  x.map.reduce(:*)
end

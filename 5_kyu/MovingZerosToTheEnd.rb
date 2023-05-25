Write an algorithm that takes an array and moves all of the zeros to the end, preserving the order of the other elements.

moveZeros [1,2,0,1,0,1,0,3,0,1] #-> [1,2,1,1,3,1,0,0,0,0]

def moveZeros(arr) 
    arr2 = []
    arr.map do |n|
      if n == 0 
        arr2 << n
      end 
    end
    arr3 = arr.reject{ |n| n==0}
    arr3.concat(arr2)
  end
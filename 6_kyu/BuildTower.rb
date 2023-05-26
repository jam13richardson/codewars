# Build Tower
# Build a pyramid-shaped tower, as an array/list of strings, given a positive integer number of floors. A tower block is represented with "*" character.


def towerBuilder(n_floors)
    tower = []
    
    base_width = n_floors * 2 - 1
    
    n_floors.times do |floor|
      stars = floor * 2 + 1
      spaces = (base_width - stars) / 2
      floor_str = ' ' * spaces + '*' * stars + ' ' * spaces
      tower << floor_str
    end
    
    tower
  end
  
  p towerBuilder(6)

  def towerBuilder(n)
    (1..n).map do |i|
      space = ' ' * (n - i)
      stars = '*' * (i * 2 - 1)
      space + stars + space
    end
  end
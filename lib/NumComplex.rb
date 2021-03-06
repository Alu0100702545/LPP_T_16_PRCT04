class NumComplex
  attr_reader :x, :y #x sera la parte real, y la parte compleja
  
  def initialize(x, y)
    @x, @y = x, y
  end
  
  def to_s
    "#{@x} + #{@y}i"
  end
  
  def + (other)
    NumComplex.new(@x+other.x, @y + other.y)
  end
  
  def - (other)
    NumComplex.new(@x-other.x, @y - other.y)
  end
  
  def * (other)
     if other.is_a? NumComplex
      NumComplex.new(((@x * other.x) - ( @y * other.y)),(( @x * other.y) + (@y * other.x)))
    else
      NumComplex.new(@x*other, @y *other) 
    end
  end
  
  def | (other)
    NumComplex.new((@x*other.x + @y * other.y)/(other.x*other.x + other.y*other.y),(@y*other.x - @x * other.y)/ (other.x * other.x + other.y*other.y))
  end
  
end 
  
  

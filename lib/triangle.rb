class Triangle
  
  attr_accessor :one, :two, :three 
  
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind 
    if (@one == @two) && (@two == @three) && (@one == @three)
      :equilateral
    elsif (@two == @three) || (@one == @three) || (@one == @two)
      :isosceles
    elsif (@one != @two) && (@two != @three) && (@two != @three)
      :scalene
    end
  end
 
  def illegal
    if (@one <= 0) || (@two <= 0) || (@three <= 0)
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif (@one )
    end
  end
  
  class TriangleError < StandardError
     def message
       "Error"
     end
  end

end

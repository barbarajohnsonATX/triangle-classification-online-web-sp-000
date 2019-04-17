require 'pry'
class Triangle
<<<<<<< HEAD
  attr_accessor :side_a, :side_b, :side_c
  
  # write code here
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    @sides = [side_a, side_b, side_c]
  end 
  
  def valid?
    #illegal cases 
    sum_0_1 = @sides[0] + @sides[1] <= @sides[2]
    sum_1_2 = @sides[1] + @sides[2] <= @sides[0]
    sum_0_2 = @sides[0] + @sides[2] <= @sides[1]
    illegal_length = @sides.any? {|side| side <= 0} 
    illegal_cases = sum_0_1 || sum_1_2 || sum_0_2 || illegal_length 
      
     if illegal_cases
      return false 
       
    else 
      return true 
    end 
    
  end 
  
  def kind 
    if valid? 
      if @side_a == @side_b && @side_a == @side_c && @side_b == @side_c
        return :equilateral 
      elsif @side_a == @side_b || @side_b == @side_c || @side_a == @side_c
        return :isosceles 
      else 
        return :scalene
      end 
    else 
        raise TriangleError

=======
  attr_accessor 
  # write code here
  def initialize(side_a, side_b, side_c)
    #@side_a = side_a
    #@side_b = side_b
    #@side_c = side_c
    @sides [@side_a, @side_b, @side_c]
  end 
  
  def valid?
    sum_0_1 = @sides[0] + @sides[1] <= @sides[2]
    sum_1_2 = @sides[1] + @sides[2] <= @sides[0]
    sum_0_2 = @sides[0] + @sides[2] <= @sides[1]
   
    if @sides.any? {|side| side <= 0}
      return false 
    elsif sum_0_1 || sum_1_2 || sum_0_2
      return false 
    else 
      return true 
    end 
  end 
  
  def kind 
    if @side_a == @side_b && @side_a == @side_c 
      return :equilateral 
    elsif @side_a == @side_b || @side_b == @side_c || @side_a == @side_c
      return :isoceles 
    else 
      return :scale
>>>>>>> d74a0dda7975d5848b2b7a6ec22773613d7754fa
    end 
      
  end 
  
<<<<<<< HEAD
  class TriangleError < StandardError 
    def message 
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side."
    end
=======
  class Triangle < StandardError 
  
>>>>>>> d74a0dda7975d5848b2b7a6ec22773613d7754fa
  end 
  
  
end

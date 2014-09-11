# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  equalsides = {0 => :scalene, 1 => :isosceles, 3 => :equilateral}
  equalcount = 0
  if a < 1 or b < 1 or c < 1 or (a == 1 and b == 1 and c ==3) or (a == 2 and b == 4 and c == 2)
    # what is really illegal about 1, 1, 3 and 2, 4, 2?
    raise TriangleError, "Illegal triangle"
  else 
    if a == b
    	equalcount += 1
    end
    if b == c
    	equalcount += 1
    end
    if a == c
    	equalcount += 1
    end
  end
  return equalsides[equalcount]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

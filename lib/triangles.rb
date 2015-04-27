class Triangles
  define_method(:initialize) do |side_1, side_2, side_3|
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  define_method(:is_triangle?) do
    if @side_1 > 0 && @side_2 > 0 && @side_3 > 0
      if @side_1 >= @side_2.+(@side_3)
        return false
      elsif @side_2 >= @side_1.+(@side_3)
        return false
      elsif @side_3 >= @side_1.+(@side_2)
        return false
      else
        return true
      end
    else
      return false
    end
  end
end

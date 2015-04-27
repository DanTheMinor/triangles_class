require('rspec')
require('triangles')

describe(Triangles) do
  describe('Triangles#is_triangle?') do
    it('will return true if the object is a triangle') do
      test_tri = Triangles.new(5, 5, 10)
      expect(test_tri.is_triangle?()).to(eq(false))
    end
  end

  describe('Triangles#what_type') do
    it('will return equilateral if all sides are equal') do
      test_tri = Triangles.new(4, 4, 4)
      expect(test_tri.what_type()).to(eq('Equilateral'))
    end
    it('will return isosceles if two sides are equal') do
      test_tri = Triangles.new(4, 4, 6)
      expect(test_tri.what_type()).to(eq('Isosceles'))
    end
    it('will return scalene if no sides are equal') do
      test_tri = Triangles.new(4, 5, 6)
      expect(test_tri.what_type()).to(eq("Scalene"))
    end
    it('will return not a triangle if not a triangle') do
      test_tri = Triangles.new(2, 2, 8)
      expect(test_tri.what_type()).to(eq('Not a Triangle'))
    end
  end
end

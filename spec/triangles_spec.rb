require('rspec')
require('triangles')

describe(Triangles) do
  describe('Triangles#is_triangle?') do
    it('will return true if the object is a triangle') do
      test_tri = Triangles.new(5, 5, 10)
      expect(test_tri.is_triangle?()).to(eq(false))
    end
  end
end

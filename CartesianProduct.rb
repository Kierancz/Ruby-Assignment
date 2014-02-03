class CartesianProduct
  include Enumerable
  
  attr_reader :l_enum, :r_enum
 
  def initialize(l_enum, r_enum)
    @l_enum = l_enum
    @r_enum = r_enum
  end
 
  def each
    self.l_enum.each {
      |l| self.r_enum.each {
        |r| yield [l, r]
      }
    }
  end
end

p "Testing CartesianProduct class..."
c = CartesianProduct.new([:a,:b], [4,5])

c.each { |elt| puts elt.inspect }

# [:a, 4]

# [:a, 5]

# [:b, 4]

# [:b, 5]

c = CartesianProduct.new([:a,:b], [])

c.each { |elt| puts elt.inspect }

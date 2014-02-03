class Dessert
	def initialize(name, calories)
		@name = name
		@calories = calories
	end
	
	attr_accessor :name
	attr_accessor :calories
 
	def healthy?
		@calories < 200
	end
 
	def delicious?
		true
	end
end
 
class JellyBean < Dessert
	attr_accessor :flavor
  
	def initialize(name, calories, flavor)
		super(name, calories)
		@flavor = flavor
	end
 
	def delicious?
		@flavor != "black licorice"
	end
end

p "Testing Dessert Class..."
icecream = Dessert.new("icecream", 300)
p "Icecream", "Healthy?", icecream.healthy?, "Delicious?", icecream.delicious?
frozenyogurt = Dessert.new("frozen yogurt", 150)
p "Frozen Yogurt", "Healthy?", frozenyogurt.healthy?, "Delicious?", frozenyogurt.delicious?

p "Testing JellyBean Class..."
licorice = JellyBean.new("black licorice", 199, "black licorice")
p "B

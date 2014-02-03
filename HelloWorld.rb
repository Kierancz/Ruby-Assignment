class HelloWorldClass
    def initialize(name)
       @name = name.capitalize
    end
    def sayHi
        puts "Hello #{@name}!"
    end
end

p "Testing HelloWorldClass..."
hello = HelloWorldClass.new("kieran")
hello.sayHi

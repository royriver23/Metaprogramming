require 'pry'
require 'awesome_print'
AwesomePrint.pry!

# =========================

# Multiple classes
5.times do
    class MYClass
        puts 'Testing'
    end
end
binding.pry

# obj = D.new
# obj.x
# obj.y
class D
    def x
        'x'
    end
end

class D
    def y
        'y'
    end
end
binding.pry

# =========================

# Instance_variables example

# obj = MyClass.new
# obj.instance_variables
# obj.my_method
# obj.methods.grep(/my/)
# var_name = 'v'
# obj.instance_variables.include?("@#{var_name}".to_sym)
# obj.instance_variable_set(:@topic, "Metaprogramming in Ruby")
# obj.instance_variable_get(:@topic)

class MyClass
    def my_method
        @v = 1
    end
end
binding.pry

# =========================

# Constants

# MyModule::MyClass::MyConstant
# MyModule::MyConstant
# Module.nesting
# MyModule.constants
# Module.constants[0..1]

module MyModule
    MyConstant = 'Outer constant'
    class MyClass
        MyConstant = 'Inner constant'
    end 
end
binding.pry

# =========================

#ancestors
class Abuelo
    def metodo
    end
end

class Padre < Abuelo
end

class Hijo < Padre
end
binding.pry
# =========================

#module inclusion

module Test
    @coffee = true
end


class Dev
    include Test    
end
binding.pry
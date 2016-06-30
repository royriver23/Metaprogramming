require 'pry'
require 'awesome_print'
AwesomePrint.pry!


class Blocks
    def a_method
        return yield('Roy') if block_given? 
        'no block'
    end
    
end
binding.pry
ins = Blocks.new
ins.a_method
ins.a_method {|name| "BLOCK RESULT: #{name} was here at #{Time.now}" }



inc = Proc.new {|x| x + 1 }

dec = lambda {|x| x - 1 }

inc.call(2)




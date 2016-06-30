require 'pry'
require 'awesome_print'
AwesomePrint.pry!


class Dynamic
    test = Array((1..10))

    # calling methods dynamically
    even_numbers = test.send(:select) {|x| x.even? }
    
    # defining methods dynamically    
    define_method :titleize do |my_arg|
        my_arg.split(' ').map(&:capitalize).join(' ')
    end

    # method_missing
    def method_missing(method_name, *args)
        "You are calling an undefined method called #{method_name} using these arguments: #{args.join(', ')}"
    end
end
binding.pry
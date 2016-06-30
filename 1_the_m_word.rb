# Metaprogramming is writing code that manipulates language constructs at runtime.

class Greeting
  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end
end

my_object = Greeting.new 'Hello'
my_object.class
my_object.class.instance_methods(false) # List only instance methods you defined yourself, not those ones you inherited.
my_object.instance_variables

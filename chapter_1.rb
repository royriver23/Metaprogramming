# Open up String class to add functionality
class String
  def to_alphanumeric
    gsub /[^\w\s]/, ''
  end
end

##################################################################

# There is no multiple classes declarations here, 
# second and third times, the class is just reopened.
3.times do
  class C
    puts 'Hello'
  end
end

# Another example
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

obj = D.new
obj.x
obj.y

 # The class keyword in Ruby is more like a scope operator rather than a class declaration.

##################################################################

# Monkey Patching
# This is the dark side to Open Classes: 
# if you casually add bits and pieces of functionality to classes, 
# you can end up with bugs like the one you just encountered. 
# Some people would frown upon this kind of reckless patching of classes, 
# and they would refer to the previous code with a derogatory name: they’d call it a Monkeypatch.

# GREP
[].methods.grep /^re/ # => [:replace, :reject, :reject!, :respond_to?, ...
# Grep to avoid monkey patching and look up methods.

##################################################################

# Instance variables

# Unlike in Java or other static languages, in Ruby there is no connection between an object’s 
# class and its instance variables.
class MyClass
  def my_method
    @v = 'Hello'
  end
end

obj = MyClass.new
obj.instance_variables
obj.my_method
obj.methods.grep(/my/)
var_name = 'v'
obj.instance_variables.include?("@#{var_name}")
obj.instance_variable_set(:@topic, 'Metaprogramming in Ruby')
obj.instance_variable_get(:@topic)

##################################################################

# Methods

# Reside in classes, not in objects. Objects that share the same class also share the same methods, 
# so the methods must be stored in the class, not the object.

# Instance Methods: object is the caller
# Class Methods: class is the caller

String.instance_methods == 'abc'.methods # => true
String.methods == 'abbrevbc'.methods # => false

# Summary: 
# An object’s instance variables live in the object itself, and an object’s methods live in the object’s class. 
# That’s why objects of the same class share methods but don’t share instance variables.

# Returns class parent
String.superclass

# Returns all ancestors
String.ancestors

# Class comes from Module

##################################################################

# Constants

# all the constants in a program are arranged in a tree similar to a file system, 
# where modules (and classes) are directories and regular constants are files.

module MyModule
  MyConstant = 'Outer constant'
  class MyClass
    MyConstant = 'Inner constant'
  end 
end

MyModule::MyClass::MyConstant
MyModule::MyConstant
Module.nesting
MyModule.constants
Module.constants[0..1]

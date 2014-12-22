# exercise3.rb 

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

# attr_reader only gets information, doesn't set. to fix, change to attr_accessor
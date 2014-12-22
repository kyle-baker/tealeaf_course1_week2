# exercise8.rb

bob = Person.new
bob.hi

# The error is that 'hi' is a private method in the person class. We cannot access it through the bob object.

# to fix make 'hi' method public instead of private
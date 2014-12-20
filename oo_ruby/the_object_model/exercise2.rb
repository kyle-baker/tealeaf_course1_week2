# exercise2.rb

# A module is a collection of behaviors that is useable in other classes via mixins. 
# A module is "mixed in" to a class using the include reserved word.
# Allows you to group reusable code into one place.

module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class BadCat
  include Speak
end

garfield = BadCat.new
garfield.speak("I want Lasagna.")


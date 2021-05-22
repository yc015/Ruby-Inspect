#!/usr/bin/ruby -w

class Salad
  @item = 1
end

s1 = Salad.new   # Construct a Salad object using its default constructor with no parameters

puts s1

class NewSalad
  def initialize(item)
    @item = item
  end
end

s2 = NewSalad.new "Food" # Construct a NewSalad object using its non-default constructor with argument "Food"

puts s2

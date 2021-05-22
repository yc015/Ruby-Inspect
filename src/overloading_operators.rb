#!/usr/bin/ruby -w

class Salad
  attr_accessor :food_items
  def initialize(food_items)
    @food_items = food_items
  end

  def +(salad)
    return Salad.new(self.food_items + salad.food_items)
  end

  def to_s    # overload the + operator
    "items in the salad bowl: " + self.food_items.to_s
  end
end

s1 = Salad.new(["Ham", "Egg"])             # salad object 1
s2 = Salad.new(["Salmon", "Lettuce"])   # salad object 2
puts (s1 + s2).to_s

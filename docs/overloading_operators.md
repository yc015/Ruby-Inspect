# Overloading Operators

Ruby does not support overloading method names but we can overload the operators [1].

For example, we can overload the plus (+) operator.

**overloading_operators.rb**
```ruby
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
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/overloading_operators.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/overloading_operators.rb)

The codes above will print:  

    items in the salad bowl: ["Ham", "Egg", "Salmon", "Lettuce"]

References:  
[1] [https://www.geeksforgeeks.org/operator-overloading-in-ruby/](https://www.geeksforgeeks.org/operator-overloading-in-ruby/) Operator Overloading in Ruby - GeeksforGeeks
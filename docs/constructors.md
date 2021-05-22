# Constructors

Ruby has a default constructor, and we can write a custom constructor by implementing the initialize method [1]. However, Ruby does not support overloading the constructor so we cannot have multiple constructors [2]. We won't get a default constructor after we implement a non-default constructor.

**constructors.rb**
```ruby
class Salad
  @item = 1
end

s1 = Salad.new   # Construct a Salad object using its default constructor with no parameters

class NewSalad
  def initialize(item)
    @item = item
  end
end

s2 = NewSalad.new "Food" # Construct a NewSalad object using its non-default constructor with argument "Food"
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/constructors.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/constructors.rb)

In the codes above, we create a Salad object using its default constructor and a NewSalad Object using its non-default constructor with one parameter.

```ruby
s3 = NewSalad.new # This line will cause an error since we don't have default constructor anymore
```

However, we don't get a default constructor after implementing a non-default constructor. The codes above will cause an ArgumentError.

Ruby uses the garbage collector to manage the deallocation of objects so Ruby's classes do not have deconstructors.

Reference:  
[1] [http://ruby-for-beginners.rubymonstas.org/writing_classes/initializers.html](http://ruby-for-beginners.rubymonstas.org/writing_classes/initializers.html) Initializing objects - Ruby for Beginners  
[2] [https://www.geeksforgeeks.org/method-overloading-in-ruby/](https://www.geeksforgeeks.org/method-overloading-in-ruby/) Method Overloading in Ruby - GeeksforGeeks
# Higher Order Functions

Ruby has higher order functions such as map, select, inject [1], which are equivalent to map, filter, and foldl in Haskell.

For example:  

**higher_order_functions.rb**
```ruby
num_array = (1..8).to_a
puts (num_array.map {|num| num ** 2}).to_s    # Square every element in the num_array and print the array
puts (num_array.select {|num| num.odd?}).to_s # Only keep the odd numbers in the num_array
puts (num_array.inject(0, :+)).to_s           # Starting from 0, apply the addition to 
                                              # the first argument and the items in the array. Equivalent to foldl (+) 0 [1..8]
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/higher_order_functions.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/higher_order_functions.rb)

The codes above will print:  

    [1, 4, 9, 16, 25, 36, 49, 64]
    [1, 3, 5, 7]
    36

Reference:  
[1] [https://www.sitepoint.com/functional-programming-techniques-with-ruby-part-ii/](https://www.sitepoint.com/functional-programming-techniques-with-ruby-part-ii/) Functional Programming Techniques With Ruby: Part II - Sitepoint
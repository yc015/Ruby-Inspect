# Infinite Lists

Ruby supports the infinity list [1]. For example, we can create an infinite list from 0 to infinity and take a sublist of this infinity list.

**infinite_lists.rb**
```ruby
puts (0..Float::INFINITY).step(4).take(5).to_s # Print first 5 multiples of 4 from 0 to infinity
# Lazy Lists: Print the odd number from 10 to 20
puts ((0..Float::INFINITY).lazy.drop(10).take(10).select {|num| num.odd?}).to_a.to_s 
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/infinite_lists.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/infinite_lists.rb)

The codes above will print:  

    [0.0, 4.0, 8.0, 12.0, 16.0]
    [11, 13, 15, 17, 19]

The codes above take and print a part of the infinite lists.

References:  
[1] [https://ruby-doc.org/core-3.0.1/Enumerable.html#method-i-lazy-label-Example](https://ruby-doc.org/core-3.0.1/Enumerable.html#method-i-lazy-label-Example) Ruby’s Official Documentation for Lazy Lists.
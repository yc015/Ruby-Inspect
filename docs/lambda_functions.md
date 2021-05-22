# Anonymous Functions

Ruby supports anonymous functions. We can create a lambda function in the Ruby blocks and pass it to the higher order function [1].

**lambda_functions.rb**
```ruby
num_array = [1.1, 2.4, 3.2, 4.4]
new_array = num_array.map {|num| num.to_i - 1} # Convert the Float object into the Integer object and subtract 1
puts new_array.to_s
```

Source code: [https://github.com/yc015/Ruby-Inspect/blob/main/src/lambda_functions.rb](https://github.com/yc015/Ruby-Inspect/blob/main/src/lambda_functions.rb)

The codes above will print:  

    [0, 1, 2, 3]

We create a anonymous function `{|num| num.to_i - 1}`, which takes one parameter num, and the lambda function then converts num to integer and subtract 1 from it. The lambda function is passed to the higher order function map and applied to every element of the `num_array`.

Reference:  
[1] [https://www.sitepoint.com/functional-programming-techniques-with-ruby-part-ii/](https://www.sitepoint.com/functional-programming-techniques-with-ruby-part-ii/) Functional Programming Techniques With Ruby: Part II - Sitepoint
